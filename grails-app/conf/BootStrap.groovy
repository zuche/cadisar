import cadisar.*
class BootStrap {

    def init = { servletContext ->
       Usuario user=Usuario.findByUsername('admin')
        if(!user){
            user=new Usuario(username:'admin',
            password:'admin'
            ).save()            
        }        
   def rolSuper=Rol.findAllByAuthority('ROLE_SUPER')?:new Rol(authority:'ROLE_SUPER').save(failOnError: true)      
        rolSuper=Rol.findByAuthority('ROLE_SUPER')
         if(!user.authorities.contains(rolSuper) ){
                    UsuarioRol.create(user,rolSuper)
                }
       
    def destroy = {
    }
}
}