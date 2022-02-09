<div class="component-holder ng-binding ng-scope <#if !(menuPosition??) || menuPosition == "Horizontal">crn-navigator-horizontal<#else>crn-navigator-vertical</#if>" data-component="crn-navbar" id="main-nav-bar" tabindex="-1">
    <nav class="navbar navbar-default">
        <ul aria-label="{{'DirectAccess' | translate}}" class="main-access" tabindex="-1">
            <li><a crn-anchor="main-view" href="javascript:void(0);" class="main-nav-link" alt="{{'MainContent' | translate}}">{{'MainContent' | translate}}</a> </li>
            <li><a crn-anchor="main-nav-bar" href="javascript:void(0);" class="main-nav-link" alt="{{'MainMenu' | translate}}">{{'MainMenu' | translate}}</a> </li>
        </ul>
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar, #navbar2" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                <a class="component-holder ng-binding ng-scope navbar-brand" data-component="crn-image" ng-click="cronapi.screen.changeView('#/home', [])"> <img alt="{{'Home.view.Home' | translate}}" src="node_modules/cronapp-framework-js/dist/img/logo.svg" style="width:101px; margin-top:-4px" id="crn-navbar-logo" data-component="crn-image"> </a>
            </div>
            <div id="navbar" class="navbar-collapse collapse float-left-desktop">
                <ul class="nav navbar-nav" style="float:none">
    <#if (customMenu??) >
        <#list customMenu?keys as key>
            <#assign items = customMenu[key]>
      <li class="dropdown component-holder" data-component="crn-menu-item"> <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" aria-label="${key}"> <i class=""></i> <span>${key}</span> <span class="caret"></span> </a>
      <#if (items??) >
            <ul class="dropdown-menu">
        <#list items as item>
            <li><a href="#/home/logged/${item.name?lower_case}" class="component-holder" data-component="crn-anchor" >${item.realName}</a></li>
        </#list>
            </ul>
      </#if>
      </li>
        </#list>
    </#if>
                    <li>
                        <cron-dynamic-menu class="component-holder" data-component="crn-dynamic-menu" options="{&quot;subMenuOptions&quot;:[{&quot;id&quot;:&quot;1h85bvnhg7511&quot;,&quot;name&quot;:&quot;Home&quot;,&quot;title&quot;:&quot;{{'Home.view.Home' | translate}}&quot;,&quot;iconClass&quot;:&quot;fa fa-home&quot;,&quot;action&quot;:&quot;cronapi.screen.changeView('#/home', [])&quot;,&quot;level&quot;:1,&quot;menuItems&quot;:[]}]}">Dynamic Menu</cron-dynamic-menu>
                    </li>

                </ul>
            </div>
        </div>
    </nav>
</div>
<div ui-view="" id="main-view" tabindex="-1" role="main" class="container-fluid main-view <#if !(menuPosition??) || menuPosition == "Horizontal">main-view-horizontal<#else>main-view-vertical</#if>">
    <h1 class="component-holder text-left h3 title">{{'Home.view.Home' | translate}}</h1>
</div>