<div class="component-holder ng-binding ng-scope <#if !(menuPosition??) || menuPosition == 'horizontal'>crn-navigator-horizontal<#else>crn-navigator-vertical </#if>" data-component="crn-navbar" id="main-nav-bar" tabindex="-1">
    <nav class="navbar navbar-default">
        <ul aria-label="{{'DirectAccess' | translate}}" class="main-access" tabindex="-1">
            <li>
                <a crn-anchor="main-view" href="javascript:void(0);" class="main-nav-link" alt="{{'MainContent' | translate}}">{{'MainContent' | translate}}</a>
            </li>
            <li>
                <a crn-anchor="main-nav-bar" href="javascript:void(0);" class="main-nav-link" alt="{{'MainMenu' | translate}}">{{'MainMenu' | translate}}</a>
            </li>
        </ul>
        <div class="container-fluid">
            <div class="navbar-header">

                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar, #navbar2" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>


                <a class="component-holder ng-binding ng-scope navbar-brand" data-component="crn-image" ng-click="cronapi.screen.changeView('#/home', [])">
                    <img alt="{{'Home.view.Home' | translate}}" src="node_modules/cronapp-framework-js/dist/img/logo.svg" style="width:101px; margin-top:-4px" id="crn-navbar-logo" data-component="crn-image">
                </a>

                <#if !(menuPosition??) || menuPosition == "Vertical">
                    <div>
                        <a href="" class="nav-button buttons-password " title="{{'Home.view.ChangePassword' | translate}}" alt="{{'Home.view.ChangePassword' | translate}}" ng-click="cronapi.screen.showModal('modalPassword')" data-component="crn-anchor">
                            <div data-component="crn-icon" class="component-holder" id="crn-icon-password">
                                <i class="glyphicon glyphicon-lock" icon-size="" icon-theme=""></i>
                            </div>
                        </a>

                        <a ng-click="logout()" href="" class="nav-button buttons-logout" title="{{'Home.view.Logout' | translate}}" alt="{{'Home.view.Logout' | translate}}" data-component="crn-anchor">
                            <div data-component="crn-icon" class="component-holder" id="crn-icon-logout">
                                <i class="glyphicon glyphicon-log-out" icon-size="" icon-theme=""></i>
                            </div>
                        </a>
                    </div>
                </#if>
            </div>

            <#if menuPosition == 'Vertical'>
                <div id="navbar-profile">
                    <img class="user-avatar nav-user-image" alt="Icon user"
                        ng-src="{{ session.user.picture || 'node_modules/cronapp-framework-js/dist/img/img-user.svg'}}"
                        data-component="crn-image-menu" id="crn-image-menu">
                    <span>{{session.user.name}}</span>
                </div>
            </#if>
            
            <div id="navbar" class="navbar-collapse collapse float-left-desktop">
                <ul class="nav navbar-nav" style="float:none">
                    <#if (customMenu??)>
                        <#list customMenu ? keys as key>
                            <#assign items = customMenu[key]>
                                <li class="dropdown component-holder" data-component="crn-menu-item">
                                    <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" aria-label="${key}">
                                        <i class=""></i>
                                        <span>${key}</span>
                                        <span class="caret"></span>
                                    </a>
                                    <#if (items??)>
                                        <ul class="dropdown-menu">
                                            <#list items as item>
                                                <li>
                                                    <a href="#/home/logged/${item.name?lower_case}" class="component-holder" data-component="crn-anchor">${item.realName}</a>
                                                </li>
                                            </#list>
                                        </ul>
                                    </#if>
                                </li>
                            </#list>
                        </#if>
                        <li>
                            <div class="component-holder ng-scope" data-component="crn-dynamic-menu" id="crn-dynamic-menu-home">
                                <cron-dynamic-menu options="{&quot;escope&quot;:&quot;WEB&quot;,&quot;subMenuOptions&quot;:[{&quot;id&quot;:&quot;1h85bvnhg7511&quot;,&quot;name&quot;:&quot;Home&quot;,&quot;title&quot;:&quot;{{'Home.view.Home' | translate}}&quot;,&quot;iconClass&quot;:&quot;fa fa-home&quot;,&quot;action&quot;:&quot;cronapi.screen.changeView('#/home', [])&quot;,&quot;level&quot;:1,&quot;textPosition&quot;:&quot;left&quot;,&quot;imagePosition&quot;:&quot;left&quot;,&quot;contentTheme&quot;:&quot;light&quot;,&quot;iconTheme&quot;:&quot;light&quot;,&quot;menuItems&quot;:[]},{&quot;id&quot;:&quot;1iynbo1wq8twj&quot;,&quot;name&quot;:&quot;Admin&quot;,&quot;title&quot;:&quot;{{'Home.view.Admin' | translate}}&quot;,&quot;iconClass&quot;:&quot;fa fa-user&quot;,&quot;security&quot;:&quot;visible : Administrators, enabled : Administrators&quot;,&quot;action&quot;:&quot;&quot;,&quot;level&quot;:1,&quot;textPosition&quot;:&quot;left&quot;,&quot;imagePosition&quot;:&quot;left&quot;,&quot;contentTheme&quot;:&quot;light&quot;,&quot;iconTheme&quot;:&quot;light&quot;,&quot;menuItems&quot;:[{&quot;id&quot;:&quot;t4fkwdjzlcmu&quot;,&quot;name&quot;:&quot;Users&quot;,&quot;title&quot;:&quot;{{'Home.view.Users' | translate}}&quot;,&quot;iconClass&quot;:&quot;fa fa-user&quot;,&quot;security&quot;:&quot;visible : Administrators, enabled : Administrators&quot;,&quot;action&quot;:&quot;cronapi.screen.changeView('#/home/admin/user', [])&quot;,&quot;level&quot;:2,&quot;textPosition&quot;:&quot;left&quot;,&quot;imagePosition&quot;:&quot;left&quot;,&quot;contentTheme&quot;:&quot;light&quot;,&quot;iconTheme&quot;:&quot;light&quot;,&quot;menuItems&quot;:[]},{&quot;id&quot;:&quot;s4xeikriw2et&quot;,&quot;name&quot;:&quot;AuditLog&quot;,&quot;title&quot;:&quot;{{'AuditLog' | translate}}&quot;,&quot;iconClass&quot;:&quot;fa fa-list-ol&quot;,&quot;security&quot;:&quot;visible : Administrators, enabled : Administrators&quot;,&quot;action&quot;:&quot;cronapi.screen.changeView('#/home/admin/auditlog.search', [])&quot;,&quot;level&quot;:2,&quot;textPosition&quot;:&quot;left&quot;,&quot;imagePosition&quot;:&quot;left&quot;,&quot;contentTheme&quot;:&quot;light&quot;,&quot;iconTheme&quot;:&quot;light&quot;,&quot;menuItems&quot;:[]},{&quot;id&quot;:&quot;1jeqhtersh46d&quot;,&quot;name&quot;:&quot;Roles&quot;,&quot;title&quot;:&quot;{{'Home.view.Roles' | translate}}&quot;,&quot;iconClass&quot;:&quot;fa fa-users&quot;,&quot;security&quot;:&quot;visible : Administrators, enabled : Administrators&quot;,&quot;action&quot;:&quot;cronapi.screen.changeView('#/home/admin/role', [])&quot;,&quot;level&quot;:2,&quot;textPosition&quot;:&quot;left&quot;,&quot;imagePosition&quot;:&quot;left&quot;,&quot;contentTheme&quot;:&quot;light&quot;,&quot;iconTheme&quot;:&quot;light&quot;,&quot;menuItems&quot;:[]}]}]}" class="">Dynamic Menu</cron-dynamic-menu>
                            </div>
                        </li>

                    </ul>
                </div>

                <#if !(menuPosition??) || menuPosition=="Horizontal">
                    <div id="navbar-3" class="navbar-collapse collapse">
                        <div class="nav navbar-nav navbar-right" style="margin-right: 0;">

                            <div class="component-holder" data-component="crn-menu-item" style="display: flex; align-items: center;">

                                <a href="" class="nav-button" role="button" title="{{'Home.view.Perfil' | translate}}" alt="{{'Home.view.Perfil' | translate}}" aria-haspopup="true" aria-expanded="false">

                                        <img class="user-avatar nav-user-image" alt="Icon user" ng-src="{{ session.user.picture || 'node_modules/cronapp-framework-js/dist/img/img-user.svg'}}" data-component="crn-image-menu" id="crn-image-menu">
                                  
                                    <span>{{"Home.view.Perfil" | translate}}</span>
                                </a>

                                <a href="" class="nav-button buttons-password " title="{{'Home.view.ChangePassword' | translate}}" alt="{{'Home.view.ChangePassword' | translate}}" ng-click="cronapi.screen.showModal('modalPassword')" data-component="crn-anchor">
                                    <div data-component="crn-icon" class="component-holder" id="crn-icon-password">
                                        <i class="glyphicon glyphicon-lock" icon-size="" icon-theme=""></i>
                                    </div>
                                </a>

                                <a ng-click="logout()" href="" class="nav-button buttons-logout" title="{{'Home.view.Logout' | translate}}" alt="{{'Home.view.Logout' | translate}}" data-component="crn-anchor">
                                    <div data-component="crn-icon" class="component-holder" id="crn-icon-logout">
                                        <i class="glyphicon glyphicon-log-out" icon-size="" icon-theme=""></i>
                                    </div>
                                </a>

                            </div>
                        </div>
                    </div>
                </#if>
            </nav>
        </div>


        <div ui-view="" id="main-view" tabindex="-1" role="main" class="container-fluid main-view <#if !(menuPosition??) || menuPosition == 'horizontal'>main-view-horizontal<#else>main-view-vertical </#if>">
            <h1 class="component-holder text-left h3 title">{{'Home.view.Home' | translate}}</h1>
        </div>
        <div class="modal fade" id="modalPassword">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="{{'Home.view.Close' | translate}}">
                            <span aria-hidden="true">×</span>
                        </button>
                        <h2 class="modal-title">{{"Home.view.ChangePassword" | translate}}</h2>
                    </div>
                    <div class="modal-body">
                        <form class="form-validation" autocomplete="off" name="form" role="form">
                            <input type="hidden" name="csrf_token" value="CIwNZNlR4XbisJF39I8yWnWX9wX4WFoz"/>
                            <div class="text-danger wrapper text-center" ng-show="authError"></div>
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
                        <button class="btn btn-primary btn-fab k-button" type="submit" ng-click="changePassword()" ng-disabled="form.$invalid || vm.dataLoading" aria-label="{{'Save' | translate}}">
                            <span class="k-icon k-i-check"></span>
                        </button>
                        <button class="btn btn-default btn-fab k-button" type="button" data-dismiss="modal" aria-label="{{'Home.view.Close' | translate}}">
                            <span class="k-icon k-i-close"></span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
