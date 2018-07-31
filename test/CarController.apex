CarController c= new CarController ();
c.CarList ();


public  class CarController {
    
    public List<Car__c> ListaAutos = new List<Car__c>();
    public List<Car__c> AutosAntiguos = new List<Car__c>();
    public List<Car__c> AutosNuevos = new List<Car__c>();
    public Map<String, List<Car__c>> MapaAutos = new Map<String, List<Car__c>>();
        
    // Public method
    public void CarList () {
        Car__c car1 = new Car__c();
        car1.Name = 'Fiat 601';
        car1.Model__c = 'Falcon';
        car1.Year__c = 1969;
        
        ListaAutos.add(car1);
        
        Car__c car2 = new Car__c();
        car2.Name = 'Fiat 600';
        car2.Model__c = 'Fiesta';
        car2.Year__c = 1969;
        
        ListaAutos.add(car2);
        
        Car__c car3 = new Car__c();
        car3.Name = 'Fiat 602';
        car3.Model__c = 'Onix';
        car3.Year__c = 2005;
        
        ListaAutos.add(car3);
        
        Car__c car4 = new Car__c();
        car4.Name = 'Fiat 603';
        car4.Model__c = 'Mustang';
        car4.Year__c = 2017;

        ListaAutos.add(car4);
        
        for (Car__c autito : ListaAutos){
               if(autito.Year__c < 2000){
                   AutosAntiguos.add(autito);
               } else {
                   AutosNuevos.add(autito);
               }
        }
        
        MapaAutos.put('AutosAntiguos',AutosAntiguos);
        MapaAutos.put('AutosNuevos',AutosNuevos);
        
        system.debug(MapaAutos.get('AutosAntiguos'));
        system.debug(MapaAutos.get('AutosNuevos'));
        
    }
}