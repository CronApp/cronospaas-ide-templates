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
<div class="modal fade" id="modalPassword">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="{{'Home.view.Close' | translate}}"><span aria-hidden="true">×</span></button>
                <h2 class="modal-title">{{"Home.view.ChangePassword" | translate}}</h2>
            </div>
            <div class="modal-body">
                <form class="form-validation" autocomplete="off" name="form" role="form">
                    <input type="hidden" name="csrf_token" value="CIwNZNlR4XbisJF39I8yWnWX9wX4WFoz" />
                    <div class="text-danger wrapper text-center" ng-show="authError">
                    </div>
                    <div class="list-group list-group-sm">
                        <div class="list-group-item">
                            <label for="oldPassword">{{"Home.view.Old Password" | translate}}</label>
                            <input type="password" class="form-control k-textbox" id="oldPassword" placeholder="{{'Home.view.Old Password' | translate}}" aria-label="{{'Home.view.Old Password' | translate}}" ng-required="true">
                        </div>
                        <div class="list-group-item">
                            <label for="newPassword">{{"Home.view.New Password" | translate}}</label>
                            <input type="password" class="form-control k-textbox" id="newPassword" placeholder="{{'Home.view.New Password' | translate}}" aria-label="{{'Home.view.New Password' | translate}}" ng-required="true">
                        </div>
                        <div class="list-group-item">
                            <label for="newPasswordConfirmation">{{"Home.view.Confirmation" | translate}}</label>
                            <input type="password" class="form-control k-textbox" id="newPasswordConfirmation" placeholder="{{'Home.view.Confirmation' | translate}}" aria-label="{{'Home.view.Confirmation' | translate}}" ng-required="true">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button class="btn btn-primary btn-fab k-button" type="submit" ng-click="changePassword()" ng-disabled="form.$invalid || vm.dataLoading" aria-label="{{'Save' | translate}}"><span class="k-icon k-i-check"></span></button>
                <button class="btn btn-default btn-fab k-button" type="button" data-dismiss="modal" aria-label="{{'Home.view.Close' | translate}}"><span class="k-icon k-i-close"></span></button>
            </div>
        </div>
    </div>
</div>