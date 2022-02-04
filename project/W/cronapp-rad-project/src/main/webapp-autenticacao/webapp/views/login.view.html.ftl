<style title="local">
    #crn-botao-cadastre {
        margin-top: -4px;
        margin-bottom: 20px;
        color: rgb(138, 138, 138);
    }
</style>

<div class="bg">
    <div class="container-full">
        <div class="container-fluid" id="container-fluid">
            <div class="row component-holder siginPanel" id="component-holder">
                <div class="login-view col-sm-7 col-xs-10 col-lg-4 col-md-4">

                    <form class="form-validation ng-pristine ng-valid ng-valid-required" autocomplete="off" name="form" ng-submit="login()" role="form">

                        <input type="hidden" name="csrf_token" value="CIwNZNlR4XbisJF39I8yWnWX9wX4WFoz" class="col-md-12">
                        <div class="text-danger wrapper text-center col-md-12" ng-show="authError"></div>
                        <div class="component-holder ng-binding ng-scope col-xs-12 col-md-12" data-component="crn-image" id="crn-image-login">
                            <h1>
                                <img alt="Login" src="node_modules/cronapp-framework-js/img/cronapp-logo-login.png"
                                     class="" style="display:block; width:60%; height:auto; margin-left:auto; margin-right:auto;"
                                     xattr-position="margin-left:auto; margin-right:auto;" data-component="crn-image">
                            </h1>
                        </div>

                        <div class="col-xs-10 col-md-8 col-md-push-2 col-xs-push-1" data-container="true">
                            <ul class="list-inline center-block text-center">
                            </ul>
                        </div>

                        <#if authentication?lower_case != "sso" && authentication?lower_case != "saml">

                            <div class="component-holder ng-binding ng-scope col-xs-12 col-md-12" data-component="crn-textinput" id="crn-textinput-loginusername">
                                <div class="form-group">
                                    <label for="input-login-username">{{'Login.view.Username' | translate}}</label>
                                    <input type="text" mask="" mask-placeholder="" ng-required="false"
                                           ng-model="username.value" class="form-control k-textbox" id="input-login-username"
                                           placeholder="" autocomplete="username" autocorrect="off" autocapitalize="off">
                                </div>
                            </div>

                            <div class="component-holder ng-binding ng-scope col-xs-12 col-md-12" data-component="crn-textinput" id="crn-textinput-loginpassword" style="margin-bottom: 1px;">
                                <div class="form-group">
                                    <label for="input-login-password">{{'Login.view.Password' | translate}}</label>
                                    <input type="password" mask="" mask-placeholder="" ng-required="false"
                                           ng-model="password.value" class="form-control k-textbox" id="input-login-password"
                                           autocomplete="current-password" placeholder="">
                                </div>
                            </div>

                        </#if>

                        <a ng-click="cronapi.screen.showModal('forgotPasswordModal')" class="reset-password cron-link component-holder col-xs-12  col-md-12" target="_self"
                           data-replace="true" data-component="crn-anchor" id="crn-botao-cadastre">{{'ResetPassword' | translate}}
                        </a>

                        <div class="component-holder ng-binding ng-scope col-xs-12 col-md-12"
                             data-component="crn-enterprise-checkbox" id="crn-enterprise-checkbox-login">
                        </div>

                        <div class="component-holder ng-binding ng-scope col-md-12" data-component="crn-button">
                            <div class="messages">
                                <div ng-show="message.error" class="help-block" data-container="true">
                                    {{message.error}}
                                </div>
                            </div>
                            <#if (authentication?lower_case == "sso" || authentication?lower_case == "saml") && (enterprise)!false>
                                <a role="button" aria-label="{{'Login.view.Login' | translate}}" href="#" class="btn btn-default cron-link col-md-12 col-xs-12 k-button btn-primary" target="_self" data-replace="true" data-component="crn-anchor" ng-click="redirectToLogin()">
                                    <span>{{"Login.view.Login" | translate}} </span>
                                </a>
                            <#else>
                                <button role="button" aria-label="{{'Login.view.Login' | translate}}"
                                    class="btn btn-default col-md-12 col-xs-12 k-button btn-primary" type="submit"
                                    ng-disabled="form.$invalid || vm.dataLoading" ng-click="" xattr-size=""
                                    xattr-fullsize="" xattr-theme="btn-default" xattr-disabled=""
                                    data-component="crn-button"><i class="" icon-theme="color-white"></i><span>{{"Login.view.Login" | translate}} </span>
                                </button>
                            </#if>
                            <a href="#/public/signup" class="sign-up cron-link component-holder col-md-12 col-xs-12"
                               target="_self" data-replace="true" data-component="crn-anchor" id="crn-anchor-login-signup">
                                {{'Signup.view.Signup' | translate}}
                            </a>
                        </div>

                    </form>

                    <#if mutual?? && mutual?lower_case == "sim" && (enterprise)!false>
                        <div class="component-holder ng-binding ng-scope col-xs-12 col-md-12" style="margin-top:5px" data-component="crn-button" id="crn-button-716293">
                            <button class="btn btn-default k-button btn-block" ng-click="cronapi.client('js.blockly.MutualAuth.login').run()" xattr-fullsize="btn-block" xattr-theme="btn-default" xattr-disabled="">
                                <span>{{'CertificateLogin' | translate}}</span>
                            </button>
                        </div>
                    </#if>
                    <#if social?? && social?lower_case == "sim">
                        <div class="component-holder ng-binding ng-scope col-xs-12 col-md-12" data-component="crn-social-login" id="crn-social-login-01">
                           <ul class="list-inline center-block text-center">
                               <li data-container="true">
                                   <form action="/signin/facebook" method="POST" id="facebook">
                                       <input type="hidden" name="csrf_token" value="CIwNZNlR4XbisJF39I8yWnWX9wX4WFoz" />
                                       <input type="hidden" name="scope" value="email,public_profile">
                                       <a title="Facebook" role="button" onclick="document.getElementById('facebook').submit()">
                                           <div class="component-holder ng-scope" data-component="crn-icon" id="crn-icon-01">
                                               <i class="fa fa-2x fa-facebook"></i>
                                           </div>
                                       </a>
                                   </form>
                               </li>
                               <li data-container="true">
                                   <form action="/signin/github" method="POST" id="github">
                                       <input type="hidden" name="csrf_token" value="CIwNZNlR4XbisJF39I8yWnWX9wX4WFoz" />
                                       <input type="hidden" name="scope" value="email,public_profile">
                                       <a title="GitHub" role="button" onclick="document.getElementById('github').submit()">
                                           <div class="component-holder ng-scope" data-component="crn-icon" id="crn-icon-01">
                                               <i class="fa fa-2x fa-github-alt"></i>
                                           </div>
                                       </a>
                                   </form>
                               </li>
                               <li data-container="true">
                                   <form action="/signin/linkedin" method="POST" id="linkedin">
                                       <input type="hidden" name="csrf_token" value="CIwNZNlR4XbisJF39I8yWnWX9wX4WFoz" />
                                       <input type="hidden" name="scope" value="r_emailaddress">
                                       <a title="LinkedIn" role="button" onclick="document.getElementById('linkedin').submit()">
                                           <div class="component-holder ng-scope" data-component="crn-icon" id="crn-icon-01">
                                               <i class="fa fa-2x fa-linkedin-square"></i>
                                           </div>
                                       </a>
                                   </form>
                               </li>
                               <li data-container="true">
                                   <form action="/signin/google" method="POST" id="google">
                                       <input type="hidden" name="csrf_token" value="CIwNZNlR4XbisJF39I8yWnWX9wX4WFoz" />
                                       <input type="hidden" name="scope" value="email">
                                       <a title="Google" role="button" onclick="document.getElementById('google').submit()">
                                           <div class="component-holder ng-scope" data-component="crn-icon" id="crn-icon-01">
                                               <i class="fa fa-2x fa-google"></i>
                                           </div>
                                       </a>
                                   </form>
                               </li>
                               <li data-container="true">
                                   <form action="/signin/cronapp" method="POST" id="cronapp">
                                       <input type="hidden" name="csrf_token" value="CIwNZNlR4XbisJF39I8yWnWX9wX4WFoz" />
                                       <input type="hidden" name="scope" value="email">
                                       <a title="CronApp" role="button" onclick="document.getElementById('cronapp').submit()">
                                           <div class="component-holder ng-scope" data-component="crn-icon" id="crn-icon-01">
                                               <i class="fa fa-2x fa-cloud"></i>
                                           </div>
                                       </a>
                                   </form>
                               </li>
                           </ul>
                        </div>
                    </#if>

                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="forgotPasswordModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="{{'Home.view.Close' | translate}}">
                    <span aria-hidden="true">
                        ×
                    </span>
                </button>
                <h2 class="modal-title">{{'ForgotPassword' | translate}}</h2>
            </div>
            <div class="modal-body">
                <form class="form-validation" autocomplete="off" name="forgotPasswordForm" role="form">
                    <input type="hidden" name="csrf_token" value="CIwNZNlR4XbisJF39I8yWnWX9wX4WFoz">
                    <div class="text-danger wrapper text-center" ng-show="authError">
                    </div>
                    <div class="list-group list-group-sm">
                        <div class="">
                            <label for="forgotPasswordEmail">
                                {{'ForgotPasswordEmail' | translate}}
                            </label>
                            <input type="email" class="form-control k-textbox" id="forgotPasswordEmail"
                                   aria-label="{{'ForgotPasswordEmail' | translate}}" ng-required="true"
                                   ng-model="forgotPasswordEmail.value"/>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <div class="modalPassword">
                    <div class="component-holder ng-scope  col-md-2" data-component="crn-button" id="crn-button-save">
                        <button class="btn k-button crnCSS-default btn-primary" type="submit"
                            ng-click="cronapi.client('js.blockly.UserControl.resetPassword').names('7afdf898').run(forgotPasswordEmail.value)" xattr-fullsize=""
                            aria-label="{{'Save' | translate}}" xattr-theme="btn-primary" xattr-disabled="" ng-disabled="form.$invalid || vm.dataLoading">
                            <i class="glyphicon glyphicon-ok"></i>
                            <span>{{'Save' | translate}}</span>
                        </button>
                    </div>
                    <div class="component-holder ng-scope  col-md-2" data-component="crn-button" id="crn-button-close">
                        <button class="btn k-button crnCSS-default btn-danger" type="button" data-dismiss="modal"
                            xattr-fullsize="" aria-label="{{'Home.view.Close' | translate}}" xattr-theme="btn-danger"
                            xattr-disabled="">
                            <i class="glyphicon glyphicon-remove"></i>
                            <span>{{'Home.view.Close' | translate}}</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div ng-include="'./views/public/privacy/cookies.view.html'"></div>