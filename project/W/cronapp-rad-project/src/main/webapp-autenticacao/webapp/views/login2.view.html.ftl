<div class="bg-login bg-login2" id="bg-login2">
    <div id="container-first">
        <div class="container-full" id="container-full">
            <div class="container-fluid" id="container-fluid">
                <div class="row component-holder login-panel-1" id="component-holder">
                    <div id="responsive-component" class="col-md-9 col-lg-7 col-sm-10  col-xs-11">

                        <form class="form-validation ng-pristine ng-valid ng-valid-required" autocomplete="off"
                            name="form" ng-submit="login()" role="form">

                            <input type="hidden" name="csrf_token" value="CIwNZNlR4XbisJF39I8yWnWX9wX4WFoz" class="col-md-12">

                            <img alt="Login" src="node_modules/cronapp-framework-js/img/cronapp-logo-login.png" class="crn-image img-login component-holder" style="object-fit: contain" object-fit="object-fit: contain;" xattr-position="margin-left:auto; margin-right:auto;" data-component="crn-image" id="crn-image-login">


                            <h1 class="title component-holder col-xs-12 col-md-12 h3 text-left" xattr-position="text-left" xattr-type="h3" data-component="crn-text-component" id="crn-text-component-login">{{'Signup.view.Acess' | translate}}</h1>

                            <div class="login-signup">
                                <p data-component="crn-simple-text" class="component-holder col-xs-12 col-md-12" id="crn-simple-text-login">{{'Signup.view.NotHaveAccount' | translate}}</p>
                                <a href="#/public/signup" class="sign-up cron-link text-center component-holder col-md-12 col-xs-12" target="_self" data-replace="true" data-component="crn-anchor" id="crn-botao-signup">
                                    {{'Signup.view.Signup' | translate}}
                                </a>
                            </div>


                            <#if authentication?lower_case !="sso" && authentication?lower_case !="saml">

                                <div class="component-holder ng-binding ng-scope col-xs-12 col-md-12" data-component="crn-textinput" id="crn-textinput-loginusername">
                                    <div class="form-group">
                                        <label for="input-login-username">{{'Login.view.Username' | translate}}</label>
                                        <input type="text" mask="" mask-placeholder="" ng-required="false"  ng-model="username.value" class="form-control k-textbox" id="input-login-username" placeholder="" autocomplete="username" autocorrect="off" autocapitalize="off">
                                    </div>
                                </div>

                                <div class="component-holder ng-binding ng-scope col-xs-12 col-md-12"
                                    data-component="crn-textinput" id="crn-textinput-loginpassword"
                                    style="margin-bottom: 1px;">
                                    <div class="form-group">
                                        <label for="input-login-password">{{'Login.view.Password' | translate}}</label>
                                        <input type="password" mask="" mask-placeholder="" ng-required="false" ng-model="password.value" class="form-control k-textbox" id="input-login-password" autocomplete="current-password" placeholder="">
                                    </div>

                            </#if>


                            <a ng-click="cronapi.screen.showModal('forgotPasswordModal')"
                                class="reset-password cron-link text-right component-holder col-xs-12  col-md-12" target="_self" data-replace="true" data-component="crn-anchor" id="crn-botao-cadastre">{{'ResetPassword' | translate}}
                            </a>


                            <#if (authentication?lower_case=="sso" || authentication?lower_case=="saml" ) && (enterprise)!false>
                                <a role="button" aria-label="{{'Login.view.Login' | translate}}" href="#" class="btn k-button btn-login btn-block" id="crn-button-login-authentication" target="_self" data-replace="true" data-component="crn-anchor"
                                    ng-click="redirectToLogin()">
                                    <span>{{"Login.view.Login" | translate}} </span>
                                </a>
                                <#else>
                                    <div class="component-holder ng-scope" data-component="crn-button"
                                        id="crn-button-login">
                                        <button role="button" aria-label="{{'Login.view.Login' | translate}}" class="btn k-button btn-login btn-block" type="submit" ng-disabled="form.$invalid || vm.dataLoading" ng-click="" xattr-size="" xattr-fullsize="btn-block" xattr-theme="" xattr-disabled="" data-component="crn-button"><i class="" icon-theme="color-white"></i><span>{{"Login.view.Login" | translate}} </span>
                                        </button>
                                    </div>
                            </#if>


                            <#if mutual?? && mutual?lower_case=="sim" && (enterprise)!false>
                                <div class="component-holder ng-scope" data-component="crn-button" style="margin-top:5px"
                                    id="crn-button-mutual">
                                    <button aria-label="{{'Login.view.Login' | translate}}" class="btn k-button btn-login-mutual btn-block" type="submit" ng-disabled="form.$invalid || vm.dataLoading" ng-click="cronapi.client('js.blockly.MutualAuth.login').run()" xattr-size="" xattr-fullsize="btn-block" xattr-theme="" xattr-disabled="" data-component="crn-button"><i class="" icon-theme="color-white"></i><span>{{"CertificateLogin" |  translate}} </span>
                                    </button>
                                </div>
                            </#if>

                        </form>
                    <div>

                    <#if social?? && social?lower_case=="sim">
                        <div id="social-login">
                            <p data-component="crn-simple-text" class="component-holder col-xs-12 col-md-12"
                                id="crn-simple-text-login-social">Ou continue com</p>

                            <div class="component-holder ng-binding ng-scope" data-component="crn-social-login"
                                id="crn-social-login-01">
                                <ul class="list-inline text-left">
                                    <li data-container="true">
                                        <form action="/signin/facebook" method="POST" id="facebook">
                                            <input type="hidden" name="csrf_token" value="CIwNZNlR4XbisJF39I8yWnWX9wX4WFoz" />
                                            <input type="hidden" name="scope" value="email,public_profile">
                                            <a title="Facebook" role="button" onclick="document.getElementById('facebook').submit()">
                                                <i class="fa fa-2x fa-facebook"></i>
                                            </a>
                                        </form>
                                    </li>
                                    <li data-container="true">
                                        <form action="/signin/github" method="POST" id="github">
                                            <input type="hidden" name="csrf_token" value="CIwNZNlR4XbisJF39I8yWnWX9wX4WFoz" />
                                            <input type="hidden" name="scope" value="email,public_profile">
                                            <a title="GitHub" role="button" onclick="document.getElementById('github').submit()">
                                                <i class="fa fa-2x fa-github-alt"></i>
                                            </a>
                                        </form>
                                    </li>
                                    <li data-container="true">
                                        <form action="/signin/linkedin" method="POST" id="linkedin">
                                            <input type="hidden" name="csrf_token" value="CIwNZNlR4XbisJF39I8yWnWX9wX4WFoz" />
                                            <input type="hidden" name="scope" value="r_emailaddress">
                                            <a title="LinkedIn" role="button" onclick="document.getElementById('linkedin').submit()">
                                                <i class="fa fa-2x fa-linkedin-square"></i>
                                            </a>
                                        </form>
                                    </li>
                                    <li data-container="true">
                                        <form action="/signin/google" method="POST" id="google">
                                            <input type="hidden" name="csrf_token" value="CIwNZNlR4XbisJF39I8yWnWX9wX4WFoz" />
                                            <input type="hidden" name="scope" value="email">
                                            <a title="Google" role="button" onclick="document.getElementById('google').submit()">
                                                <i class="fa fa-2x fa-google"></i>
                                            </a>
                                        </form>
                                    </li>
                                    <li data-container="true">
                                        <form action="/signin/cronapp" method="POST" id="cronapp">
                                            <input type="hidden" name="csrf_token" value="CIwNZNlR4XbisJF39I8yWnWX9wX4WFoz" />
                                            <input type="hidden" name="scope" value="email">
                                            <a title="CronApp" role="button" onclick="document.getElementById('cronapp').submit()">
                                                <i class="fa fa-2x fa-cloud"></i>
                                            </a>
                                        </form>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </#if>
                </div>
            </div>
        </div>
    </div>

    <div id="container-second">
        <div class="container-full" id="container-full">
            <div class="container-fluid" id="container-fluid">
                <div class="row component-holder login-text" id="component-holder">
                    <div id="responsive-component" class="col-md-9 col-lg-7 col-sm-10  col-xs-11">
                        <div>
                            <h1 class="title component-holder text-left h1" xattr-position="text-left" xattr-type="h1" data-component="crn-text-component">{{'WelcomeToCRONAPP' | translate}}</h1>
                            <p data-component="crn-simple-text" class="component-holder"> {{'WelcomeToCRONAPP-description' | translate}}</p>
                        </div>
                    </div>
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
                            <input type="email" class="form-control k-textbox" id="forgotPasswordEmail" aria-label="{{'ForgotPasswordEmail' | translate}}" ng-required="true" ng-model="forgotPasswordEmail.value" />
                        </div>
                    </div>
                </form>

            <div class="modal-footer">
                <div class="modalPassword">
                    <div class="component-holder ng-scope  col-md-2" data-component="crn-button" id="crn-button-save">
                        <button class="btn k-button crnCSS-default btn-primary" type="submit" ng-click="cronapi.client('js.blockly.UserControl.resetPassword').names('7afdf898').run(forgotPasswordEmail.value)" xattr-fullsize="" aria-label="{{'Save' | translate}}" xattr-theme="btn-primary" xattr-disabled="" ng-disabled="form.$invalid || vm.dataLoading">
                            <i class="glyphicon glyphicon-ok"></i>
                            <span>{{'Save' | translate}}</span>
                        </button>
                    </div>
                    <div class="component-holder ng-scope  col-md-2" data-component="crn-button" id="crn-button-close">
                        <button class="btn k-button crnCSS-default btn-danger" type="button" data-dismiss="modal" xattr-fullsize="" aria-label="{{'Home.view.Close' | translate}}" xattr-theme="btn-danger" xattr-disabled="">
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