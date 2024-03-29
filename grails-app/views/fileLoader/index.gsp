<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'fileLoader.label', default: 'FileLoader')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>

    <body>
        <a href="#list-fileLoader" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="upload" action="upload"><g:message code="default.new.label" args="[entityName]"/></g:link> </li>
            </ul>
        </div>
        <div id="list-fileLoader" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table>
                <thead>
                <tr>
                    <g:sortableColumn property="fileName" title="Filename"/>
                    <g:sortableColumn property="dateCreated" title="Upload Date"/>
                </tr>
                </thead>
                <tbody>
                <g:each in="${documentInstanceList}" status="i" var="documentInstance">
                    <tr class="${(i % 2) == 0 ? 'even':'odd'}">
                        <td><g:link action="download" id="${documentInstance.id}">${documentInstance.fileName}</g:link> </td>
                        <td><g:formatDate date="${documentInstance.dateCreated}"/></td>
                    </tr>
                </g:each>
                </tbody>
            </table>
            <div class="pagination">
                <g:paginate total="${documentInstanceTotal}"/>
            </div>

        </div>
    </body>
</html>