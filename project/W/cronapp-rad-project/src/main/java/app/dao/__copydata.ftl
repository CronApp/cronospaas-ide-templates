<#-- Verificar se existem parametros -->
<#if (authentication??) >
	<#if (authentication?lower_case) == "nenhuma">
file=AuditLogDAO.java
file=DeviceDAO.java
	<#else>
file=ApplicationDAO.java
file=ApplicationUserDAO.java
file=AuditLogDAO.java
file=DeviceDAO.java
file=LoginDAO.java
file=RoleDAO.java
file=RoleSecurableDAO.java
file=SecurableDAO.java
file=UserDAO.java
file=UserRoleDAO.java
file=UserSecurableDAO.java
file=ViewDAO.java
	</#if>
<#-- Caso contrario copiar tudo -->
<#else> 
file=ApplicationDAO.java
file=ApplicationUserDAO.java
file=AuditLogDAO.java
file=DeviceDAO.java
file=LoginDAO.java
file=RoleDAO.java
file=RoleSecurableDAO.java
file=SecurableDAO.java
file=UserDAO.java
file=UserRoleDAO.java
file=UserSecurableDAO.java
file=ViewDAO.java
</#if>
