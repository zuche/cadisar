<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />
    </head>
    <body>
        <div id="spinner" class="spinner" style="display:none;">
            <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
        </div>
        <div id="grailsLogo"><a href="http://eaturkey.org/"><img src="${resource(dir:'images',file:'EATurkey_logo.png')}" alt="Grails" border="0" /></a></div>
        
        <div id="content">
                <g:layoutBody />
        </div>
       <div id="sidebarleft">
                <g:render template="/common/test" />
        </div>
        
    </body>
</html>