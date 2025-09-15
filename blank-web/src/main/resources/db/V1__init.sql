CREATE TABLE mst_code
(
    code_dbid       varchar(64) NOT NULL,
    site_id         varchar(64) NULL,
    code_id         varchar(10) NOT NULL,
    description     varchar(50) NULL,
    key1            varchar(40) NULL,
    key2            varchar(40) NULL,
    mainten_flag    varchar(1)  NOT NULL,
    code_data1      varchar(256) NULL,
    code_data2      varchar(256) NULL,
    code_data3      varchar(256) NULL,
    code_data4      varchar(256) NULL,
    code_data5      varchar(256) NULL,
    code_data6      varchar(256) NULL,
    order_index     int4 NULL,
    code_type       varchar(10) NULL,
    update_count    int4 NULL,
    created_by      varchar(40) NULL,
    date_created    timestamp NULL,
    last_updated_by varchar(40) NULL,
    last_updated    timestamp NULL,
    remark          text NULL,
    CONSTRAINT mst_code_pk PRIMARY KEY (code_dbid)
);


CREATE TABLE mst_job_info
(
    job_id          varchar(64) NOT NULL DEFAULT ' '::character varying,
    site_id         varchar(64) NULL,
    job_code        varchar(20) NOT NULL DEFAULT ' '::character varying,
    job_name        varchar(60) NOT NULL DEFAULT ' '::character varying,
    job_type        varchar(64) NULL,
    effective_date  timestamp NULL,
    expired_date    timestamp NULL,
    description     varchar(200) NULL,
    update_count    int4 NULL,
    created_by      varchar(40) NULL,
    date_created    timestamp NULL,
    last_updated_by varchar(40) NULL,
    last_updated    timestamp NULL,
    remark          text NULL,
    CONSTRAINT mst_job_info_pk PRIMARY KEY (job_id),
    CONSTRAINT mst_job_info_uk_job_code UNIQUE (site_id, job_code)
);


CREATE TABLE mst_org_relation
(
    relation_id      varchar(64) NOT NULL DEFAULT ' '::character varying,
    site_id          varchar(64) NULL,
    relation_type_id varchar(64) NOT NULL DEFAULT ' '::character varying,
    effective_date   timestamp NULL,
    expired_date     timestamp NULL,
    "comment"        text NULL,
    from_org_id      varchar(64) NULL,
    to_org_id        varchar(64) NULL,
    update_count     int4 NULL,
    created_by       varchar(40) NULL,
    date_created     timestamp NULL,
    last_updated_by  varchar(40) NULL,
    last_updated     timestamp NULL,
    CONSTRAINT mst_org_relation_pk PRIMARY KEY (relation_id)
);


CREATE TABLE mst_org_struction_detail
(
    detail_id       varchar(64) NOT NULL DEFAULT ' '::character varying,
    site_id         varchar(64) NULL,
    header_id       varchar(64) NOT NULL DEFAULT ' '::character varying,
    org_id          varchar(64) NOT NULL DEFAULT ' '::character varying,
    parent_org_id   varchar(64) NOT NULL DEFAULT ' '::character varying,
    node_map        json NULL,
    update_count    int4 NULL,
    created_by      varchar(40) NULL,
    date_created    timestamp NULL,
    last_updated_by varchar(40) NULL,
    last_updated    timestamp NULL,
    CONSTRAINT mst_org_struction_detail_pk PRIMARY KEY (detail_id)
);


CREATE TABLE mst_org_struction_header
(
    header_id       varchar(64) NOT NULL DEFAULT ' '::character varying,
    site_id         varchar(64) NULL,
    "role"          varchar(64) NULL,
    effective_date  timestamp NULL,
    expired_date    timestamp NULL,
    description     varchar(60) NULL,
    update_count    int4 NULL,
    created_by      varchar(40) NULL,
    date_created    timestamp NULL,
    last_updated_by varchar(40) NULL,
    last_updated    timestamp NULL,
    remark          text NULL,
    CONSTRAINT mst_org_struction_header_pk PRIMARY KEY (header_id)
);



CREATE TABLE mst_organization_info
(
    org_id          varchar(64) NOT NULL DEFAULT ' '::character varying,
    site_id         varchar(64) NULL,
    org_code        varchar(20) NOT NULL DEFAULT ' '::character varying,
    org_name        varchar(60) NOT NULL DEFAULT ' '::character varying,
    seq             int4 NULL,
    org_type        varchar(64) NOT NULL,
    org_level       varchar(64) NULL,
    abbr            varchar(30) NULL,
    effective_date  timestamp NULL,
    expired_date    timestamp NULL,
    extend_list     json NULL,
    description     varchar(200) NULL,
    update_count    int4 NULL,
    created_by      varchar(40) NULL,
    date_created    timestamp NULL,
    last_updated_by varchar(40) NULL,
    last_updated    timestamp NULL,
    remark          text NULL,
    org_alias       varchar(100) NULL,
    CONSTRAINT mst_organization_info_pk PRIMARY KEY (org_id),
    CONSTRAINT mst_organization_info_uk_org_code UNIQUE (site_id, org_code)
);



CREATE TABLE mst_organization_role
(
    id              varchar(64) NOT NULL DEFAULT ' '::character varying,
    site_id         varchar(64) NULL,
    org_id          varchar(64) NOT NULL DEFAULT ' '::character varying,
    "role"          varchar(64) NOT NULL DEFAULT ' '::character varying,
    effective_date  timestamp NULL,
    expired_date    timestamp NULL,
    update_count    int4 NULL,
    created_by      varchar(40) NULL,
    date_created    timestamp NULL,
    last_updated_by varchar(40) NULL,
    last_updated    timestamp NULL,
    CONSTRAINT mst_organization_role_pk PRIMARY KEY (id)
);



CREATE TABLE mst_person_info
(
    person_id       varchar(64) NOT NULL DEFAULT ' '::character varying,
    site_id         varchar(64) NULL,
    person_code     varchar(40) NOT NULL DEFAULT ' '::character varying,
    person_name     varchar(60) NULL,
    first_name      varchar(60) NULL,
    last_name       varchar(60) NULL,
    effective_date  timestamp NULL,
    expired_date    timestamp NULL,
    "type"          varchar(64) NULL,
    gender          varchar(64) NULL,
    photo           jsonb NULL,
    mail            varchar(100) NULL,
    phone           varchar(40) NULL,
    electronic_sign varchar(64) NULL,
    extend_list     json NULL,
    update_count    int4 NULL,
    created_by      varchar(40) NULL,
    date_created    timestamp NULL,
    last_updated_by varchar(40) NULL,
    last_updated    timestamp NULL,
    remark          text NULL,
    person_alias    varchar(100) NULL,
    CONSTRAINT mst_person_info_pk PRIMARY KEY (person_id),
    CONSTRAINT mst_person_info_uk_job_code UNIQUE (site_id, person_code)
);



CREATE TABLE mst_person_org_relation
(
    relation_id      varchar(64) NOT NULL DEFAULT ' '::character varying,
    site_id          varchar(64) NULL,
    relation_type_id varchar(64) NOT NULL DEFAULT ' '::character varying,
    org_id           varchar(64) NOT NULL DEFAULT ' '::character varying,
    person_id        varchar(64) NOT NULL DEFAULT ' '::character varying,
    effective_date   timestamp NULL,
    expired_date     timestamp NULL,
    update_count     int4 NULL,
    created_by       varchar(40) NULL,
    date_created     timestamp NULL,
    last_updated_by  varchar(40) NULL,
    last_updated     timestamp NULL,
    CONSTRAINT mst_person_org_relation_pk PRIMARY KEY (relation_id)
);



CREATE TABLE mst_person_relation
(
    relation_id     varchar(64) NOT NULL DEFAULT ' '::character varying,
    site_id         varchar(64) NULL,
    person_id       varchar(64) NOT NULL DEFAULT ' '::character varying,
    org_list        json NULL,
    update_count    int4 NULL,
    created_by      varchar(40) NULL,
    date_created    timestamp NULL,
    last_updated_by varchar(40) NULL,
    last_updated    timestamp NULL,
    CONSTRAINT mst_person_relation_pk PRIMARY KEY (relation_id),
    CONSTRAINT mst_person_relation_uk_user_id UNIQUE (site_id, person_id)
);



CREATE TABLE sys_auth_level
(
    biz_type         varchar(40)  NOT NULL DEFAULT ''::character varying,
    auth_level_id    varchar(40)  NOT NULL DEFAULT ''::character varying,
    auth_level_desc  varchar(100) NOT NULL DEFAULT ''::character varying,
    seq              int4         NOT NULL DEFAULT 0,
    child_auth_level json NULL,
    CONSTRAINT sys_auth_level_pk PRIMARY KEY (biz_type, auth_level_id)
);



CREATE TABLE sys_biz_authority
(
    sys_biz_authority_id varchar(40)  NOT NULL DEFAULT ''::character varying,
    biz_id               varchar(400) NOT NULL DEFAULT ''::character varying,
    biz_type_id          varchar(40)  NOT NULL DEFAULT ''::character varying,
    auth_level           varchar(40)  NOT NULL DEFAULT ''::character varying,
    whitelist_flag       int4         NOT NULL DEFAULT 1,
    org_id_list          jsonb NULL,
    role_id_list         jsonb NULL,
    user_id_list         jsonb NULL,
    whole_id_list        jsonb NULL,
    update_count         int4 NULL DEFAULT 0,
    created_by           varchar(40) NULL,
    date_created         timestamptz NULL,
    last_updated_by      varchar(40) NULL,
    last_updated         timestamptz NULL,
    CONSTRAINT sys_biz_authority_pk PRIMARY KEY (sys_biz_authority_id)
);
CREATE UNIQUE INDEX sys_biz_authority_i1 ON sys_biz_authority USING btree (biz_id, biz_type_id, auth_level);


