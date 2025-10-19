void main(){
  
  
  final windPlant = WindPlant(initialEnergy: 100);
  
  final nuclearPlant = NuclearPlant(energyLeft: 100);
  
  
  print("Charge phone wind: ${chargePhone(windPlant)}");
  print("Charge phone nuclear: ${chargePhone(nuclearPlant)}");
  
}

double chargePhone( EnergyPlant plant){
  
  if(plant.energyLeft < 10) throw Exception("Not enough energy to charge the phone");
  
  return plant.calculateAmountOfEnergy(10);
  
}

enum PlantType { wind, nuclear, water}


abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;
  
  EnergyPlant({required this.energyLeft, required this.type });
  
  
  double calculateAmountOfEnergy( double amount );
  
}

class WindPlant extends EnergyPlant {
  WindPlant({ required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PlantType.wind);
  
  
  @override
  double calculateAmountOfEnergy( double amount ){
    return energyLeft -= amount;
  }
}

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;
  @override
  final PlantType type = PlantType.nuclear;
  
  NuclearPlant({required this.energyLeft});
  
  @override
  double calculateAmountOfEnergy( double amount ) {
    return energyLeft -= (amount * 0.5);
  }
}