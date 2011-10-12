package cadisar

class Tardanza {
    int dia
    int mes
    int ano
    Boolean justified
    String description
    Alumno student
    
    static belongsTo = [Alumno]
    static constraints = {
        description (blank:false, maxSize:50)
        dia (range:1..31)
        mes (range:1..12)
        ano (range:2011..3000)
    }
    String toString(){
        return description;
    }
}