CREATE TABLE sys_menu
(
    menu_id         varchar(64) NOT NULL DEFAULT ' '::character varying,
    site_id         varchar(64) NULL,
    menu_code       varchar(40) NOT NULL DEFAULT ' '::character varying,
    menu_name       varchar(50) NOT NULL DEFAULT ' '::character varying,
    parent_menu_id  varchar(64) NULL,
    url_type        varchar(64) NOT NULL DEFAULT ' '::character varying,
    route_url       varchar(2000) NULL,
    menu_seq        int4 NULL,
    effective_date  timestamp   NOT NULL,
    expired_date    timestamp   NOT NULL,
    link_url        varchar(1000) NULL,
    visitable_flag  varchar(1) NULL,
    window_target   varchar(64) NULL,
    menu_pic        varchar(64) NULL,
    extend_list     json NULL,
    update_count    int4 NULL,
    created_by      varchar(40) NULL,
    date_created    timestamp NULL,
    last_updated_by varchar(40) NULL,
    last_updated    timestamp NULL,
    menu_label      varchar(500) NULL,
    remark          text NULL,
    CONSTRAINT sys_menu_pk PRIMARY KEY (menu_id),
    CONSTRAINT sys_menu_uk_menu_code UNIQUE (site_id, menu_code)
);



CREATE TABLE sys_menu_authority
(
    menu_authority_id varchar(64) NOT NULL DEFAULT ' '::character varying,
    site_id           varchar(64) NULL,
    menu_id           varchar(64) NOT NULL DEFAULT ' '::character varying,
    authority_list    json NULL,
    btn_control_flg   varchar(1)  NOT NULL DEFAULT '0'::character varying,
    btn_control_list  json NULL,
    last_updated_by   varchar(40) NULL DEFAULT ' '::character varying,
    last_updated      timestamp NULL,
    created_by        varchar(40) NULL DEFAULT ' '::character varying,
    date_created      timestamp NULL,
    update_count      int4        NOT NULL DEFAULT 0,
    CONSTRAINT sys_menu_authority_pk PRIMARY KEY (menu_authority_id),
    CONSTRAINT sys_menu_authority_uk_menu_id UNIQUE (site_id, menu_id)
);



CREATE TABLE sys_parameter
(
    id              varchar(64) NOT NULL DEFAULT ' '::character varying,
    site_id         varchar(64) NULL,
    "key"           varchar(40) NULL,
    parameter_group varchar(500) NULL,
    extend_list     json NULL,
    update_count    int4 NULL,
    created_by      varchar(40) NULL,
    date_created    timestamp NULL,
    last_updated_by varchar(40) NULL,
    last_updated    timestamp NULL,
    remark          text NULL,
    CONSTRAINT sys_parameter_pk PRIMARY KEY (id)
);



CREATE TABLE sys_role_info
(
    role_id         varchar(64) NOT NULL DEFAULT ' '::character varying,
    site_id         varchar(64) NULL,
    role_code       varchar(20) NOT NULL DEFAULT ' '::character varying,
    role_name       varchar(60) NOT NULL DEFAULT ' '::character varying,
    parent_role_id  varchar(64) NULL,
    "type"          varchar(64) NULL,
    remark          text NULL,
    effective_date  timestamp NULL,
    expired_date    timestamp NULL,
    extend_list     json NULL,
    update_count    int4 NULL,
    created_by      varchar(40) NULL,
    date_created    timestamp NULL,
    last_updated_by varchar(40) NULL,
    last_updated    timestamp NULL,
    CONSTRAINT sys_role_info_pk PRIMARY KEY (role_id),
    CONSTRAINT sys_role_info_uk_role_code UNIQUE (site_id, role_code)
);


CREATE TABLE sys_rule_info
(
    sys_rule_id      varchar(64) NOT NULL DEFAULT ' '::character varying,
    site_id          varchar(64) NULL,
    rule_description varchar(80) NULL,
    rule_type        varchar(64) NOT NULL DEFAULT ' '::character varying,
    rule_target      json NULL,
    allow_type       varchar(64) NOT NULL DEFAULT ' '::character varying,
    active_flag      varchar(1)  NOT NULL DEFAULT '0'::character varying,
    rules_list       json NULL,
    update_count     int4 NULL,
    created_by       varchar(40) NULL,
    date_created     timestamp NULL,
    last_updated_by  varchar(40) NULL,
    last_updated     timestamp NULL,
    CONSTRAINT sys_rule_info_pk PRIMARY KEY (sys_rule_id)
);


CREATE TABLE sys_user
(
    user_id         varchar(64)  NOT NULL DEFAULT ' '::character varying,
    site_id         varchar(64) NULL,
    user_code       varchar(40)  NOT NULL DEFAULT ' '::character varying,
    person_id       varchar(64)  NOT NULL DEFAULT ' '::character varying,
    nick_name       varchar(60) NULL,
    "type"          varchar(64) NULL,
    mail            varchar(100) NULL,
    phone           varchar(40) NULL,
    photo           jsonb NULL,
    effective_date  timestamp NULL,
    expired_date    timestamp NULL,
    "password"      varchar(128) NOT NULL DEFAULT ' '::character varying,
    extend_list     json NULL,
    update_count    int4 NULL,
    created_by      varchar(40) NULL,
    date_created    timestamp NULL,
    last_updated_by varchar(40) NULL,
    last_updated    timestamp NULL,
    remark          text NULL,
    user_alias      varchar(100) NULL,
    CONSTRAINT sys_user_info_pk PRIMARY KEY (user_id),
    CONSTRAINT sys_user_info_uk_user_code UNIQUE (site_id, user_code)
);


CREATE TABLE sys_user_authority
(
    authority_id    varchar(64) NOT NULL DEFAULT ' '::character varying,
    site_id         varchar(64) NULL,
    user_id         varchar(64) NOT NULL DEFAULT ' '::character varying,
    role_list       json NULL,
    update_count    int4 NULL,
    created_by      varchar(40) NULL,
    date_created    timestamp NULL,
    last_updated_by varchar(40) NULL,
    last_updated    timestamp NULL,
    CONSTRAINT sys_user_authority_pk PRIMARY KEY (authority_id),
    CONSTRAINT sys_user_authority_uk_user_id UNIQUE (site_id, user_id)
);


CREATE TABLE sys_user_login_failure_history
(
    user_identity    varchar(255) NOT NULL,
    remote_ip        varchar(255) NOT NULL,
    failure_count    int4 NULL,
    last_update_time timestamp NULL
);
CREATE INDEX sys_user_login_failure_history_user_identity_idx ON sys_user_login_failure_history USING btree (user_identity, remote_ip);


CREATE TABLE sys_user_menu
(
    user_menu_id    varchar(64) NOT NULL DEFAULT ' '::character varying,
    site_id         varchar(64) NULL,
    user_id         varchar(64) NOT NULL DEFAULT ' '::character varying,
    menu_id         varchar(64) NOT NULL DEFAULT ' '::character varying,
    menu_seq        int4 NULL,
    update_count    int4 NULL,
    created_by      varchar(40) NULL,
    date_created    timestamp NULL,
    last_updated_by varchar(40) NULL,
    last_updated    timestamp NULL,
    CONSTRAINT sys_user_menu_pk PRIMARY KEY (user_menu_id),
    CONSTRAINT sys_user_menu_uk_user_id_menu_id UNIQUE (site_id, user_id, menu_id)
);



CREATE TABLE sys_user_psw_history
(
    psw_history_id   varchar(255) NOT NULL,
    user_id          varchar(255) NULL,
    history_password varchar(255) NULL,
    created_date     timestamp NULL,
    psw_order        int4 NULL,
    CONSTRAINT sys_user_psw_history_pk PRIMARY KEY (psw_history_id)
);



CREATE
EXTENSION IF NOT EXISTS "uuid-ossp";

DROP VIEW IF EXISTS sys_biz_auth_setting;
CREATE VIEW sys_biz_auth_setting AS
SELECT *
FROM sys_biz_authority
WHERE biz_id = ''
;


CREATE
OR REPLACE FUNCTION json_extract_array(val json, findkey VARCHAR)
 RETURNS JSON
 LANGUAGE sql
AS $function$
SELECT array_to_json(array_agg(t->findkey))
FROM json_array_elements(val) t
    $function$
;

CREATE
OR REPLACE FUNCTION json_extract_text(val json, findkey VARCHAR)
 RETURNS TEXT
 LANGUAGE sql
AS $function$
SELECT val ->>findkey $function$
;

CREATE
OR REPLACE FUNCTION json_find_text(val1 json, val2 text)
 RETURNS BOOLEAN
 LANGUAGE SQL AS $FUNCTION$
SELECT val1::JSONB @> jsonb_build_array(val2);
$FUNCTION$
;

CREATE
OR REPLACE FUNCTION jsonb_find_text(val1 jsonb, val2 text)
 RETURNS BOOLEAN
 LANGUAGE SQL AS $FUNCTION$
SELECT val1 @> jsonb_build_array(val2);
$FUNCTION$
;

CREATE
OR REPLACE FUNCTION jsonb_find_json(val1 jsonb, val2 json)
 RETURNS BOOLEAN
 LANGUAGE SQL AS $FUNCTION$
SELECT val1 ?| translate(val2::text,'[]','{}')::text[];
$FUNCTION$
;

CREATE
OR REPLACE FUNCTION jsonb_find_jsonb(val1 JSONB, val2 JSONB)
 RETURNS BOOLEAN
 LANGUAGE SQL AS $FUNCTION$
SELECT val1 ?| translate(val2::text,'[]','{}')::text[];
$FUNCTION$
;

CREATE
OR REPLACE FUNCTION get_org_list_by_user(p_user_id VARCHAR(40))
 RETURNS JSON
 LANGUAGE sql
AS $function$
SELECT json_extract_array(r.org_list, 'orgId') AS orgList
FROM sys_user u
         JOIN mst_person_info p
              ON p.person_id = u.person_id
         JOIN mst_person_relation r
              ON r.person_id = p.person_id
WHERE u.user_id = p_user_id
;
$function$
;

CREATE
OR REPLACE FUNCTION get_parent_org_list_by_user(p_user_id VARCHAR(40))
 RETURNS JSON
 LANGUAGE sql
AS $FUNCTION$

WITH RECURSIVE r AS (
	SELECT d.org_id, d.parent_org_id
	FROM mst_org_struction_detail d
	JOIN mst_org_struction_header h
	ON h.header_id = d.header_id
	AND h.effective_date <= CURRENT_DATE
	AND h.expired_date >= CURRENT_DATE
	AND get_org_list_by_user(p_user_id)::JSONB @> jsonb_build_array(org_id)
	UNION
	SELECT d.org_id, d.parent_org_id
	FROM r
	JOIN mst_org_struction_detail d
	ON d.org_id = r.parent_org_id
)
SELECT COALESCE(ARRAY_TO_JSON(ARRAY_AGG(org_id)), '[]'::JSON)
FROM r
;
$FUNCTION$;

