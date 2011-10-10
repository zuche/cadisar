

<%@ page import="cadisar.Tardanza" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'tardanza.label', default: 'Tardanza')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${tardanzaInstance}">
            <div class="errors">
                <g:renderErrors bean="${tardanzaInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="date"><g:message code="tardanza.date.label" default="Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tardanzaInstance, field: 'date', 'errors')}">
                                    <g:datePicker name="date" precision="day" value="${tardanzaInstance?.date}"  />
                                </td>
                            </tr>
                        
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
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
