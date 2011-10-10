
<%@ page import="cadisar.Tardanza" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'tardanza.label', default: 'Tardanza')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'tardanza.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="date" title="${message(code: 'tardanza.date.label', default: 'Date')}" />
                        
                            <g:sortableColumn property="description" title="${message(code: 'tardanza.description.label', default: 'Description')}" />
                        
                            <g:sortableColumn property="justified" title="${message(code: 'tardanza.justified.label', default: 'Justified')}" />
                        
                            <th><g:message code="tardanza.student.label" default="Student" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${tardanzaInstanceList}" status="i" var="tardanzaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${tardanzaInstance.id}">${fieldValue(bean: tardanzaInstance, field: "id")}</g:link></td>
                        
                            <td><g:formatDate date="${tardanzaInstance.date}" /></td>
                        
                            <td>${fieldValue(bean: tardanzaInstance, field: "description")}</td>
                        
                            <td><g:formatBoolean boolean="${tardanzaInstance.justified}" /></td>
                        
                            <td>${fieldValue(bean: tardanzaInstance, field: "student")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${tardanzaInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
