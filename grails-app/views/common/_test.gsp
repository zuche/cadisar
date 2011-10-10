<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

 
      <style type="text/css" media="screen">
        #nav {
            margin-top:20px;
            margin-left:30px;
            width:228px;
            float:left;

        }
        .homePagePanel * {
            margin:0px;
        }
        .homePagePanel .panelBody ul {
            list-style-type:none;
            margin-bottom:10px;
        }
        .homePagePanel .panelBody h1 {
            text-transform:uppercase;
            font-size:1.1em;
            margin-bottom:10px;
        }
        .homePagePanel .panelBody {
            background: url(${resource(dir:'images',file:'leftnav_midstretch.png')}) repeat-y top;
            margin:0px;
            padding:15px;
        }
        .homePagePanel .panelBtm {
            background: url(${resource(dir:'images',file:'leftnav_btm.png')}) no-repeat top;
            height:20px;
            margin:0px;
        }

        .homePagePanel .panelTop {
            background: url(${resource(dir:'images',file:'leftnav_top.png')}) no-repeat top;
            height:11px;
            margin:0px;
        }
        h2 {
            margin-top:15px;
            margin-bottom:15px;
            font-size:1.2em;
        }
        
        </style>
          <div id="test">
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
                   <h1>Home</h1>
                   <ul>
                     <li><a href="<%= request.getContextPath()%>" >Home</a></li>
                   </ul>
                </div>
               <div class="panelBtm"></div>