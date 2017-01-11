package com.techne.oauth2.client.view;

import java.io.IOException;
import java.net.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.techne.oauth2.client.dto.*;
import com.techne.oauth2.client.service.*;

public class InterceptFilter implements Filter {
	
	public void destroy() {
		
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		
		if(request instanceof HttpServletRequest && response instanceof HttpServletResponse){
			HttpServletRequest httpServletRequest = (HttpServletRequest)request;
			HttpServletResponse httpServletResponse = (HttpServletResponse)response;
						
			String authorizationServer=httpServletRequest.getParameter(Constants.AUTHORIZATION_SERVER_PARAMETER);
			OAuth2Context context = (OAuth2Context)httpServletRequest.getSession().getAttribute(Constants.OAUTH2_CONTEXT_PARAMETER);
			
			if(context==null || context.getOauth2Token()==null || context.getOauth2Token().getAccessToken()==null || (authorizationServer!=null && !context.getAuthorizationServer().equals(authorizationServer))){
				context = new OAuth2Context();
				context.setAuthorizationServer(authorizationServer!=null?authorizationServer:"google");
				httpServletRequest.getSession().setAttribute(Constants.OAUTH2_CONTEXT_PARAMETER, context);
							
				//load OAuth2 Configuration for the authorization server
				Configuration configuration = ConfigurationService.getInstance().loadConfiguration(context.getAuthorizationServer());
				context.setConfiguration(configuration);
				
				String originalURL = httpServletRequest.getRequestURL().append(httpServletRequest.getQueryString()!=null?"?"+httpServletRequest.getQueryString():"").toString();
				String state = URLEncoder.encode(originalURL,"UTF-8");
				
				//get authorization code				
				URL authorizationURL = OAuth2ClientService.buildAuthorizationServiceURI(configuration.getAuthorizationURI(), configuration.getClientId(), configuration.getAuthorizationCallbackURI(), state, configuration.getScope());
				//redirect to authorization server				
				httpServletResponse.sendRedirect(authorizationURL.toString());
				return;
			}
			//already authorized
			chain.doFilter(request, response);
			return;
		}		
	}

	public void init(FilterConfig config) throws ServletException {
	}

}
