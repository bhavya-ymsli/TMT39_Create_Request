package com.blank.web.app.controller;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Mockito.when;
import static org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors.user;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.util.Locale;
import java.util.Map;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.context.TestConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Import;
import org.springframework.context.annotation.Profile;
import org.springframework.http.MediaType;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.web.servlet.MockMvc;

import com.blank.test.TestSecurityConfiguration;
import com.ymsl.solid.base.json.JsonUtils;
import com.ymsl.solid.context.auth.BaseUserDetails;
import com.ymsl.solid.test.annotation.EnableJpaTest;

/**
 *
 * @author YMSLX
 * @version 1.0
 *
 */
@WebMvcTest(controllers = UserController.class)
@EnableJpaTest
@Import(TestSecurityConfiguration.class)
@ActiveProfiles("development-test")
class UserControllerTest  {

    @Autowired
    MockMvc mockMvc;
    
    @Test
    @DisplayName("Test changeLocale")
    void test_old_and_new() throws Exception {
        var oldLocale = Locale.ENGLISH;
        var newLocale = Locale.JAPAN;
        BaseUserDetails userDetails = Mockito.mock(BaseUserDetails.class);
        
        // When:
        when(userDetails.getAppLocale()).thenReturn(oldLocale);

        // Then:
        var b = post("/user/changeLocale")
                .param("lang", newLocale.getLanguage())
                .with(user(userDetails))
                .accept(MediaType.APPLICATION_JSON);
        
        // Expect:
        var rs = mockMvc.perform(b).andDo(print());
        rs.andExpect(status().isOk());
        rs.andExpect(result -> {
            var mvcResult = result.getResponse().getContentAsString();
            Map<String, Object> rjson = JsonUtils.toMap(mvcResult);
            assertThat(rjson).containsEntry("oldLocale", oldLocale.getLanguage());
            assertThat(rjson).containsEntry("newLocale", newLocale.getLanguage());
        });
    }
    
    
    @Test
    @DisplayName("Test changeLocale with old locale is null")
    void test_old_null() throws Exception {
        var newLocale = Locale.JAPAN;
        BaseUserDetails userDetails = Mockito.mock(BaseUserDetails.class);
        
        // When:
        when(userDetails.getAppLocale()).thenReturn(null);

        // Then:
        var b = post("/user/changeLocale")
        .param("lang", newLocale.getLanguage())
        .with(user(userDetails))
        .accept(MediaType.APPLICATION_JSON);
        
        // Expect:
        var rs = mockMvc.perform(b).andDo(print());
        rs.andExpect(status().isOk());
        rs.andExpect(result -> {
            var mvcResult = result.getResponse().getContentAsString();
            Map<String, Object> rjson = JsonUtils.toMap(mvcResult);
            assertThat(rjson).doesNotContainKey("oldLocale");
            assertThat(rjson).containsEntry("newLocale", newLocale.getLanguage());
        });
    }

}