CREATE
OR REPLACE FUNCTION get_role_list_by_user(p_user_id VARCHAR(40))
 RETURNS JSON
 LANGUAGE sql
AS $function$
SELECT COALESCE(json_extract_array(role_list, 'roleId'), '[]'::JSON) AS orgList
FROM sys_user_authority
WHERE user_id = p_user_id;
$function$
;

CREATE
OR REPLACE FUNCTION get_parent_role_list_by_user(p_user_id VARCHAR(40))
 RETURNS JSON
 LANGUAGE sql
AS $function$

WITH RECURSIVE r AS (
SELECT d.role_id, d.parent_role_id
FROM sys_role_info d
WHERE get_role_list_by_user(p_user_id)::JSONB @> jsonb_build_array(role_id)
UNION all
SELECT d.role_id, d.parent_role_id
FROM r
JOIN sys_role_info d
ON d.role_id = r.parent_role_id
)
SELECT COALESCE(ARRAY_TO_JSON(ARRAY_AGG(role_id)), '[]'::JSON)
FROM r
;
$function$
;

CREATE
OR REPLACE FUNCTION get_whole_id_list_by_user(p_user_id VARCHAR(40))
 RETURNS JSONB
 LANGUAGE sql
AS $function$
SELECT get_parent_org_list_by_user(p_user_id) ::JSONB ||
		get_parent_role_list_by_user(p_user_id)::JSONB ||
		jsonb_build_array(p_user_id);
;
$function$
;

CREATE
OR REPLACE FUNCTION auth_check(
	p_biz_type_id character varying,
	p_biz_id character varying,
	p_auth_level character varying,
	p_whole_id_list text)
 RETURNS integer
 LANGUAGE sql
AS $function$
SELECT auth
FROM (SELECT auth
      FROM (SELECT CASE
                       WHEN jsonb_array_length(p_whole_id_list::JSONB) = 0 THEN 1 -- Super administrator
                       WHEN whitelist_flag = 0 THEN 1 -- Disable permission control
                       ELSE (CASE WHEN jsonb_find_json(whole_id_list, p_whole_id_list::json) THEN 1 ELSE -1 END) *
                            whitelist_flag
                       END AS auth
            FROM sys_biz_authority
            WHERE biz_type_id = p_biz_type_id
              AND ((biz_id = p_biz_id AND auth_level = p_auth_level)
                OR (biz_id = p_biz_id AND auth_level = '')
                OR (biz_id = '' AND auth_level = '')
                OR (biz_id = '' AND p_biz_id <> '') --No permission group configured, read default settings
                )
            ORDER BY biz_id DESC, auth_level DESC) t
      ORDER BY auth DESC) a
UNION ALL
SELECT 1 AS auth
    LIMIT 1
;
$function$
;

CREATE
OR REPLACE FUNCTION auth_check(
	p_biz_type_id character varying,
	p_biz_id jsonb,
	p_auth_level character varying,
	p_whole_id_list text)
 RETURNS integer
 LANGUAGE sql
AS $function$
SELECT auth
FROM (SELECT auth
      FROM (SELECT CASE
                       WHEN jsonb_array_length(p_whole_id_list::JSONB) = 0 THEN 1 -- Super administrator
                       WHEN whitelist_flag = 0 THEN 1 -- Disable permission control
                       ELSE (CASE WHEN jsonb_find_json(whole_id_list, p_whole_id_list::json) THEN 1 ELSE -1 END) *
                            whitelist_flag
                       END AS auth
            FROM sys_biz_authority
            WHERE biz_type_id = p_biz_type_id
              AND ((biz_id in (select jsonb_array_elements_text(p_biz_id)) AND auth_level = p_auth_level)
                OR (biz_id in (select jsonb_array_elements_text(p_biz_id)) AND auth_level = '')
                OR (biz_id = '' AND auth_level = '')
                OR (biz_id = '' AND jsonb_array_length(p_biz_id) = 0 OR p_biz_id IS NULL) --No permission group configured, read default settings
                )
            ORDER BY biz_id DESC, auth_level DESC) t
      ORDER BY auth DESC) a
UNION ALL
SELECT 1 AS auth
    LIMIT 1
;
$function$
;

CREATE
OR REPLACE FUNCTION json_find_text(val1 text, val2 text)
 RETURNS BOOLEAN
 LANGUAGE SQL AS $FUNCTION$
SELECT val1::jsonb @> jsonb_build_array(val2);
$FUNCTION$
;

CREATE
OR REPLACE FUNCTION json_find_text(val1 jsonb, val2 text)
 RETURNS BOOLEAN
 LANGUAGE SQL AS $FUNCTION$
SELECT val1 @> jsonb_build_array(val2);
$FUNCTION$
;

CREATE
OR REPLACE FUNCTION json_find_json(val1 text, val2 text)
 RETURNS BOOLEAN
 LANGUAGE SQL AS $FUNCTION$
SELECT val1::jsonb ?| translate(val2,'[]','{}')::text[];
$FUNCTION$
;

CREATE
OR REPLACE FUNCTION json_find_json(val1 json, val2 json)
 RETURNS BOOLEAN
 LANGUAGE SQL AS $FUNCTION$
SELECT val1::jsonb ?| translate(val2::text,'[]','{}')::text[];
$FUNCTION$
;

CREATE
OR REPLACE FUNCTION json_find_json(val1 json, val2 jsonb)
 RETURNS BOOLEAN
 LANGUAGE SQL AS $FUNCTION$
SELECT val1::jsonb ?| translate(val2::text,'[]','{}')::text[];
$FUNCTION$
;

CREATE
OR REPLACE FUNCTION json_find_json(val1 jsonb, val2 json)
 RETURNS BOOLEAN
 LANGUAGE SQL AS $FUNCTION$
SELECT val1 ?| translate(val2::text,'[]','{}')::text[];
$FUNCTION$
;

CREATE
OR REPLACE FUNCTION json_find_json(val1 jsonb, val2 jsonb)
 RETURNS BOOLEAN
 LANGUAGE SQL AS $FUNCTION$
SELECT val1 ?| translate(val2::text,'[]','{}')::text[];
$FUNCTION$
;

CREATE TABLE sys_i18n_catalog
(
    id              varchar(64) NOT NULL,
    code            varchar(100) NULL,
    name            varchar(200) NULL,
    remark          text NULL,
    update_count    int4 NULL,
    created_by      varchar(50) NULL,
    date_created    timestamp NULL,
    last_updated_by varchar(50) NULL,
    last_updated    timestamp NULL,
    CONSTRAINT i18n_catalog_pk PRIMARY KEY (id),
    CONSTRAINT i18n_catalog_uk_code UNIQUE (code)
);

CREATE TABLE sys_i18n_language
(
    id              varchar(64) NOT NULL,
    project_id      varchar(64) NULL,
    "type"          varchar(20) NULL,
    language_name   varchar(100) NULL,
    language_code   varchar(200) NULL,
    order_index     int4 NULL,
    remark          text NULL,
    active_flag     bool NULL,
    extends         jsonb NULL,
    update_count    int4 NULL,
    created_by      varchar(50) NULL,
    date_created    timestamp NULL,
    last_updated_by varchar(50) NULL,
    last_updated    timestamp NULL,
    CONSTRAINT language_pk PRIMARY KEY (id),
    CONSTRAINT language_uk_project_id_language_code UNIQUE (project_id, language_code)
);

CREATE TABLE sys_i18n_resource
(
    id              varchar(64)  NOT NULL,
    project_id      varchar(64) NULL,
    "catalog"       varchar(50)  NOT NULL DEFAULT ''::character varying,
    "key"           varchar(120) NOT NULL,
    "type"          varchar(20) NULL,
    message         jsonb NULL,
    is_runtime      bool NULL,
    extends         jsonb NULL,
    update_count    int4 NULL,
    created_by      varchar(50) NULL,
    date_created    timestamp NULL,
    last_updated_by varchar(50) NULL,
    last_updated    timestamp NULL,
    CONSTRAINT i18n_resource_pk PRIMARY KEY (id),
    CONSTRAINT i18n_resource_uk_project_id_catalog_key UNIQUE (project_id, "catalog", "key")
);

CREATE TABLE sys_file_resource_group
(
    id              varchar(64)  NOT NULL,
    project_id      varchar(64) NULL,
    "type"          varchar(20)  NOT NULL,
    group_no        varchar(64)  NOT NULL,
    group_name      varchar(100) NOT NULL,
    parent_id       varchar(64) NULL,
    order_index     int4 NULL,
    active_flag     bool NULL,
    remark          text NULL,
    extends         jsonb NULL,
    update_count    int4 NULL,
    created_by      varchar(50) NULL,
    date_created    timestamp NULL,
    last_updated_by varchar(50) NULL,
    last_updated    timestamp NULL,
    CONSTRAINT sys_file_resource_group_id PRIMARY KEY (id)
);

CREATE
OR REPLACE FUNCTION auth_filegroup()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
DELETE
FROM sys_biz_authority
WHERE biz_id = old.id;
RETURN NEW;
END;
$function$
;


create trigger file_resource_group_auth_trigger
    after
        delete
    on
        sys_file_resource_group
    for each row execute function auth_filegroup();


CREATE TABLE sys_file_resource
(
    id              varchar(64)   NOT NULL,
    project_id      varchar(64) NULL,
    group_id        varchar(64)   NOT NULL,
    "name"          varchar(100)  NOT NULL,
    file_name       varchar(100)  NOT NULL,
    "type"          varchar(20)   NOT NULL,
    "path"          varchar(2000) NOT NULL,
    active_flag     bool NULL,
    remark          text NULL,
    extends         jsonb NULL,
    tags            varchar(100) NULL,
    "permission"    varchar(500) NULL,
    update_count    int4 NULL,
    created_by      varchar(50) NULL,
    date_created    timestamp NULL,
    last_updated_by varchar(50) NULL,
    last_updated    timestamp NULL,
    doc_type        varchar NULL,
    doc_version     varchar NULL,
    CONSTRAINT sys_file_resource_id PRIMARY KEY (id),
    CONSTRAINT fk9l90qfykcvwluglm8u917cv8v FOREIGN KEY (group_id) REFERENCES sys_file_resource_group (id)
);


