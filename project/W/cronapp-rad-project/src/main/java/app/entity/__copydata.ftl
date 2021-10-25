<#-- Verificar se existem parametros -->
<#if (authentication??) >
	<#if (authentication?lower_case) == "nenhuma">
file=AuditLog.java
file=Device.java
	<#else>
file=Application.java
file=ApplicationUser.java
file=AuditLog.java
file=Device.java
file=Login.java
file=Role.java
file=RoleSecurable.java
file=Securable.java
file=User.java
file=UserRole.java
file=UserSecurable.java
file=View.java
	</#if>
<#-- Caso contrario copiar tudo -->
<#else> 
file=Application.java
file=ApplicationUser.java
file=AuditLog.java
file=Device.java
file=Login.java
file=Role.java
file=RoleSecurable.java
file=Securable.java
file=User.java
file=UserRole.java
file=UserSecurable.java
file=View.java
</#if>
