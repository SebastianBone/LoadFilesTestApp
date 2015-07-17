<%@ page import="LoadFilesTestApp.FileLoader" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <title>Upload New File</title>
    </head>

    <body>
        <div class="nav" role="navigation">
            <ul><li><g:link class="index">File List</g:link></li></ul>
        </div>
        <div class="content scaffold-create" role="main">
            <h1>Upload New File</h1>
            <g:if test="${flash.message}"><div class="message" role="status">${flash.message}</div></g:if>

            <g:uploadForm action="upload"  method="post" enctype="multipart/form-data">
               <fieldset class="form">
                   <input type="file" name="file"/>
               </fieldset>
               <fieldset class="button">
                   <g:submitButton name="upload" class="save" value="Upload"/>
               </fieldset>
           </g:uploadForm>
        </div>
    </body>
</html>