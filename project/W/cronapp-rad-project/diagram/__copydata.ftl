<#-- Verificar se existem parametros -->
<#if (authentication??) >
    <#if (authentication?lower_case) != "nenhuma">
file=app.umlcd
    <#else>
file=app.umlcd.ftl
    </#if>
<#-- Caso contrario copiar tudo -->
<#else>
file=app.umlcd
</#if>