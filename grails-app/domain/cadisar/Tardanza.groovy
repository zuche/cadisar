package cadisar

class Tardanza {
    int dia
    int mes
    int año
    Boolean justified
    String description
    Alumno student
    
    static belongsTo = [Alumno]
    static constraints = {
        date (blank:false)
        description (blank:false, maxSize:50)
        dia (range:1..31)
        mes (range:1..12)
        año (range:2011..3000)
    }
    String toString(){
        return description;
    }
}
