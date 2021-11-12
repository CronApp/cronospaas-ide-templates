<#if !(menuPosition??) || menuPosition == "Horizontal">
<div class="jumbotron jumbotron-fluid main-title">
    <h2 class="component-holder text-left" xattr-position="text-left" data-component="crn-subtitle" id="crn-subtitle-814474">${appname}</h2>
</div>
</#if>
<div class="component-holder ng-binding ng-scope <#if !(menuPosition??) || menuPosition == "Horizontal">crn-navigator-horizontal<#else>crn-navigator-vertical</#if>" data-component="crn-navbar" id="crn-navbar-986427">
  <nav class="navbar navbar-default">
    <div class="container-fluid">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
        <a class="component-holder ng-binding ng-scope navbar-brand" data-component="crn-image" href="#/home"> <img src="node_modules/cronapp-framework-js/dist/img/logo.svg" style="width:101px; margin-top:-4px" id="crn-navbar-logo" data-component="crn-image"> </a>
      </div>
      <div id="navbar" class="navbar-collapse collapse">
        <ul class="nav navbar-nav" style="float:none">
          <div class="component-holder ng-scope col-md-10" data-component="crn-dynamic-menu" id="crn-dynamic-menu">
            <cron-dynamic-menu options="{&quot;subMenuOptions&quot;:[{&quot;id&quot;:&quot;1iut7rlrhfnzs&quot;,&quot;name&quot;:&quot;Home&quot;,&quot;title&quot;:&quot;{{\&quot;Home.view.Home\&quot; | translate}}&quot;,&quot;action&quot;:&quot;cronapi.screen.changeView('#/public/home', [])&quot;,&quot;level&quot;:1,&quot;textPosition&quot;:&quot;left&quot;,&quot;imagePosition&quot;:&quot;left&quot;,&quot;contentTheme&quot;:&quot;light&quot;,&quot;iconTheme&quot;:&quot;light&quot;,&quot;menuItems&quot;:[]}]}" data-component="crn-dynamic-menu" class="component-holder" id="crn-dynamic-menu-226965"> Dynamic Menu
          </cron-dynamic-menu>
        </div>
        </ul>
      </div>
    </div>
  </nav>
</div>
<div ui-view="" class="container-fluid main-view <#if !(menuPosition??) || menuPosition == "Horizontal">main-view-horizontal<#else>main-view-vertical</#if>">
</div>