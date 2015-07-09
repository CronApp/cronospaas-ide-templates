package api.rest.service.permission;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.util.logging.*;
import br.entity.*;
import br.dao.*;
import api.rest.service.exceptions.*;
import api.rest.service.oauth2.flow.*;



@WebServlet(
  value={"/auth", "/logout", "/session"}
, name="auth-servlet")
public class AuthenticationServlet extends HttpServlet{

 private static final long serialVersionUID = -1l;
 private final Logger logger = Logger.getLogger(this.getClass().getName()); 

 UserDAO dao ;
 public void init() throws ServletException{
   
   dao = new UserDAO( SessionManager.getInstance().getEntityManager() );

 }
 public void destroy(){}

 protected void doPost(HttpServletRequest req, HttpServletResponse resp){
	  try{
  	  String username = req.getParameter("username");
  	  String password = req.getParameter("password");
  	  
  	  if( login(username, password) ){
  	    req.getSession().setAttribute("logged",true);
  	    req.getSession().setAttribute("username",username);
  	  }
  	  else{
  	    resp.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
  	  }
	  }catch(Exception e){
	    throw new CustomWebApplicationException(e);
	  }
	}

 protected void doGet(HttpServletRequest req, HttpServletResponse resp){
   try{
     String uri = req.getRequestURI();
     
     if("/logout".equals(uri)){
      logout(req, resp);
     } 
     else if("/session".equals(uri)){
      session(req, resp);   
     }
     else{
      resp.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
     }
   }catch(Exception e){
	    throw new CustomWebApplicationException(e);
	  }
   
 }
 
	private boolean login(String username,String password){
	    logger.log(Level.INFO, "login");
	    //return authenticateLocal(username, password);
//	    return authenticateDataBase(username, password);
	    return authenticateOAuth2(username, password);
	}
	
	private boolean authenticateLocal(String username, String password){
	    return "techne".equals(username) && "techne".equals(password);
	}

	private boolean authenticateOAuth2(String username, String password){
		OAuth2Client client = new OAuth2Client(OAuth2Settings.TOKEN_URI,
				OAuth2Settings.REVOKE_URI, OAuth2Settings.CLIENT_ID,
				OAuth2Settings.CLIENT_SECRET);
			String token = null;
			try{
			  token = client.authenticate(username, password);
			  logger.log(Level.INFO, token);
			}catch(Exception e){
			  e.printStackTrace();
  	    logger.log(Level.SEVERE, e.getMessage());
			}
			return (token != null);
	}


	private boolean authenticateDataBase(String username, String password){
	    for(UserEntity user : dao.findAll()){
	      if(username.equals(user.getName()) )  return true;
	    }
	    return false;
	}

	private void logout(HttpServletRequest req, HttpServletResponse resp){
	    logger.log(Level.INFO, "logout");

	    req.getSession().invalidate();
	}
	

	private void session(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
    logger.log(Level.INFO, "session");

	  Object logged = req.getSession().getAttribute("logged");
	  String json = String.format("{\"username\": \"%s\"}", req.getSession().getAttribute("username") );

	  if("true".equals(logged) )
	    resp.getOutputStream().print(json);
	  else
	    resp.setStatus(HttpServletResponse.SC_NO_CONTENT);

	}

}