CREATE TABLE sys_file_resource_history
(
    id               varchar(64)   NOT NULL,
    project_id       varchar(64) NULL,
    group_id         varchar(64)   NOT NULL,
    "name"           varchar(100)  NOT NULL,
    file_name        varchar(100)  NOT NULL,
    "path"           varchar(2000) NOT NULL,
    "version"        varchar(50)   NOT NULL,
    active_flag      bool NULL,
    remark           text NULL,
    extends          jsonb NULL,
    tags             varchar(100) NULL,
    "permission"     varchar(500) NULL,
    update_count     int4 NULL,
    created_by       varchar(50) NULL,
    date_created     timestamp NULL,
    last_updated_by  varchar(50) NULL,
    last_updated     timestamp NULL,
    file_resource_id varchar(64)   NOT NULL,
    CONSTRAINT sys_file_resource_history_id PRIMARY KEY (id),
    CONSTRAINT fk929is7n5sw5fi0j4l1hd1fn8h FOREIGN KEY (group_id) REFERENCES sys_file_resource_group (id)
);


CREATE TABLE sys_login_log
(
    log_login_id int8 NOT NULL,
    operation    varchar(200) NULL,
    site_id      varchar(50) NULL,
    user_agent   varchar(500) NULL,
    ip           varchar(32) NULL,
    status       int4 NULL,
    operate_user varchar(50) NULL,
    operate_date timestamp NULL,
    CONSTRAINT sys_login_log_pk PRIMARY KEY (log_login_id)
);
CREATE INDEX idx_login_operate_date ON sys_login_log USING btree (operate_date);


CREATE TABLE sys_operation_log
(
    log_operation_id int8 NOT NULL,
    operation        varchar(200) NULL,
    site_id          varchar(50) NULL,
    request_uri      varchar(200) NULL,
    request_method   varchar(20) NULL,
    request_params   varchar(2000) NULL,
    request_time     int4 NULL,
    user_agent       varchar(500) NULL,
    ip               varchar(32) NULL,
    error_msg        varchar(2000) NULL,
    "result"         varchar(2000) NULL,
    status           int4 NULL,
    operate_user     varchar(50) NULL,
    operate_date     timestamp NULL,
    CONSTRAINT sys_operation_log_pk PRIMARY KEY (log_operation_id)
);
CREATE INDEX idx_operation_operate_date ON sys_operation_log USING btree (operate_date);



INSERT INTO mst_code (code_dbid, site_id, code_id, description, key1, key2, mainten_flag, code_data1, code_data2,  
                      code_data3, code_data4, code_data5, code_data6, order_index, code_type, update_count, created_by,  
                      date_created, last_updated_by, last_updated, remark)  
VALUES ('TOP1', '0000', 'C000', 'TOP', 'C020', NULL, '1', 'Activation Status', NULL, NULL, NULL, NULL, NULL, NULL, 'GROUP', 0,  
        NULL, NULL, NULL, NULL, NULL)  
     , ('TOP2', '0000', 'C000', 'TOP', 'C027', NULL, '1', 'Organization Level', NULL, NULL, NULL, NULL, NULL, NULL, 'GROUP', 0,  
        NULL, NULL, NULL, NULL, NULL)  
     , ('TOP3', '0000', 'C000', 'TOP', 'C029', NULL, '1', 'Organization Category', NULL, NULL, NULL, NULL, NULL, NULL, 'GROUP', 0,  
        NULL, NULL, NULL, NULL, NULL)  
     , ('TOP4', '0000', 'C000', 'TOP', 'C030', NULL, '1', 'Organization Type', NULL, NULL, NULL, NULL, NULL, NULL, 'GROUP', 0,  
        NULL, NULL, NULL, NULL, NULL)  
     , ('TOP5', '0000', 'C000', 'TOP', 'C043', NULL, '1', 'Organization Relationship Type', NULL, NULL, NULL, NULL, NULL, NULL, 'GROUP',  
        0, NULL, NULL, NULL, NULL, NULL)  
     , ('TOP6', '0000', 'C000', 'TOP', 'C032', NULL, '1', 'Job Type', NULL, NULL, NULL, NULL, NULL, NULL, 'GROUP', 0,  
        NULL, NULL, NULL, NULL, NULL)  
     , ('TOP9', '0000', 'C000', 'TOP', 'C035', NULL, '0', 'Reset User Password', NULL, NULL, NULL, NULL, NULL, NULL, 'GROUP',  
        0, NULL, NULL, NULL, NULL, NULL)  
     , ('TOP10', '0000', 'C000', 'TOP', 'C046', NULL, '1', 'Valid Status', NULL, NULL, NULL, NULL, NULL, NULL, 'GROUP', 0,  
        NULL, NULL, NULL, NULL, NULL)  
     , ('TOP11', '0000', 'C000', 'TOP', 'C050', NULL, '1', 'Gender', NULL, NULL, NULL, NULL, NULL, NULL, 'GROUP', 0, NULL,  
        NULL, NULL, NULL, NULL)  
     , ('C035USERPASSWORD', '0000', 'C035', 'Reset User Password', ' ', NULL, '0', '1234', NULL, NULL, NULL, NULL, NULL, NULL,  
        'DATA', 0, NULL, NULL, NULL, NULL, NULL)  
     , ('CO32JOB1', '0000', 'C032', 'Job Type', '01', NULL, '0', 'Administrative Job', NULL, NULL, NULL, NULL, NULL, NULL, 'DATA',  
        0, NULL, NULL, NULL, NULL, NULL)  
     , ('CO32JOB2', '0000', 'C032', 'Job Type', '02', NULL, '0', 'Management Job', NULL, NULL, NULL, NULL, NULL, NULL, 'DATA',  
        0, NULL, NULL, NULL, NULL, NULL)  
     , ('CO32JOB3', '0000', 'C032', 'Job Type', '03', NULL, '0', 'Technical Job', NULL, NULL, NULL, NULL, NULL, NULL, 'DATA',  
        0, NULL, NULL, NULL, NULL, NULL)  
     , ('C030ORGSTRUCT', '0000', 'C030', 'Organization Type', '01', NULL, '0', 'Organization Structure', NULL, NULL, NULL, NULL,  
        NULL, NULL, 'DATA', 0, NULL, NULL, NULL, NULL, NULL)  
     , ('C030ORGSUP', '0000', 'C030', 'Organization Type', '03', NULL, '0', 'Supplier', NULL, NULL, NULL, NULL, NULL, NULL,  
        'DATA', 0, NULL, NULL, NULL, NULL, NULL)  
     , ('C030ORGDL', '0000', 'C030', 'Organization Type', '04', NULL, '0', 'Dealer', NULL, NULL, NULL, NULL, NULL, NULL, 'DATA',  
        0, NULL, NULL, NULL, NULL, NULL)  
     , ('CO43ORGCOST', '0000', 'C043', 'Organization Relationship Type', '01', NULL, '0', 'Cost Org', NULL, NULL, NULL, NULL,  
        NULL, NULL, 'DATA', 0, NULL, NULL, NULL, NULL, NULL)  
     , ('C043ORGSALES', '0000', 'C043', 'Organization Relationship Type', '02', NULL, '0', 'Sales Org', NULL, NULL, NULL, NULL,  
        NULL, NULL, 'DATA', 0, NULL, NULL, NULL, NULL, NULL)  
     , ('C020ACTIVE', '0000', 'C020', 'Active Status', '01', NULL, '0', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 'DATA',  
        0, NULL, NULL, NULL, NULL, NULL)  
     , ('C020NONACTIVE', '0000', 'C020', 'Active Status', '01', NULL, '0', 'Non-Active', NULL, NULL, NULL, NULL, NULL, NULL,  
        'DATA', 0, NULL, NULL, NULL, NULL, NULL) -- Note: key1 should probably be different for 'Non-Active'  
     , ('C050FEMALE', '0000', 'C050', 'Gender', '02', NULL, '0', 'Female', 'Female', NULL, NULL, NULL, NULL, NULL, 'DATA',  
        0, NULL, NULL, NULL, NULL, NULL)  
     , ('C050MALE', '0000', 'C050', 'Gender', '01', NULL, '0', 'Male', 'Male', NULL, NULL, NULL, NULL, NULL, 'DATA', 0,  
        NULL, NULL, NULL, NULL, NULL)  
     , ('C046UNVALID', '0000', 'C046', 'Valid Status', '02', NULL, '0', 'Un-Valid', NULL, NULL, NULL, NULL, NULL, NULL,  
        'DATA', 0, NULL, NULL, NULL, '2017-08-22 00:00:00.000', NULL)  
     , ('C046VALID', '0000', 'C046', 'Valid Status', '01', NULL, '0', 'Valid', NULL, NULL, NULL, NULL, NULL, NULL,  
        'DATA', 0, NULL, NULL, NULL, '2017-08-22 00:00:00.000', NULL)  
     , ('C029ORGTYPE2', '0000', 'C029', 'Organization Category', '02', NULL, '0', 'Business Partner', NULL, NULL, NULL, NULL,  
        NULL, NULL, 'DATA', 0, NULL, NULL, NULL, NULL, NULL)  
     , ('C029ORGTYPE1', '0000', 'C029', 'Organization Category', '01', NULL, '0', 'Department Structure', NULL, NULL, NULL, NULL,  
        NULL, NULL, 'DATA', 0, NULL, NULL, NULL, NULL, NULL)  
     , ('C027ORGLEVEL1', '0000', 'C027', 'Organization Level', '01', NULL, '0', 'Company', NULL, NULL, NULL, NULL, NULL, NULL,  
        'DATA', 0, NULL, NULL, NULL, NULL, NULL)  
     , ('C027ORGLEVEL2', '0000', 'C027', 'Organization Level', '02', NULL, '0', 'Business Unit', NULL, NULL, NULL, NULL, NULL, NULL,  
        'DATA', 0, NULL, NULL, NULL, NULL, NULL)  
     , ('C027ORGLEVEL3', '0000', 'C027', 'Organization Level', '03', NULL, '0', 'Department', NULL, NULL, NULL, NULL, NULL, NULL,  
        'DATA', 0, NULL, NULL, NULL, NULL, NULL)  
     , ('C027ORGLEVEL4', '0000', 'C027', 'Organization Level', '04', NULL, '0', 'Section', NULL, NULL, NULL, NULL, NULL, NULL,  
        'DATA', 0, NULL, NULL, NULL, NULL, NULL)  
     , ('C056JOBCATEGORY1', '0000', 'C056', 'Job Category', '01', NULL, '0', 'Primary Job', NULL, NULL, NULL, NULL, NULL, NULL,  
        'DATA', 0, NULL, NULL, NULL, NULL, NULL)  
     , ('C056JOBCATEGORY2', '0000', 'C056', 'Job Category', '02', NULL, '0', 'Part-time Job', NULL, NULL, NULL, NULL, NULL, NULL,  
        'DATA', 0, NULL, NULL, NULL, NULL, NULL)  
     , ('C034OPENMETHOD1', '0000', 'C034', 'Open Type', '01', NULL, '0', 'New Window', '_blank', NULL, NULL, NULL, NULL,  
        NULL, 'DATA', 0, NULL, NULL, NULL, NULL, NULL)  
     , ('C033MENUTYPE2', '0000', 'C033', 'Menu Type', '02', '', '0', 'iframe', '', '', '', '', '', 2, '', 0, '', NULL,  
	    '', NULL, NULL)  
     , ('C033MENUTYPE1', '0000', 'C033', 'Menu Type', '01', '', '0', 'page', '', '', '', '', '', 1, '', 0, '', NULL,  
 	    '', NULL, NULL)  
     , ('C033MENUTYPE3', '0000', 'C033', 'Menu Type', '03', '', '0', 'link', '', '', '', '', '', 3, '', 0, '', NULL,  
 	    '', NULL, NULL)
