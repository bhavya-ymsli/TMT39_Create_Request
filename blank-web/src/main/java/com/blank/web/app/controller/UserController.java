package com.blank.web.app.controller;

import java.util.Locale;
import java.util.Map;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.blank.web.app.config.auth.PJUserDetails;
import com.blank.web.app.form.UserInfoModel;
import com.ymsl.solid.context.auth.BaseUserDetails;
import com.ymsl.solid.web.restful.json.model.RestProcessAware;
import com.ymsl.solid.web.usercontext.UserDetailsAccessor;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.validation.constraints.NotBlank;

/**
 * Controller for user info.
 */
@RestController
@RequestMapping("/user")
@Tag(name = "UserController", description = "user info")
public class UserController implements RestProcessAware {

    @Operation(summary = "Get user info", security = {@SecurityRequirement(name = "X-Auth-Token")})
    @PostMapping("/info")
    public UserInfoModel userinfo(HttpServletResponse response) {
        if(UserDetailsAccessor.DEFAULT.get() != null) {
            PJUserDetails ud = UserDetailsAccessor.DEFAULT.get();
            return new UserInfoModel(ud.getUserCode(), ud.getCompanyCode(), ud.getUserCode());
        } else {
            // if no user exists, return null for saving traffic
            response.setStatus(401);
            return null;
        }

    }
    
    /**
     * Change Locale of current user
     * 
     * @param lang  language code
     * @return old and new locale
     */
    @Operation(summary = "Change locale of current user", security = {@SecurityRequirement(name = "X-Auth-Token")})
    @PostMapping("/changeLocale")
    public ResponseEntity<Map<String, String>> changeLocale(@NotBlank @RequestParam("lang") String lang) {
        Locale newLocale = parseLocale(lang);
        var uc = getCurrentUserContext();
        if (uc == null) {
            return ResponseEntity.status(401).build();
        }
        var oldLocale = uc.getAppLocale();
        
        // Store new locale
        uc.setAppLocale(newLocale);
        UserDetailsAccessor.DEFAULT.updateAuthentication(uc);
        
        // Return old and new locale
        Map<String, String> result = null;
        if(oldLocale == null) {
            result = Map.of("newLocale", newLocale.toString());       
        } else {
            result = Map.of("oldLocale", oldLocale.toString(), "newLocale", newLocale.toString());
            
        }
        return ResponseEntity.ok(result);
    }

    /**
     * Get current user context
     * @return current user context
     */
    private BaseUserDetails getCurrentUserContext() {
        try {
            return UserDetailsAccessor.DEFAULT.get();
        } catch(Exception e) {
            return null;
        }
    }

    /** 
     *  Convert language code to Locale object
     *      
     * @param lang language code
     * @return Locale object
     */
    private Locale parseLocale(String lang) {
        return Locale.forLanguageTag(lang);
    }
    
}
