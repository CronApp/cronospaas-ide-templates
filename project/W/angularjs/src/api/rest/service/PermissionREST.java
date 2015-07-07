package api.rest.service;

/**
 * REST.ftl - Publicando metodos de negocio via REST
 * 
 * @author Techne
 * @version 1.0
 * @since 2015-06-30
 *
 **/

import java.util.*;
import javax.ws.rs.*;
import javax.ws.rs.core.*;
import javax.persistence.*;

import api.rest.service.util.*;

import br.entity.*;
import br.business.*;
import br.dao.*;


import api.rest.service.exceptions.*;
import api.rest.service.util.*;


@Path("/Permission")
@Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
@Consumes({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
public class PermissionREST implements RESTService<PermissionEntity> {

  private SessionManager session;
  private PermissionBusiness business;

  public PermissionREST() {
    this.session = SessionManager.getInstance();
    this.business = new PermissionBusiness(session);
  }

  @GET
  public Response get(@QueryParam("page")Integer page, @QueryParam("size")Integer size) {
    List<PermissionEntity> entities = new ArrayList<>();
	try{
	
	    if(page == null || size == null)
	      entities = business.findAll();
	    else
	      entities = business.findAll(page,size);
	
	    if(entities.size() > 0){
  	    entities.get(0).setEnabled(true);
        System.out.println("GET: " + entities.get(0));
	    }
	    
	    GenericEntity entity = new GenericEntity<List<PermissionEntity>>(entities) {};
	 
	    return Response.ok(entity).build();
	    
    }catch(Exception exception){
      throw new CustomWebApplicationException(exception);
    }
      
  }

  @GET
  @Path("{id}")
  public Response getById(@PathParam("id")String sid) {
    try{
      Integer id = Integer.parseInt(sid);
      PermissionEntity entity = business.getById(id);
      return Response.ok(entity).build();
    }catch(Exception exception){
      throw new CustomWebApplicationException(exception);
    }
  }
  
  @GET
  @Path("/{attributeName}/{value}")
  public Response getByAttributeName(@PathParam("attributeName")String attributeName, @PathParam("value")String value) {
    try {
      String formattedAttributeName = attributeName.toUpperCase();
      Query query = session.getEntityManager().createNamedQuery("PermissionEntity.findBy" + formattedAttributeName);
      query.setParameter(formattedAttributeName, value);
      List<PermissionEntity> entities = (List<PermissionEntity>)query.getResultList();
      GenericEntity<List<PermissionEntity>> entity = new GenericEntity<List<PermissionEntity>>(entities) {};
      return Response.ok(entity).build();
    }catch(Exception exception){
	    session.rollBack();
      throw new CustomWebApplicationException(exception);
    }
  }


  @POST
  public Response post(PermissionEntity entity) {
    try{
	    session.begin();
	    business.save(entity);
	    session.commit();
	    return Response.ok(entity).build();
    }catch(Exception exception){
	    session.rollBack();
      throw new CustomWebApplicationException(exception);
    }
  }
  
  @PUT
  @Path("{id}")
  public Response putWithId(@PathParam("id")String sid, PermissionEntity entity) {
    return put(entity);
  }

  @PUT
  public Response put(PermissionEntity entity) {
    try{
	    session.begin();
	    business.update(entity);
	    session.commit();
	    return Response.ok().build();
    }catch(Exception exception){
	    session.rollBack();
        throw new CustomWebApplicationException(exception);
    }
  }

  @DELETE
  @Path("{id}")
  public Response delete(@PathParam("id")String sid) {
    try{
	    Integer id = Integer.parseInt(sid);
	    session.begin();
	    PermissionEntity entity = business.getById(id);
	    PermissionEntity managedEntity = this.session.getEntityManager().getReference(PermissionEntity.class, entity.getId());
	    business.delete(managedEntity);
	    session.commit();
	    return Response.ok().build();
    }catch(Exception exception){
	    session.rollBack();
	    throw new CustomWebApplicationException(exception);
    }
  }
  
  @OPTIONS
  @Produces(MediaType.APPLICATION_XML)
  public Response options() {
    try{
      return Response.ok().entity(business.options(PermissionEntity.class)).build();
    }catch(Exception exception){
      session.rollBack();
      throw new CustomWebApplicationException(exception);
    }
  }
  
}