;


INSERT INTO mst_job_info (job_id, site_id, job_code, job_name, job_type, effective_date, expired_date, description,
                          update_count, created_by, date_created, last_updated_by, last_updated, remark)
VALUES ('j01', '0000', 'GH', 'GH', 'CO32JOB2', NULL, NULL, 'Group Header', 0, '---', '2017-07-21 10:37:08.000', 'admin',
        '2017-08-09 14:26:35.000', NULL)
     , ('j02', '0000', 'DH', 'DH', 'CO32JOB2', NULL, NULL, 'Department Header', 3, NULL, NULL, 'admin',
        '2017-08-09 14:26:44.000', NULL)
     , ('j03', '0000', 'MB', 'MB', 'CO32JOB1', NULL, NULL, 'Member', 0, 'admin', '2017-08-09 09:22:03.000', 'admin',
        '2017-08-09 14:26:52.000', NULL)
;

INSERT INTO sys_menu
(menu_id, site_id, menu_code, menu_name, parent_menu_id, url_type, menu_seq, effective_date, expired_date, link_url, visitable_flag, window_target, menu_pic, extend_list, update_count, created_by, date_created, last_updated_by, last_updated, menu_label, remark, route_url)
VALUES('b4b1c500-01f1-40d0-87a9-45bee2ff43ac', '0000', 'loginLogList', 'LoginLog', '402809816a43aeaa016a43d113d50000', 'C033MENUTYPE1', 4001, '2024-05-17 19:02:48.768', '2099-12-31 10:30:00.000', '/log/loginLog/loginLogList', '0', '', '', NULL, 4, 'ADMIN', '2024-05-17 11:04:55.399', 'ADMIN', '2024-07-17 02:09:18.710', NULL, NULL, '/log/loginLog/loginLogList');
INSERT INTO sys_menu
(menu_id, site_id, menu_code, menu_name, parent_menu_id, url_type, menu_seq, effective_date, expired_date, link_url, visitable_flag, window_target, menu_pic, extend_list, update_count, created_by, date_created, last_updated_by, last_updated, menu_label, remark, route_url)
VALUES('1f8384a5-8345-4dad-8aea-06fcddced7fd', '0000', 'fileResource', 'FileResourceManage', '402809816a43aeaa016a43d113d50000', 'C033MENUTYPE1', 2001, '2024-05-17 15:56:15.224', '2099-12-31 10:30:00.000', '/fileresource/resourceManage/staticResource', '0', '', '', NULL, 6, 'ADMIN', '2024-05-17 07:57:32.557', 'ADMIN', '2024-07-17 02:08:59.116', NULL, NULL, '/fileresource/resourceManage/staticResource');

INSERT INTO sys_menu
(menu_id, site_id, menu_code, menu_name, parent_menu_id, url_type, menu_seq, effective_date, expired_date, link_url, visitable_flag, window_target, menu_pic, extend_list, update_count, created_by, date_created, last_updated_by, last_updated, menu_label, remark, route_url)
VALUES('402809816a43aeaa016a43d4a3480004', '0000', 'system002', 'RoleManage', '402809816a43aeaa016a43d113d50000', 'C033MENUTYPE1', 1002, '2019-04-22 00:00:00.000', '2099-12-31 00:00:00.000', '/userauth/role/roleManage', '0', '', '', NULL, 6, 'YMSLX', '2019-04-22 00:00:00.000', 'ADMIN', '2024-07-17 02:02:24.068', NULL, NULL, '/userauth/role/roleManage');
INSERT INTO sys_menu
(menu_id, site_id, menu_code, menu_name, parent_menu_id, url_type, menu_seq, effective_date, expired_date, link_url, visitable_flag, window_target, menu_pic, extend_list, update_count, created_by, date_created, last_updated_by, last_updated, menu_label, remark, route_url)
VALUES('402809816a43e347016a440778c70004', '0000', 'system005', 'PersonManage', '402809816a43aeaa016a43d113d50000', 'C033MENUTYPE1', 1003, '2019-04-22 00:00:00.000', '2099-12-31 00:00:00.000', '/userauth/person/personManage', '0', '', '', NULL, 4, 'YMSLX', '2019-04-22 00:00:00.000', 'ADMIN', '2024-07-17 02:02:28.609', NULL, NULL, '/userauth/person/personManage');
INSERT INTO sys_menu
(menu_id, site_id, menu_code, menu_name, parent_menu_id, url_type, menu_seq, effective_date, expired_date, link_url, visitable_flag, window_target, menu_pic, extend_list, update_count, created_by, date_created, last_updated_by, last_updated, menu_label, remark, route_url)
VALUES('402809816a43e347016a4406a2620002', '0000', 'system004', 'PositionManage', '402809816a43aeaa016a43d113d50000', 'C033MENUTYPE1', 1004, '2019-04-22 00:00:00.000', '2099-12-31 00:00:00.000', '/userauth/job/jobManage', '0', '', '', NULL, 4, 'YMSLX', '2019-04-22 00:00:00.000', 'ADMIN', '2024-07-17 02:02:33.476', NULL, NULL, '/userauth/job/jobManage');
INSERT INTO sys_menu
(menu_id, site_id, menu_code, menu_name, parent_menu_id, url_type, menu_seq, effective_date, expired_date, link_url, visitable_flag, window_target, menu_pic, extend_list, update_count, created_by, date_created, last_updated_by, last_updated, menu_label, remark, route_url)
VALUES('402809816a43e347016a440d44290006', '0000', 'system006', 'OrgManage', '402809816a43aeaa016a43d113d50000', 'C033MENUTYPE1', 1005, '2019-04-22 00:00:00.000', '2099-12-31 00:00:00.000', '/userauth/orgInfo/organizationManage', '0', '', '', NULL, 9, 'YMSLX', '2019-04-22 00:00:00.000', 'ADMIN', '2024-07-17 02:02:40.688', NULL, NULL, '/userauth/orgInfo/organizationManage');
INSERT INTO sys_menu
(menu_id, site_id, menu_code, menu_name, parent_menu_id, url_type, menu_seq, effective_date, expired_date, link_url, visitable_flag, window_target, menu_pic, extend_list, update_count, created_by, date_created, last_updated_by, last_updated, menu_label, remark, route_url)
VALUES('402809816a43aeaa016a43d551bd0006', '0000', 'system003', 'UserManage', '402809816a43aeaa016a43d113d50000', 'C033MENUTYPE1', 1001, '2019-04-22 00:00:00.000', '2099-12-31 00:00:00.000', '/userauth/user/userManage', '0', '', '', NULL, 5, 'YMSLX', '2019-04-22 00:00:00.000', 'ADMIN', '2024-07-17 02:02:17.334', NULL, NULL, '/userauth/user/userManage');
INSERT INTO sys_menu
(menu_id, site_id, menu_code, menu_name, parent_menu_id, url_type, menu_seq, effective_date, expired_date, link_url, visitable_flag, window_target, menu_pic, extend_list, update_count, created_by, date_created, last_updated_by, last_updated, menu_label, remark, route_url)
VALUES('402809816a48b73b016a48f1a9c50000', '0000', 'system009', 'I18nManage', '402809816a43aeaa016a43d113d50000', 'C033MENUTYPE1', 3001, '2019-04-23 00:00:00.000', '2099-12-31 00:00:00.000', '/i18n/i18nManage/i18nIndex', '0', '', '', NULL, 4, 'ADMIN', '2019-04-23 00:00:00.000', 'ADMIN', '2024-07-17 02:09:10.137', NULL, NULL, '/i18n/i18nManage/i18nIndex');
INSERT INTO sys_menu
(menu_id, site_id, menu_code, menu_name, parent_menu_id, url_type, menu_seq, effective_date, expired_date, link_url, visitable_flag, window_target, menu_pic, extend_list, update_count, created_by, date_created, last_updated_by, last_updated, menu_label, remark, route_url)
VALUES('e68829c7-c963-41c3-af89-d322b24c6c57', '0000', 'operationLogList', 'OperationLog', '402809816a43aeaa016a43d113d50000', 'C033MENUTYPE1', 4002, '2024-05-17 19:02:48.768', '2099-12-31 10:30:00.000', '/log/operationLog/operationLogList', '0', '', '', NULL, 4, 'ADMIN', '2024-05-17 11:04:34.499', 'ADMIN', '2024-07-17 02:09:26.497', NULL, NULL, '/log/operationLog/operationLogList');
INSERT INTO sys_menu
(menu_id, site_id, menu_code, menu_name, parent_menu_id, url_type, menu_seq, effective_date, expired_date, link_url, visitable_flag, window_target, menu_pic, extend_list, update_count, created_by, date_created, last_updated_by, last_updated, menu_label, remark, route_url)
VALUES('402809816a43aeaa016a43d28e250002', '0000', 'system001', 'MenuManage', '402809816a43aeaa016a43d113d50000', 'C033MENUTYPE1', 1006, '2019-04-22 00:00:00.000', '2099-12-31 00:00:00.000', '/userauth/menu/menuManage', '0', '', '', NULL, 5, 'YMSLX', '2019-04-22 00:00:00.000', 'ADMIN', '2024-07-17 02:02:47.220', NULL, NULL, '/userauth/menu/menuManage');
INSERT INTO sys_menu
(menu_id, site_id, menu_code, menu_name, parent_menu_id, url_type, menu_seq, effective_date, expired_date, link_url, visitable_flag, window_target, menu_pic, extend_list, update_count, created_by, date_created, last_updated_by, last_updated, menu_label, remark, route_url)
VALUES('402809816a43aeaa016a43d113d50000', '0000', 'system', 'SystemManage', NULL, 'C033MENUTYPE1', 9000, '2019-04-22 00:00:00.000', '2099-12-31 00:00:00.000', '/blank', '0', '', '', NULL, 4, 'YMSLX', '2019-04-22 00:00:00.000', 'ADMIN', '2024-07-17 02:01:59.428', NULL, NULL, '/blank');


