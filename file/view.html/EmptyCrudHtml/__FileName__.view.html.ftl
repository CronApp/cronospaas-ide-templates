<h2 class="component-holder text-left h3 title">Title</h2>

<datasource data-component="crn-datasource" filter="" name="MainDatasource" entity="" keys="" rows-per-page="100" class="" schema="" lazy=""></datasource> 

<div role="search" ng-hide="MainDatasource.inserting || MainDatasource.editing" data-component="crn-datasource-filter" id="crn-datasource-filter" class="">
  <div class="form-group"> 
    <label for="textinput-filter" class="">{{"template.crud.search" | translate}}</label> 
    <input type="text" ng-model="vars.search" id="textinput-filter" class="form-control k-textbox" cronapp-filter="" cronapp-filter-operator="" cronapp-filter-caseinsensitive="false" cronapp-filter-autopost="true" crn-datasource="MainDatasource" value="" placeholder="{{'template.crud.search' | translate}}"> 
  </div> 
</div> 

<section ng-hide="MainDatasource.editing || MainDatasource.inserting" class="component-holder ng-binding ng-scope" data-component="crn-cron-grid" id="cron-crn-grid-search">
  <cron-grid options="{&quot;dataSourceScreen&quot;:{},&quot;allowPaging&quot;:true,&quot;allowSorting&quot;:true,&quot;allowGrouping&quot;:false,&quot;allowSelectionTotalPageToShow&quot;:true,&quot;allowRefreshGrid&quot;:true,&quot;allowSelectionRow&quot;:true,&quot;editable&quot;:&quot;datasource&quot;,&quot;columns&quot;:[],&quot;toolBarButtons&quot;:[{&quot;type&quot;:&quot;Native&quot;,&quot;title&quot;:&quot;create&quot;}],&quot;details&quot;:[]}" ng-model="vars.gridmain" class="" style=""> 
  </cron-grid> 
</section>
<div data-component="crn-form" id="crn-form-form"> 
  <section class="form" ng-show="MainDatasource.editing || MainDatasource.inserting">
    <form crn-datasource="MainDatasource" class=""> 
        <div class="tool-bar" ng-hide="datasource.editing || datasource.inserting">
          <div class="component-holder ng-scope" data-component="crn-button" id="crn-button-startInserting">
            <button class="btn k-button btn-block btn-default btn-fab" ng-click="datasource.startInserting()" aria-label="{{'StartInserting' | translate}}" xattr-fullsize="btn-block" xattr-theme="btn-default" xattr-disabled="">
              <i class="glyphicon glyphicon-plus" icon-theme=""></i>
            </button>
          </div>
          <div class="component-holder ng-scope" data-component="crn-button" id="crn-button-startEditing">
            <button class="btn k-button btn-block btn-default btn-fab" ng-click="datasource.startEditing()" aria-label="{{'startEditing' | translate}}" xattr-fullsize="btn-block" xattr-theme="btn-default" xattr-disabled="">
              <i class="glyphicon glyphicon-pencil" icon-theme=""></i>
            </button>
          </div>
          <div class="component-holder ng-scope" data-component="crn-button" id="crn-button-previous">
            <button class="btn k-button btn-block btn-default btn-fab" ng-click="datasource.previous()" ng-disabled="!datasource.hasPrevious()" aria-label="{{'Before' | translate}}" xattr-fullsize="btn-block" xattr-theme="btn-default" xattr-disabled="">
              <i class="glyphicon glyphicon-chevron-left" icon-theme=""></i>
            </button>
          </div>
          <div class="component-holder ng-scope" data-component="crn-button" id="crn-button-next">
            <button class="btn k-button btn-block btn-default btn-fab" ng-click="datasource.next()" ng-disabled="!datasource.hasNext()" aria-label="{{'Next' | translate}}" xattr-fullsize="btn-block" xattr-theme="btn-default" xattr-disabled="">
              <i class="glyphicon glyphicon-chevron-right" icon-theme=""></i>
            </button>
          </div>
          <div class="component-holder ng-scope" data-component="crn-button" id="crn-button-remove">
            <button class="btn k-button btn-block btn-danger btn-fab" ng-click="datasource.remove()" aria-label="{{'Remove' | translate}}" xattr-fullsize="btn-block" xattr-theme="btn-danger" xattr-disabled="">
              <i class="glyphicon glyphicon-remove" icon-theme=""></i>
            </button>
          </div>
        </div>
        <div class="active-bar" ng-hide="!datasource.editing &amp;&amp; !datasource.inserting">
          <div class="component-holder ng-scope" data-component="crn-button" id="btn_crud_post_${model.random}">
            <button class="btn k-button btn-block btn-success btn-fab" ng-click="datasource.post()" aria-label="{{'SaveChanges' | translate}}" xattr-fullsize="btn-block" xattr-theme="btn-success" xattr-disabled="">
              <i class="glyphicon glyphicon-ok" icon-theme=""></i>
            </button>
          </div>
          <div class="component-holder ng-scope" data-component="crn-button" id="btn_crud_cancel_${model.random}">
            <button class="btn k-button btn-block btn-danger btn-fab" ng-click="datasource.cancel()" aria-label="{{'CancelChanges' | translate}}" xattr-fullsize="btn-block" xattr-theme="btn-danger" xattr-disabled="">
              <i class="glyphicon glyphicon-ban-circle" icon-theme=""></i>
            </button>
          </div>
      </div>
      <br> 
      <fieldset ng-disabled="!datasource.editing &amp;&amp; !datasource.inserting"> 
        <div class="component-holder ng-binding ng-scope" data-component="crn-textinput" id="crn-textinput-98075">
          <div class="form-group">
            <label for="input5045">Label</label>
            <input type="text" mask="" mask-placeholder="" ng-required="false" ng-model="vars.input5045" class="form-control k-textbox" id="input5045" placeholder="Placeholder text">
          </div>
        </div> 
      </fieldset> 
    </form>
  </section>
</div>