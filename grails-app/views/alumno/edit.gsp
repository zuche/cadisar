

<%@ page import="cadisar.Alumno" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'alumno.label', default: 'Alumno')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        
        <div id="pageBody">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${alumnoInstance}">
            <div class="errors">
                <g:renderErrors bean="${alumnoInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${alumnoInstance?.id}" />
                <g:hiddenField name="version" value="${alumnoInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="name"><g:message code="alumno.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: alumnoInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" maxlength="70" value="${alumnoInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="father"><g:message code="alumno.father.label" default="Father" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: alumnoInstance, field: 'father', 'errors')}">
                                    <g:textField name="father" maxlength="70" value="${alumnoInstance?.father}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="mother"><g:message code="alumno.mother.label" default="Mother" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: alumnoInstance, field: 'mother', 'errors')}">
                                    <g:textField name="mother" maxlength="70" value="${alumnoInstance?.mother}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="address"><g:message code="alumno.address.label" default="Address" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: alumnoInstance, field: 'address', 'errors')}">
                                    <g:textField name="address" maxlength="50" value="${alumnoInstance?.address}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="phoneNumberfather"><g:message code="alumno.phoneNumberfather.label" default="Phone Numberfather" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: alumnoInstance, field: 'phoneNumberfather', 'errors')}">
                                    <g:textField name="phoneNumberfather" maxlength="10" value="${alumnoInstance?.phoneNumberfather}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="phoneNumbermother"><g:message code="alumno.phoneNumbermother.label" default="Phone Numbermother" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: alumnoInstance, field: 'phoneNumbermother', 'errors')}">
                                    <g:textField name="phoneNumbermother" maxlength="10" value="${alumnoInstance?.phoneNumbermother}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="email"><g:message code="alumno.email.label" default="Email" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: alumnoInstance, field: 'email', 'errors')}">
                                    <g:textField name="email" maxlength="50" value="${alumnoInstance?.email}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="curp"><g:message code="alumno.curp.label" default="Curp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: alumnoInstance, field: 'curp', 'errors')}">
                                    <g:textField name="curp" maxlength="16" value="${alumnoInstance?.curp}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="grade"><g:message code="alumno.grade.label" default="Grade" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: alumnoInstance, field: 'grade', 'errors')}">
                                    <g:select name="grade" from="${alumnoInstance.constraints.grade.inList}" value="${alumnoInstance?.grade}" valueMessagePrefix="alumno.grade"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="sex"><g:message code="alumno.sex.label" default="Sex" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: alumnoInstance, field: 'sex', 'errors')}">
                                    <g:select name="sex" from="${alumnoInstance.constraints.sex.inList}" value="${alumnoInstance?.sex}" valueMessagePrefix="alumno.sex"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="birthday"><g:message code="alumno.birthday.label" default="Birthday" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: alumnoInstance, field: 'birthday', 'errors')}">
                                    <g:datePicker name="birthday" precision="day" value="${alumnoInstance?.birthday}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="tardanzas"><g:message code="alumno.tardanzas.label" default="Tardanzas" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: alumnoInstance, field: 'tardanzas', 'errors')}">
                                    
<ul>
<g:each in="${alumnoInstance?.tardanzas?}" var="t">
    <li><g:link controller="tardanza" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="tardanza" action="create" params="['alumno.id': alumnoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'tardanza.label', default: 'Tardanza')])}</g:link>

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
