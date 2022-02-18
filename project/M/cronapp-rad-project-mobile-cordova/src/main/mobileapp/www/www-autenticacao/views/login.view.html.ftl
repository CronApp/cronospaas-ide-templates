<ion-view role="region" aria-labelledby="login_page_title" cache-view="false" can-swipe-back="false" class="pane login-bg" data-container="true">
  <h1 class="sr-only" id="login_page_title">{{"Users.view.Login" | translate}}</h1>
  <ion-content class="scroll-content center-content-vertically" data-component="crn-ion-content">
    <div class="list safe-top" data-container="true">
      <div class="col text-center">
        <img aria-roledescription="logo" alt="{{'Accessibility.Login.Logo.Alt' | translate}}" src="img/logo.svg" class="component-holder logo" style="display: block; margin-left:auto; margin-right:auto;" xattr-position="display: block; margin-left:auto; margin-right:auto;" data-component="crn-image" id="crn-image-960683">
      </div>
    </div>
    <form class="form-validation" autocomplete="off" name="form" role="form">
      <input type="hidden" name="csrf_token" value="CIwNZNlR4XbisJF39I8yWnWX9wX4WFoz">
      <div class="list list-inset login-mobile" data-container="true">

        <div class="item item-input component-holder" data-component="crn-input" for="crn-input-username" title="{{'Login.view.Username' | translate}}">
          <input aria-label="{{'Login.view.Username' | translate}}" autocomplete="username" autocorrect="off" autocapitalize="off" type="text" placeholder="{{'Login.view.Username' | translate}}" ng-model="vars.username" id="crn-input-username" keyboard="username">
        </div>

        <div class="item item-input component-holder" data-component="crn-input" for="crn-input-password" title="{{'Login.view.Password' | translate}}">
          <input aria-label="{{'Login.view.Password' | translate}}" autocomplete="current-password" type="password" placeholder="{{'Login.view.Password' | translate}}" ng-model="vars.password" id="crn-input-password" keyboard="password">
        </div>

        <div class="item">
          <a href="#/app/public/reset-password" class="component-holder" style="display:block" xattr-fullsize="display:block;" data-replace="true" data-component="crn-anchor" id="reset-password-login" on-hold="" on-tap="">{{'ResetPassword' | translate}}</a>
        </div>

        <div class="item" title="{{'Login.view.Login' | translate}}" for="crn-button-445347">
          <button role="button" aria-label="{{'Login.view.Login' | translate}}" class="button button-block button-light button-medium filled" type="button" xattr-fullsize="button-block" xattr-theme="button-light" ng-click="cronapi.client('js.blockly.auth.Login.login').run(vars.username, vars.password, null)" data-component="crn-button" xattr-size="button-medium" xattr-type="filled" id="crn-button-907928" ng-disabled="form.$invalid || vm.dataLoading">
            <i class="light" xattr-icon-theme="light"></i>
            <span>{{"Login.view.Login" | translate}}</span></button>
        </div>

        <div class="item">
          <a aria-label="{{'Signup.view.Signup' | translate}}" href="#/app/public/signup" class="component-holder" style="display:block" xattr-fullsize="display:block;" data-replace="true" data-component="crn-anchor" id="button-signup">{{'Signup.view.Signup' | translate}}</a>
        </div>

        <div class="item" title="{{message.error}}">
          <div ng-show="message.error" class="help-block" data-container="true">
            {{message.error}}
          </div>
        </div>

      </div>
    </form>
  </ion-content>
</ion-view>