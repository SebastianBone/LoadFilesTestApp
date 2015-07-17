package loadfilestestapp

class FileLoaderController {

    def index(){

        [documentInstanceList: FileLoader.list(params), documentInstanceTotal:FileLoader.count()]
    }

    def upload() {

        def file = request.getFile('file')
        if(file.empty) {
            flash.message = "File cannot be empty"
            render(view: 'uploadForm')
            return
        }

        file.transferTo(new File('C:/Users/Sebastian/Documents/myfile.txt'))
        redirect (action:'index')
    }
}
