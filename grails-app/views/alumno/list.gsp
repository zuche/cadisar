
<%@ page import="cadisar.Alumno" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'alumno.label', default: 'Alumno')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
       
        <div id="pageBody">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'alumno.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="name" title="${message(code: 'alumno.name.label', default: 'Name')}" />
                        
                            <g:sortableColumn property="father" title="${message(code: 'alumno.father.label', default: 'Father')}" />
                        
                            <g:sortableColumn property="mother" title="${message(code: 'alumno.mother.label', default: 'Mother')}" />
                        
                            <g:sortableColumn property="address" title="${message(code: 'alumno.address.label', default: 'Address')}" />
                        
                            <g:sortableColumn property="phoneNumberfather" title="${message(code: 'alumno.phoneNumberfather.label', default: 'Phone Numberfather')}" />
                            
                            <g:sortableColumn property="grade" title="${message(code: 'alumno.grade.label', default: 'Grade')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${alumnoInstanceList}" status="i" var="alumnoInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${alumnoInstance.id}">${fieldValue(bean: alumnoInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: alumnoInstance, field: "name")}</td>
                        
                            <td>${fieldValue(bean: alumnoInstance, field: "father")}</td>
                        
                            <td>${fieldValue(bean: alumnoInstance, field: "mother")}</td>
                        
                            <td>${fieldValue(bean: alumnoInstance, field: "address")}</td>
                        
                            <td>${fieldValue(bean: alumnoInstance, field: "phoneNumberfather")}</td>
                            
                            <td>${fieldValue(bean: alumnoInstance, field: "grade")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
           
            <div class="buttons" style="width:80px; position:absolute; right:23.5%" >
                <g:form>
                  <span class="button"><g:link class="create" action="create" params="[grade:alumnoGrade ]"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
                </g:form>
            </div>
            
        </div>
    </body>
</html>