INSERT INTO sys_menu_authority
(menu_authority_id, site_id, menu_id, authority_list, btn_control_flg, btn_control_list, last_updated_by, last_updated, created_by, date_created, update_count)
VALUES('402809816a43aeaa016a43d113ea0002', '0000', '402809816a43e347016a43e72b390000', '{"authToEveryone":true,"orgAuthData":[],"roleAuthData":[],"userAuthData":[]}', '0', '[]', 'YMSLX', '2019-04-22 00:00:00.000', 'YMSLX', '2019-04-22 00:00:00.000', 2);
INSERT INTO sys_menu_authority
(menu_authority_id, site_id, menu_id, authority_list, btn_control_flg, btn_control_list, last_updated_by, last_updated, created_by, date_created, update_count)
VALUES('402809816a43e347016a440f55410009', '0000', '402809816a43e347016a440f55400008', '{"authToEveryone":true,"orgAuthData":[],"roleAuthData":[],"userAuthData":[]}', '0', '[]', 'YMSLX', '2019-04-22 00:00:00.000', 'YMSLX', '2019-04-22 00:00:00.000', 1);
INSERT INTO sys_menu_authority
(menu_authority_id, site_id, menu_id, authority_list, btn_control_flg, btn_control_list, last_updated_by, last_updated, created_by, date_created, update_count)
VALUES('7806126b-c3c2-445b-b28e-5b1e13408a0f', '0000', 'db38f32b-386e-4607-b1e9-1f69e064421d', '{"authToEveryone":true,"orgAuthData":[],"roleAuthData":[{"effectiveDate":1533715119000,"expiredDate":4101609664000,"roleCode":"A001","roleId":"r01","roleName":"system administrator"}],"userAuthData":[]}', '0', NULL, 'ADMIN', '2024-07-17 02:15:40.537', 'ADMIN', '2024-06-07 01:10:24.861', 6);
INSERT INTO sys_menu_authority
(menu_authority_id, site_id, menu_id, authority_list, btn_control_flg, btn_control_list, last_updated_by, last_updated, created_by, date_created, update_count)
VALUES('4c3c527a-3b28-49af-8bd7-8ba325220ef1', '0000', '98f9fd58-5a83-4076-9828-0c74676ee579', '{"authToEveryone":true,"orgAuthData":[],"roleAuthData":[{"effectiveDate":1533715119000,"expiredDate":4101609664000,"roleCode":"A001","roleId":"r01","roleName":"system administrator"}],"userAuthData":[]}', '0', NULL, 'ADMIN', '2024-07-17 02:13:58.718', 'ADMIN', '2024-06-05 08:37:36.259', 8);
INSERT INTO sys_menu_authority
(menu_authority_id, site_id, menu_id, authority_list, btn_control_flg, btn_control_list, last_updated_by, last_updated, created_by, date_created, update_count)
VALUES('402809816a43e347016a440d44380007', '0000', '402809816a43e347016a440d44290006', '{"authToEveryone":true,"orgAuthData":[],"roleAuthData":[{"effectiveDate":1533715119000,"expiredDate":4101609664000,"roleCode":"A001","roleId":"r01","roleName":"system administrator"}],"userAuthData":[]}', '0', '[]', 'ADMIN', '2024-07-17 02:13:17.579', 'YMSLX', '2019-04-22 00:00:00.000', 9);
INSERT INTO sys_menu_authority
(menu_authority_id, site_id, menu_id, authority_list, btn_control_flg, btn_control_list, last_updated_by, last_updated, created_by, date_created, update_count)
VALUES('73e74fda-de29-4565-9fb1-61f80042ca3f', '0000', 'b4b1c500-01f1-40d0-87a9-45bee2ff43ac', '{"authToEveryone":true,"orgAuthData":[],"roleAuthData":[{"effectiveDate":1533715119000,"expiredDate":4101609664000,"roleCode":"A001","roleId":"r01","roleName":"system administrator"}],"userAuthData":[]}', '0', NULL, 'ADMIN', '2024-07-17 02:13:29.578', 'ADMIN', '2024-05-17 11:04:55.400', 8);
INSERT INTO sys_menu_authority
(menu_authority_id, site_id, menu_id, authority_list, btn_control_flg, btn_control_list, last_updated_by, last_updated, created_by, date_created, update_count)
VALUES('402809816a43aeaa016a43d551be0007', '0000', '402809816a43aeaa016a43d551bd0006', '{"authToEveryone":true,"orgAuthData":[],"roleAuthData":[{"effectiveDate":1533715119000,"expiredDate":4101609664000,"roleCode":"A001","roleId":"r01","roleName":"system administrator"}],"userAuthData":[]}', '0', '[]', 'ADMIN', '2024-07-17 02:05:23.313', 'YMSLX', '2019-04-22 00:00:00.000', 6);
INSERT INTO sys_menu_authority
(menu_authority_id, site_id, menu_id, authority_list, btn_control_flg, btn_control_list, last_updated_by, last_updated, created_by, date_created, update_count)
VALUES('79109094-536f-492e-93ba-ac3043a09a26', '0000', 'e68829c7-c963-41c3-af89-d322b24c6c57', '{"authToEveryone":true,"orgAuthData":[],"roleAuthData":[{"effectiveDate":1533715119000,"expiredDate":4101609664000,"roleCode":"A001","roleId":"r01","roleName":"system administrator"}],"userAuthData":[]}', '0', NULL, 'ADMIN', '2024-07-17 02:13:35.008', 'ADMIN', '2024-05-17 11:04:34.520', 9);
INSERT INTO sys_menu_authority
(menu_authority_id, site_id, menu_id, authority_list, btn_control_flg, btn_control_list, last_updated_by, last_updated, created_by, date_created, update_count)
VALUES('402809816a43aeaa016a43d28e260003', '0000', '402809816a43aeaa016a43d28e250002', '{"authToEveryone":true,"orgAuthData":[],"roleAuthData":[{"effectiveDate":1533715119000,"expiredDate":4101609664000,"roleCode":"A001","roleId":"r01","roleName":"system administrator"}],"userAuthData":[]}', '0', '[]', 'ADMIN', '2024-07-17 02:05:59.142', 'YMSLX', '2019-04-22 00:00:00.000', 5);
INSERT INTO sys_menu_authority
(menu_authority_id, site_id, menu_id, authority_list, btn_control_flg, btn_control_list, last_updated_by, last_updated, created_by, date_created, update_count)
VALUES('662bce0f-3e22-4b41-b4ed-e846ea147e08', '0000', '1f8384a5-8345-4dad-8aea-06fcddced7fd', '{"authToEveryone":true,"orgAuthData":[],"roleAuthData":[{"effectiveDate":1533715119000,"expiredDate":4101609664000,"roleCode":"A001","roleId":"r01","roleName":"system administrator"}],"userAuthData":[]}', '0', NULL, 'ADMIN', '2024-07-17 02:12:48.540', 'ADMIN', '2024-05-17 07:57:32.574', 8);
INSERT INTO sys_menu_authority
(menu_authority_id, site_id, menu_id, authority_list, btn_control_flg, btn_control_list, last_updated_by, last_updated, created_by, date_created, update_count)
VALUES('402809816a48b73b016a48f1a9d80001', '0000', '402809816a48b73b016a48f1a9c50000', '{"authToEveryone":true,"orgAuthData":[],"roleAuthData":[{"effectiveDate":1533715119000,"expiredDate":4101609664000,"roleCode":"A001","roleId":"r01","roleName":"system administrator"}],"userAuthData":[]}', '0', '[]', 'ADMIN', '2024-07-17 02:12:51.258', 'ADMIN', '2019-04-23 00:00:00.000', 8);
INSERT INTO sys_menu_authority
(menu_authority_id, site_id, menu_id, authority_list, btn_control_flg, btn_control_list, last_updated_by, last_updated, created_by, date_created, update_count)
VALUES('402809816a43aeaa016a43d4a3490005', '0000', '402809816a43aeaa016a43d4a3480004', '{"authToEveryone":true,"orgAuthData":[],"roleAuthData":[{"effectiveDate":1533715119000,"expiredDate":4101609664000,"roleCode":"A001","roleId":"r01","roleName":"system administrator"}],"userAuthData":[]}', '0', '[]', 'ADMIN', '2024-07-17 02:05:26.256', 'YMSLX', '2019-04-22 00:00:00.000', 6);
INSERT INTO sys_menu_authority
(menu_authority_id, site_id, menu_id, authority_list, btn_control_flg, btn_control_list, last_updated_by, last_updated, created_by, date_created, update_count)
VALUES('16dfdd84-770e-4463-86e5-041d2dc4aaf2', '0000', '7c4e5bff-3a02-4cf1-9c75-040d8b722785', '{"authToEveryone":true,"orgAuthData":[],"roleAuthData":[{"effectiveDate":1533715119000,"expiredDate":4101609664000,"roleCode":"A001","roleId":"r01","roleName":"system administrator"}],"userAuthData":[]}', '0', NULL, 'ADMIN', '2024-07-17 02:13:52.707', 'ADMIN', '2024-06-06 02:12:46.101', 4);
INSERT INTO sys_menu_authority
(menu_authority_id, site_id, menu_id, authority_list, btn_control_flg, btn_control_list, last_updated_by, last_updated, created_by, date_created, update_count)
VALUES('73ee81cd-458c-4354-a3df-4b5d8709fd2f', '0000', '66aa8288-130c-4d22-a2c8-1998c5792058', '{"authToEveryone":true,"orgAuthData":[],"roleAuthData":[{"effectiveDate":1533715119000,"expiredDate":4101609664000,"roleCode":"A001","roleId":"r01","roleName":"system administrator"}],"userAuthData":[]}', '0', NULL, 'ADMIN', '2024-07-17 02:14:04.064', 'ADMIN', '2024-06-05 08:51:01.593', 6);
INSERT INTO sys_menu_authority
(menu_authority_id, site_id, menu_id, authority_list, btn_control_flg, btn_control_list, last_updated_by, last_updated, created_by, date_created, update_count)
VALUES('ec2139ef-1d1a-4f8d-9413-fd2d75735527', '0000', '7d61c254-7ca9-4cc8-a0bc-ff76a30831a1', '{"authToEveryone":true,"orgAuthData":[],"roleAuthData":[{"effectiveDate":1533715119000,"expiredDate":4101609664000,"roleCode":"A001","roleId":"r01","roleName":"system administrator"}],"userAuthData":[]}', '0', NULL, 'ADMIN', '2024-07-17 02:14:09.830', 'ADMIN', '2024-06-06 01:36:52.085', 4);
INSERT INTO sys_menu_authority
(menu_authority_id, site_id, menu_id, authority_list, btn_control_flg, btn_control_list, last_updated_by, last_updated, created_by, date_created, update_count)
VALUES('402809816a43e347016a440778c80005', '0000', '402809816a43e347016a440778c70004', '{"authToEveryone":true,"orgAuthData":[],"roleAuthData":[{"effectiveDate":1533715119000,"expiredDate":4101609664000,"roleCode":"A001","roleId":"r01","roleName":"system administrator"}],"userAuthData":[]}', '0', '[]', 'ADMIN', '2024-07-17 02:05:29.126', 'YMSLX', '2019-04-22 00:00:00.000', 6);
INSERT INTO sys_menu_authority
(menu_authority_id, site_id, menu_id, authority_list, btn_control_flg, btn_control_list, last_updated_by, last_updated, created_by, date_created, update_count)
VALUES('fa91c9c3-025e-4d15-b80d-dcf429fe117a', '0000', '33815fe7-0439-4e9a-be6c-55541cd16611', '{"authToEveryone":true,"orgAuthData":[],"roleAuthData":[{"effectiveDate":1533715119000,"expiredDate":4101609664000,"roleCode":"A001","roleId":"r01","roleName":"system administrator"}],"userAuthData":[]}', '0', NULL, 'ADMIN', '2024-07-17 02:14:14.712', 'ADMIN', '2024-05-17 08:31:14.976', 4);
INSERT INTO sys_menu_authority
(menu_authority_id, site_id, menu_id, authority_list, btn_control_flg, btn_control_list, last_updated_by, last_updated, created_by, date_created, update_count)
VALUES('f360441d-fc4c-46c3-a375-3ee04e337f35', '0000', '8245d03c-d2fb-40a7-b2d9-05e9454eeed7', '{"authToEveryone":true,"orgAuthData":[],"roleAuthData":[{"effectiveDate":1533715119000,"expiredDate":4101609664000,"roleCode":"A001","roleId":"r01","roleName":"system administrator"}],"userAuthData":[]}', '0', NULL, 'ADMIN', '2024-07-17 02:15:36.487', 'ADMIN', '2024-06-07 01:10:07.526', 6);
INSERT INTO sys_menu_authority
(menu_authority_id, site_id, menu_id, authority_list, btn_control_flg, btn_control_list, last_updated_by, last_updated, created_by, date_created, update_count)
VALUES('402809816a43e347016a4406a2630003', '0000', '402809816a43e347016a4406a2620002', '{"authToEveryone":true,"orgAuthData":[],"roleAuthData":[{"effectiveDate":1533715119000,"expiredDate":4101609664000,"roleCode":"A001","roleId":"r01","roleName":"system administrator"}],"userAuthData":[]}', '0', '[]', 'ADMIN', '2024-07-17 02:05:40.375', 'YMSLX', '2019-04-22 00:00:00.000', 6);
INSERT INTO sys_menu_authority
(menu_authority_id, site_id, menu_id, authority_list, btn_control_flg, btn_control_list, last_updated_by, last_updated, created_by, date_created, update_count)
VALUES('b131934b-824f-48e3-8c4a-f97466aaa1e6', '0000', 'bfcc5099-8832-479b-aa02-46dd9d468749', '{"authToEveryone":true,"orgAuthData":[],"roleAuthData":[{"effectiveDate":1533715119000,"expiredDate":4101609664000,"roleCode":"A001","roleId":"r01","roleName":"system administrator"}],"userAuthData":[]}', '0', NULL, 'ADMIN', '2024-07-22 09:03:23.389', 'ADMIN', '2024-07-22 09:03:23.389', 0);
INSERT INTO sys_menu_authority
(menu_authority_id, site_id, menu_id, authority_list, btn_control_flg, btn_control_list, last_updated_by, last_updated, created_by, date_created, update_count)
VALUES('402809816a43aeaa016a43d113ea0001', '0000', '402809816a43aeaa016a43d113d50000', '{"authToEveryone":true,"orgAuthData":[{"jobId":"j01","jobName":"GH","orgId":"f3fd9360-d7aa-4e45-bac7-82ab56520b1b","orgLevel":"0","orgName":"YMSL"}],"roleAuthData":[{"effectiveDate":1533715119000,"expiredDate":4101609664000,"roleCode":"A001","roleId":"r01","roleName":"system administrator"}],"userAuthData":[{"userCode":"ADMIN","userId":"userID-ADMIN","userName":"system administrator"}]}', '1', '[{"_ROW_KEY_":"row_35","btnKey":"11","btnAuth":{"roleAuthData":[],"userAuthData":[],"orgAuthData":[{"jobName":"GH","jobId":"j01","_ROW_KEY_":"row_32","orgName":"YMSL","name":"YMSL(GH)","orgLevel":0,"orgId":"f3fd9360-d7aa-4e45-bac7-82ab56520b1b"}]},"desc":"11"}]', 'ADMIN', '2024-07-23 03:46:49.672', 'YMSLX', '2019-04-22 00:00:00.000', 10);



