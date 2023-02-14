package com.ystms.okr.framework.security.filter;

import java.io.IOException;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;
import com.ystms.okr.common.core.domain.model.LoginUser;
import com.ystms.okr.common.utils.SecurityUtils;
import com.ystms.okr.common.utils.StringUtils;
import com.ystms.okr.framework.web.service.TokenService;

/**
 * token过滤器 验证token有效性
 * 
 * @author yunsite
 */
@Component
public class JwtAuthenticationTokenFilter extends OncePerRequestFilter
{
    @Autowired
    private TokenService tokenService;
    /**
     * 接口请求头，这里是验证是否为手机端请求
     */
    private static final String HEADER_FLAG="mobile";

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
            throws ServletException, IOException
    {
        System.out.println("根据请求路径拦截请求:"+request.getRequestURI());
        // 根据请求路径拦截请求
        if(request.getHeader(HEADER_FLAG)==null) {
            LoginUser loginUser = tokenService.getLoginUser(request);
            if (StringUtils.isNotNull(loginUser) && StringUtils.isNull(SecurityUtils.getAuthentication())) {
                tokenService.verifyToken(loginUser);
                UsernamePasswordAuthenticationToken authenticationToken = new UsernamePasswordAuthenticationToken(loginUser, null, loginUser.getAuthorities());
                authenticationToken.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
                SecurityContextHolder.getContext().setAuthentication(authenticationToken);
            }
        } else {

        }
        chain.doFilter(request, response);
    }
}
