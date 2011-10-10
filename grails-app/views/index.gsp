<html>
    <head>
        <title>Welcome to Grails</title>
        <meta name="layout" content="main" />
    
    </head>
    <body>
        <!--<div id="nav">
            <div class="homePagePanel">
                <div class="panelTop"></div>
                <div class="panelBody">
                  <h1>Eliga GRADO</h1>
                    <h1>Kinder</h1>
                    <ul>
                        <li><g:link controller="alumno" action="listgrade" params="[grade:'1K']">1K</g:link></li>
                        <li><g:link controller="alumno" action="listgrade" params="[grade:'2K']">2K</g:link></li>
                        <li><g:link controller="alumno" action="listgrade" params="[grade:'3K']">3K</g:link></li>
                    </ul>
                    <h1>Primaria</h1>
                    <ul>
                        <li><g:link controller="alumno" action="listgrade" params="[grade:'1P']">1P</g:link></li>
                        <li><g:link controller="alumno" action="listgrade" params="[grade:'2P']">2P</g:link></li>
                        <li><g:link controller="alumno" action="listgrade" params="[grade:'3P']">3P</g:link></li>
                        <li><g:link controller="alumno" action="listgrade" params="[grade:'4P']">4P</g:link></li>
                        <li><g:link controller="alumno" action="listgrade" params="[grade:'5P']">5P</g:link></li>
                        <li><g:link controller="alumno" action="listgrade" params="[grade:'6P']">6P</g:link></li>

                    </ul>
                   <h1>Secundaria</h1>
                    <ul>
                        <li><g:link controller="alumno" action="listgrade" params="[grade:'1S']">1S</g:link></li>
                        <li><g:link controller="alumno" action="listgrade" params="[grade:'2S']">2S</g:link></li>
                        <li><g:link controller="alumno" action="listgrade" params="[grade:'3S']">3S</g:link></li>
                    </ul>
                </div>
                <div class="panelBtm"></div>
            </div>
        </div>-->
        <div id="pageBody">
            <h1>Welcome to Grails</h1>
            <p>Congratulations, you have successfully started your first Grails application! At the moment
            this is the default page, feel free to modify it to either redirect to a controller or display whatever
            content you may choose. Below is a list of controllers that are currently deployed in this application,
            click on each to execute its default action:</p>

            <div id="controllerList" class="dialog">
                <h2>Available Controllers:</h2>
                <ul>
                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName }}">
                        <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.logicalPropertyName}</g:link></li>
                    </g:each>
                </ul>
            </div>
        </div>
    </body>
</html>