INSERT INTO sys_parameter
(id, site_id, "key", parameter_group, extend_list, update_count, created_by, date_created, last_updated_by, last_updated, remark)
VALUES('ID00001', '', 'ORGANIZATION', NULL, '[]', 0, 'admin', '2019-12-26 13:43:30.000', 'admin', '2019-11-08 00:18:14.000', NULL);
INSERT INTO sys_parameter
(id, site_id, "key", parameter_group, extend_list, update_count, created_by, date_created, last_updated_by, last_updated, remark)
VALUES('ID00002', '', 'PERSON', NULL, '[]', 0, 'admin', '2019-12-26 13:43:30.000', 'admin', '2019-11-08 00:18:14.000', NULL);
INSERT INTO sys_parameter
(id, site_id, "key", parameter_group, extend_list, update_count, created_by, date_created, last_updated_by, last_updated, remark)
VALUES('ID00003', '', 'JOBAUTHSIGN', NULL, '{"value":"1","label":"Organization Authorization Management","desc":"Controls the display and setup of organization management authorization information on the menu management page.","inputType":"boolean"}', 0, 'admin', '2019-12-26 13:43:30.000', 'admin', '2019-11-08 00:18:14.000', NULL);
INSERT INTO sys_parameter
(id, site_id, "key", parameter_group, extend_list, update_count, created_by, date_created, last_updated_by, last_updated, remark)
VALUES('ID00004', '', 'ORGVERSIONSIGN', NULL, '{"value":"1","label":"Organizational Structure Version Management","desc":"Indicates whether to display historical version information of organizations on the organizational structure management page.","inputType":"boolean"}', 0, 'admin', '2019-12-26 13:43:30.000', 'admin', '2019-11-08 00:18:14.000', NULL);
INSERT INTO sys_parameter
(id, site_id, "key", parameter_group, extend_list, update_count, created_by, date_created, last_updated_by, last_updated, remark)
VALUES('ID00005', '', 'USER', NULL, '[]', 0, 'admin', '2019-12-26 13:43:30.000', 'admin', '2019-11-08 00:18:14.000', NULL);
INSERT INTO sys_parameter
(id, site_id, "key", parameter_group, extend_list, update_count, created_by, date_created, last_updated_by, last_updated, remark)
VALUES('ID00006', '', 'PASSWORDSTRATEGY', NULL, '[{"label":"Contains Numbers","key":"containNum","value":true,"inputType":"radio","desc":""},{"label":"Contains Letters","key":"containLetter","value":false,"inputType":"radio","desc":""},{"label":"Contains Uppercase","key":"containCapital","value":false,"inputType":"radio","desc":""},{"label":"Contains Symbols","key":"containSymbol","value":false,"inputType":"radio","desc":""},{"label":"Minimum Length","key":"minLength","value":3,"inputType":"number","desc":""},{"label":"Maximum Length","key":"maxLength","value":15,"inputType":"number","desc":""},{"label":"Password Duplication Count","key":"passwordDuplicationTime","value":3,"inputType":"number","desc":""},{"label":"Password Expiration Period","key":"passwordExpiryDay","value":90,"inputType":"number","desc":""},{"label":"Password Validation Attempts","key":"passwordValidFailureTime","value":5,"inputType":"number","desc":""},{"label":"User Lockout Duration","key":"passwordFailureBlockLoginTime","value":30,"inputType":"number","desc":""}]', 0, 'admin', '2019-12-26 13:43:30.000', 'admin', '2019-11-08 00:18:14.000', NULL);
INSERT INTO sys_parameter
(id, site_id, "key", parameter_group, extend_list, update_count, created_by, date_created, last_updated_by, last_updated, remark)
VALUES('ID00007', '', 'MENUBUTTONAUTHDISPLAYSIGN', NULL, '{"value":"1","label":"Button Authorization Display","desc":"Controls whether button authorization information is displayed on the menu page.","inputType":"boolean"}', 0, 'admin', '2019-12-04 13:21:17.270', 'admin', '2019-11-19 00:39:00.000', NULL);

