<#-- Verificar se existem parametros -->
<#if (authentication??) >
	<#if (authentication?lower_case) == "nenhuma">
file=AppConfiguration.java.ftl
path=/entity
path=/dao
	<#else>
path=/business
path=/dao
path=/entity
path=/rest
path=/test
file=populate.json.ftl
file=AppConfiguration.java.ftl
	</#if>
<#-- Caso contrario copiar tudo -->
<#else> 
path=/business
path=/dao
path=/entity
path=/rest
path=/test
file=populate.json.ftl
file=AppConfiguration.java.ftl
</#if>
