package com.salesianostriana.dam.security;

import java.io.IOException;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

@Component
public class RoleBasedAuthenticationHandler implements AuthenticationSuccessHandler{

	private final RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
            Authentication authentication) throws IOException, ServletException {
    	try {
            Set<String> roles = AuthorityUtils.authorityListToSet(authentication.getAuthorities());
            if (roles.contains("ROLE_ADMIN")) {
                redirectStrategy.sendRedirect(request, response, "/admin/");
            } else if (roles.contains("ROLE_USER")) {
                redirectStrategy.sendRedirect(request, response, "/user/");
            } else {
                throw new IllegalStateException("Usuario no tiene un rol asignado.");
            }
        } catch (IllegalStateException e) {
            System.out.println("Exception thrown: " + e.getMessage());
        } 	
    }

}
