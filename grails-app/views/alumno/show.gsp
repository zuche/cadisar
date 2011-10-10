
<%@ page import="cadisar.Alumno" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'alumno.label', default: 'Alumno')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        
        <div id="pageBody">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="alumno.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: alumnoInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="alumno.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: alumnoInstance, field: "name")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="alumno.father.label" default="Father" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: alumnoInstance, field: "father")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="alumno.mother.label" default="Mother" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: alumnoInstance, field: "mother")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="alumno.address.label" default="Address" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: alumnoInstance, field: "address")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="alumno.phoneNumberfather.label" default="Phone Numberfather" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: alumnoInstance, field: "phoneNumberfather")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="alumno.phoneNumbermother.label" default="Phone Numbermother" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: alumnoInstance, field: "phoneNumbermother")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="alumno.email.label" default="Email" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: alumnoInstance, field: "email")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="alumno.curp.label" default="Curp" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: alumnoInstance, field: "curp")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="alumno.grade.label" default="Grade" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: alumnoInstance, field: "grade")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="alumno.sex.label" default="Sex" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: alumnoInstance, field: "sex")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="alumno.birthday.label" default="Birthday" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${alumnoInstance?.birthday}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="alumno.tardanzas.label" default="Tardanzas" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${alumnoInstance.tardanzas}" var="t">
                                    <li><g:link controller="tardanza" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${alumnoInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
