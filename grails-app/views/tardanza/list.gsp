
<%@ page import="cadisar.Tardanza" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'tardanza.label', default: 'Tardanza')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'tardanza.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="description" title="${message(code: 'tardanza.description.label', default: 'Description')}" />
                        
                            <g:sortableColumn property="dia" title="${message(code: 'tardanza.dia.label', default: 'Dia')}" />
                        
                            <g:sortableColumn property="mes" title="${message(code: 'tardanza.mes.label', default: 'Mes')}" />
                        
                            <g:sortableColumn property="ano" title="${message(code: 'tardanza.ano.label', default: 'Ano')}" />
                        
                            <g:sortableColumn property="justified" title="${message(code: 'tardanza.justified.label', default: 'Justified')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${tardanzaInstanceList}" status="i" var="tardanzaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${tardanzaInstance.id}">${fieldValue(bean: tardanzaInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: tardanzaInstance, field: "description")}</td>
                        
                            <td>${fieldValue(bean: tardanzaInstance, field: "dia")}</td>
                        
                            <td>${fieldValue(bean: tardanzaInstance, field: "mes")}</td>
                        
                            <td>${fieldValue(bean: tardanzaInstance, field: "ano")}</td>
                        
                            <td><g:formatBoolean boolean="${tardanzaInstance.justified}" /></td>
                        
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
