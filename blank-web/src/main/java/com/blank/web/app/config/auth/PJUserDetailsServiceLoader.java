package com.blank.web.app.config.auth;

import com.ymsl.solid.base.constants.BaseConstants;
import com.ymsl.solid.base.json.JsonUtils;
import com.ymsl.solid.base.json.exception.JsonOperationException;
import com.ymsl.solid.context.auth.BaseUserDetailsService;
import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import java.util.*;

/**
 * User details service for project.
 * Load user details from database or other sources.
 * Generate temp user details for password validation via {@link #loadUserPwdByUsername(String)},
 * and create complete user details via {@link #loadUserByUsername(String)}.
 */
@Slf4j
public class PJUserDetailsServiceLoader implements BaseUserDetailsService {

  private static final String SITE_ID = "0000";

  @Override
  public UserDetails loadUserByUsername(String userLoginInfo) throws UsernameNotFoundException {

    String userCode = "";
    Map<String, String> loginInfo = new HashMap<>();
    try {
      loginInfo = JsonUtils.toMap(userLoginInfo, String.class, String.class);
      // get user code from json format userLoginInfo
      userCode = loginInfo.get(BaseConstants.UserInfo.USER_NAME);
    } catch (JsonOperationException e) {
      // userLoginInfo is not json, so it can be used as user code
      userCode = userLoginInfo;
    }

    // role information and org information can be loaded from database
    // role should be prefixed with "ROLE_" for security configuration
    List<GrantedAuthority> authorities = AuthorityUtils.createAuthorityList("ROLE_USER");
    if(userCode.equalsIgnoreCase("ADMIN")) {
      authorities = AuthorityUtils.createAuthorityList("ROLE_ADMIN", "ROLE_USER");
    }

    // reserve the userLoginInfo in case you want to use jwttoken or remember-me service
    PJUserDetails user = new PJUserDetails(userLoginInfo, "", authorities);
    user.setUserCode(userCode);

    user.setCompanyCode("0000");
    return setLocaleIfNecessary(loginInfo, user);
  }

  @Override
  public UserDetails loadUserPwdByUsername(String userLoginInfo) throws UsernameNotFoundException {

    String userName = "";

    try {
      Map<String, String> loginInfo = JsonUtils.toMap(userLoginInfo, String.class, String.class);
      if (loginInfo == null || StringUtils.isEmpty(loginInfo.get("username"))) {
        throw new UsernameNotFoundException("no user info");
      }
      userName = loginInfo.get(BaseConstants.UserInfo.USER_NAME);
    } catch (JsonOperationException e) {
      // userLoginInfo is not json, so it can be used as user code
      if (StringUtils.isEmpty(userLoginInfo)) {
        throw new UsernameNotFoundException("no user info");
      }
      userName = userLoginInfo;
    }

    // encoded for user
    String passwordFromDb = "$2a$10$m877TxuLQyUExu6A3CdCCucwjCaudtLZwiujzC5ExhpYb/Sbw/gXa";
    //
    return new User(userName, passwordFromDb, AuthorityUtils.NO_AUTHORITIES);
  }

  /**
   *  Set locale to {@link PJUserDetails}, when it's present.
   *
   * @param loginInfo the request parameter map
   * @param user the target user to set
   * @return the target user
   */
  private UserDetails setLocaleIfNecessary(Map<String, String> loginInfo, PJUserDetails user) {
    Optional<String> language = Optional.ofNullable(loginInfo.get(BaseConstants.UserInfo.LANGUAGE_CODE));
    if(language.isPresent()) {
      try {
        user.setAppLocale(new Locale(language.get()));
      } catch (Exception e) {
        log.debug("Failed to set user locale, input: [{}]", language.get() );
      }
    }
    return user;
  }

  /**
   * Get the current request.
   * @return the current request
   */
  private HttpServletRequest getRequest() {
    HttpServletRequest req = null;
    ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
    if (attributes != null) {
      req = attributes.getRequest();
    }
    return req;
  }

}