INSERT INTO sys_parameter
(id, site_id, "key", parameter_group, extend_list, update_count, created_by, date_created, last_updated_by, last_updated, remark)
VALUES('ID00008', '', 'MENUTREEEXPANDSIGN', NULL, '{"value":"1","label":"Menu expansion","desc":"Set whether the left menu tree in the menu page is expanded","inputType":"boolean"}', 0, 'admin', '2019-12-04 13:21:17.270', 'admin', '2019-11-08 00:18:25.000', NULL);
INSERT INTO sys_parameter
(id, site_id, "key", parameter_group, extend_list, update_count, created_by, date_created, last_updated_by, last_updated, remark)
VALUES('ID00009', '', 'USERINFOMANAGE', NULL, '[]', 0, 'admin', '2019-12-26 13:43:30.000', 'admin', '2020-03-04 07:50:18.000', NULL);
INSERT INTO sys_parameter
(id, site_id, "key", parameter_group, extend_list, update_count, created_by, date_created, last_updated_by, last_updated, remark)
VALUES('ID00010', '', 'PRIVATEINFO', NULL, '{"value" : "PRIVATE","label" : "private"}', 0, 'admin', '2024-03-27 22:12:13.765', 'admin', '2024-03-27 22:12:13.765', NULL);
INSERT INTO sys_parameter
(id, site_id, "key", parameter_group, extend_list, update_count, created_by, date_created, last_updated_by, last_updated, remark)
VALUES('ID00330', '', 'CODEMASTERDEFAULTGROUP', NULL, '{"value":"C000"}', 0, 'admin', '2024-03-27 22:12:13.765', 'admin', '2024-03-27 22:12:13.765', NULL);
INSERT INTO sys_parameter
(id, site_id, "key", parameter_group, extend_list, update_count, created_by, date_created, last_updated_by, last_updated, remark)
VALUES('SYS001', '', 'SYS_KEY_TYPE', NULL, '[{"key": "MENUTREEEXPANDSIGN", "desc": "Control whether the left menu tree on the menu page is expanded", "name": "Menu Expansion", "i18nKey": "", "inputType": "boolean"}, {"key": "MENUBUTTONAUTHDISPLAYSIGN", "desc": "Set whether button authorization information is displayed on the menu page", "name": "Button Authorization Display", "i18nKey": "", "inputType": "boolean"}, {"key": "PERSON", "desc": "Extended basic information fields for employees", "name": "Employee Extension Fields", "i18nKey": "", "inputType": "multiList"}, {"key": "USER", "desc": "Extended basic information fields for users", "name": "User Extension Fields", "i18nKey": "", "inputType": "multiList"}, {"key": "ORGANIZATION", "desc": "Extended basic information fields for organizations", "name": "Organization Extension Fields", "i18nKey": "", "inputType": "multiList"}, {"key": "ORGVERSIONSIGN", "desc": "Display organization historical version information on the organizational structure management page", "name": "Organizational Structure Version Management", "i18nKey": "", "inputType": "boolean"}, {"key": "JOBAUTHSIGN", "desc": "Set display and settings of organizational management authorization information on the menu management page", "name": "Organizational Authorization Management", "i18nKey": "", "inputType": "boolean"}, {"key": "PASSWORDSTRATEGY", "desc": "Password policy", "name": "Password Policy", "i18nKey": "", "inputType": "multiRow"}, {"key": "USERINFOMANAGE", "desc": "Controls the editing state of user attributes on the user management page", "name": "User Attribute Management", "i18nKey": "", "inputType": "multiRow"}, {"key": "CODEMASTERDEFAULTGROUP", "desc": "Set default dictionary group", "name": "Default Dictionary Group", "i18nKey": "", "inputType": "string"}]', 0, 'admin', '2019-12-04 13:21:17.270', 'admin', '2019-12-04 13:21:17.270', NULL);

INSERT INTO sys_role_info (role_id, site_id, role_code, role_name, parent_role_id, "type", remark, effective_date,
                           expired_date, extend_list, update_count, created_by, date_created, last_updated_by,
                           last_updated)
VALUES ('r01', '0000', 'A001', 'system administrator', NULL, NULL, NULL, '2018-08-08 15:58:39.000', '2099-12-22 16:01:04.000',
        NULL, 0, '---', '2018-10-06 15:58:39.000', '---', '2018-10-06 16:01:04.000')
;

INSERT INTO sys_user (user_id, site_id, user_code, person_id, nick_name, "type", mail, phone, photo, effective_date,
                      expired_date, "password", extend_list, update_count, created_by, date_created, last_updated_by,
                      last_updated, remark, user_alias)
VALUES ('userID-ADMIN', '0000', 'ADMIN', '', 'system administrator', NULL, '', NULL, NULL, '2018-12-30 10:18:34.000',
        '2099-12-31 00:00:00.000', '$2a$10$3ZSaE8PvRaNbBvovqEY36.0BPCsht.FJPE0KFtocbTekVLTDfiJVq', '[]', 6, 'ADMIN',
        '2018-12-30 02:19:11.000', 'ADMIN', '2019-06-25 10:39:58.841', NULL, NULL)
;

INSERT INTO sys_user_authority (authority_id, site_id, user_id, role_list, update_count, created_by, date_created,
                                last_updated_by, last_updated)
VALUES ('authority-ADMIN', '0000', 'userID-ADMIN', '[]', 0, 'ADMIN', '2018-12-30 05:59:35.000', 'ADMIN',
        '2020-06-02 11:42:36.532')
;


INSERT INTO sys_i18n_language (id, project_id, "type", language_name, language_code, order_index, remark,
                                      active_flag, extends, update_count, created_by, date_created, last_updated_by,
                                      last_updated)
VALUES ('a06dbad6-20a5-42b7-b0b9-ec6035629363', '', NULL, '日本語', 'ja', 0, '', true, NULL, 0, 'ADMIN',
        '2024-06-29 06:48:21.450517', 'ADMIN', '2024-06-29 06:48:21.450517'),
       ('edb679fa-9b32-4f89-af56-ba5b6761936a', '', NULL, '中文', 'zh', 1, '', true, NULL, 0, 'ADMIN',
        '2024-06-29 06:48:29.924634', 'ADMIN', '2024-06-29 06:48:29.924634'),
       ('0f8dd0be-b1c8-4bb1-b790-dd45f772fd26', '', NULL, 'English', 'en', 2, '', true, NULL, 0, 'ADMIN',
        '2024-06-29 06:48:35.564552', 'ADMIN', '2024-06-29 06:48:35.564552');


INSERT INTO sys_i18n_resource (id, project_id, "catalog", "key", "type", message, is_runtime, extends,
                                      update_count, created_by, date_created, last_updated_by, last_updated)
VALUES ('9400b8af-f922-444a-a2cc-4f1b681db46f', '', '', 'menu.menuManage', NULL,
        '{"en": "Menu Management", "ja": "メニュー管理", "zh": "菜单管理"}', true, NULL, 1, 'ADMIN',
        '2024-06-29 07:01:34.290398', 'ADMIN', '2024-06-29 07:02:37.833669'),
       ('8d0924b2-761c-4cb9-8fe3-f620019e9c25', '', '', 'menu.fileResourceManage', NULL,
        '{"en": "Static Resource Management", "ja": "静的リソース管理", "zh": "静态资源管理"}', true, NULL, 0, 'ADMIN',
        '2024-06-29 08:15:44.601227', 'ADMIN', '2024-06-29 08:15:44.601227'),
       ('23b8efe9-3b2b-4e43-80d9-e857c15cf5a7', '', '', 'menu.systemManage', NULL,
        '{"en": "System Management", "ja": "システムメニュー", "zh": "系统管理"}', true, NULL, 0, 'ADMIN',
        '2024-06-29 08:16:09.385503', 'ADMIN', '2024-06-29 08:16:09.385503'),
       ('95226d8b-bf9a-47ce-a825-c46e66f3055d', '', '', 'menu.roleManage', NULL,
        '{"en": "Role Management", "ja": "ロール管理", "zh": "角色管理"}', true, NULL, 0, 'ADMIN',
        '2024-06-29 08:16:27.794464', 'ADMIN', '2024-06-29 08:16:27.794464'),
       ('97a71d77-59fb-4855-a5e6-6e3e9bc69706', '', '', 'menu.userManage', NULL,
        '{"en": "User Management", "ja": "ユーザ管理", "zh": "用户管理"}', true, NULL, 0, 'ADMIN',
        '2024-06-29 08:16:41.794035', 'ADMIN', '2024-06-29 08:16:41.794035'),
       ('789dcae7-86df-4bb2-a8ea-7ef57e95ddb0', '', '', 'menu.positionManage', NULL,
        '{"en": "Position Management", "ja": "職位管理", "zh": "岗位管理"}', true, NULL, 0, 'ADMIN',
        '2024-06-29 08:16:58.895748', 'ADMIN', '2024-06-29 08:16:58.895748'),
       ('e626518a-8144-4203-aa40-80c6f5671d69', '', '', 'menu.personManage', NULL,
        '{"en": "Employee Management", "ja": "職員管理", "zh": "职员管理"}', true, NULL, 0, 'ADMIN',
        '2024-06-29 08:17:18.567528', 'ADMIN', '2024-06-29 08:17:18.567528'),
       ('7abcb240-c653-4804-83f3-eb72038d6a53', '', '', 'menu.orgManage', NULL,
        '{"en": "Organization Management", "ja": "組織管理", "zh": "组织管理"}', true, NULL, 0, 'ADMIN',
        '2024-06-29 08:17:33.90547', 'ADMIN', '2024-06-29 08:17:33.90547'),
       ('8f16dd67-7154-429a-b4c3-29042e19b220', '', '', 'menu.i18nManage', NULL,
        '{"en": "Internationalization", "ja": "多言語管理", "zh": "国际化管理"}', true, NULL, 0, 'ADMIN',
        '2024-06-29 08:17:57.439899', 'ADMIN', '2024-06-29 08:17:57.439899'),
       ('ee082cce-abb5-4c3c-8584-c03e49409b57', '', '', 'menu.loginLog', NULL,
        '{"en": "Login History", "ja": "ログイン履歴", "zh": "登陆履历"}', true, NULL, 0, 'ADMIN',
        '2024-06-29 08:18:19.121101', 'ADMIN', '2024-06-29 08:18:19.121101'),
       ('75f41d41-5a79-4a52-b34f-94bd67a41da9', '', '', 'menu.operationLog', NULL,
        '{"en": "Operation History", "ja": "操作履歴", "zh": "操作履历"}', true, NULL, 0, 'ADMIN',
        '2024-06-29 08:18:39.911665', 'ADMIN', '2024-06-29 08:18:39.911665');
