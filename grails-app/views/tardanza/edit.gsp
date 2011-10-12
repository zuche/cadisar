

<%@ page import="cadisar.Tardanza" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'tardanza.label', default: 'Tardanza')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${tardanzaInstance}">
            <div class="errors">
                <g:renderErrors bean="${tardanzaInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${tardanzaInstance?.id}" />
                <g:hiddenField name="version" value="${tardanzaInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="description"><g:message code="tardanza.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tardanzaInstance, field: 'description', 'errors')}">
                                    <g:textField name="description" maxlength="50" value="${tardanzaInstance?.description}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="dia"><g:message code="tardanza.dia.label" default="Dia" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tardanzaInstance, field: 'dia', 'errors')}">
                                    <g:select name="dia" from="${1..31}" value="${fieldValue(bean: tardanzaInstance, field: 'dia')}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="mes"><g:message code="tardanza.mes.label" default="Mes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tardanzaInstance, field: 'mes', 'errors')}">
                                    <g:select name="mes" from="${1..12}" value="${fieldValue(bean: tardanzaInstance, field: 'mes')}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="ano"><g:message code="tardanza.ano.label" default="Ano" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tardanzaInstance, field: 'ano', 'errors')}">
                                    <g:select name="ano" from="${2011..3000}" value="${fieldValue(bean: tardanzaInstance, field: 'ano')}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="justified"><g:message code="tardanza.justified.label" default="Justified" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tardanzaInstance, field: 'justified', 'errors')}">
                                    <g:checkBox name="justified" value="${tardanzaInstance?.justified}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="student"><g:message code="tardanza.student.label" default="Student" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tardanzaInstance, field: 'student', 'errors')}">
                                    <g:select name="student.id" from="${cadisar.Alumno.list()}" optionKey="id" value="${tardanzaInstance?.student?.id}"  />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
