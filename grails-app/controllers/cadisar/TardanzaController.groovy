package cadisar

class TardanzaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [tardanzaInstanceList: Tardanza.list(params), tardanzaInstanceTotal: Tardanza.count()]
    }

    def create = {
        def tardanzaInstance = new Tardanza()
        tardanzaInstance.properties = params
        return [tardanzaInstance: tardanzaInstance]
    }

    def save = {
        def tardanzaInstance = new Tardanza(params)
        if (tardanzaInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'tardanza.label', default: 'Tardanza'), tardanzaInstance.id])}"
            redirect(action: "show", id: tardanzaInstance.id)
        }
        else {
            render(view: "create", model: [tardanzaInstance: tardanzaInstance])
        }
    }

    def show = {
        def tardanzaInstance = Tardanza.get(params.id)
        if (!tardanzaInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'tardanza.label', default: 'Tardanza'), params.id])}"
            redirect(action: "list")
        }
        else {
            [tardanzaInstance: tardanzaInstance]
        }
    }

    def edit = {
        def tardanzaInstance = Tardanza.get(params.id)
        if (!tardanzaInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'tardanza.label', default: 'Tardanza'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [tardanzaInstance: tardanzaInstance]
        }
    }

    def update = {
        def tardanzaInstance = Tardanza.get(params.id)
        if (tardanzaInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (tardanzaInstance.version > version) {
                    
                    tardanzaInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'tardanza.label', default: 'Tardanza')] as Object[], "Another user has updated this Tardanza while you were editing")
                    render(view: "edit", model: [tardanzaInstance: tardanzaInstance])
                    return
                }
            }
            tardanzaInstance.properties = params
            if (!tardanzaInstance.hasErrors() && tardanzaInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'tardanza.label', default: 'Tardanza'), tardanzaInstance.id])}"
                redirect(action: "show", id: tardanzaInstance.id)
            }
            else {
                render(view: "edit", model: [tardanzaInstance: tardanzaInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'tardanza.label', default: 'Tardanza'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def tardanzaInstance = Tardanza.get(params.id)
        if (tardanzaInstance) {
            try {
                tardanzaInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'tardanza.label', default: 'Tardanza'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'tardanza.label', default: 'Tardanza'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'tardanza.label', default: 'Tardanza'), params.id])}"
            redirect(action: "list")
        }
    }
}
