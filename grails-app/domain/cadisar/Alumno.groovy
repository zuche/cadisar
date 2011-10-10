package cadisar

class Alumno {
    String name
    Date birthday
    String sex
    String father
    String mother
    String address
    String phoneNumberfather
    String phoneNumbermother
    String email
    String curp
    String grade
    
    
    static hasMany = [tardanzas:Tardanza]
    static constraints = {
        name (blank:false, matches: "[a-zA-Z ]+", maxSize:70, unique:true)
        father (matches: "[a-zA-Z ]+", maxSize:70)
        mother (matches: "[a-zA-Z ]+", maxSize:70)
        address (maxSize:50)
        phoneNumberfather (maxSize:10, minSize:7, matches: "[0-9]+")
        phoneNumbermother (maxSize:10, minSize:7, matches: "[0-9]+")
        email (email:true, maxSize:50)
        curp (maxSize:16, minSize:16)
        grade (inList:["1K","2K","3K","1P","2P","3P","4P","5P","6P","1S","2S","3S"])
        sex (inList:["Masculino", "Femenino"])
    }
    
    
    String toString(){
     "$name"   
    }
    
  int count(){
      def lista = Tardanza.findAllByName(this.name)
      if(lista==null){
          return 0
      }else{
      def today = new GregorianCalendar()
      def firstDay = new GregorianCalendar()
      def lastDay = new GregorianCalendar()
      firstDay.set(Calendar.DAY_OF_MONTH, 1)
      lastDay.set(Calendar.DAY_OF_MONTH, lastDay.getActualMaximum(GregorianCalendar.DAY_OF_MONTH))
      def count
        for(Tardanza tardanza: lista){
            if(lastDay.before(tardanza.date)){
                
            }
          
         }
      }
      
            
  }
}
