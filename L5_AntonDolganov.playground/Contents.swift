import UIKit

protocol Car {
    var make: String { get set}
    var drive: String { get set }
    var transmition: String  { get set }
    var engine: String  { get set }
    
//    init(_: <#parameters#>) {
//    <#statements#>
//    }
    func enginState (engineState: Bool)
}
extension Car {
    func windowsState(){
        print("windows is closed")
    }
    
    func enginAction() {
        print("Engin is stop")
    }
}

class TrunkCar: Car {
    var make: String = "Ford"
    var drive: String = "AWD"
    var transmition: String = "AUTO"
    var engine: String = "V6"
    var bodyType: String = "trunk"
    var trunckCopasity: Int = 1200
    
    func enginState(engineState: Bool) {
        if engineState == true {
            print("Engin for TrunkCar is run")
        } else {
            print("Engin for TrunkCar is stop")
        }
    }
    
}

class SportCar: Car {
    var make: String = "BMW"
    var drive: String = "FWD"
    var transmition: String = "manual"
    var engine: String = "V8"
    var complectation: String = "sport"
    var horsPowert: Int = 500
    
    func enginState(engineState: Bool) {
        if engineState == true {
            print("Engin for SportCaris run")
        } else {
            print("Engin for SportCar is stop")
        }
    }
}

extension SportCar: CustomStringConvertible{
    var description: String{
        return "Specs for sport car: \(make) \(drive) \(transmition) \(engine) \(complectation) \(horsPowert)"
    }
}

extension TrunkCar: CustomStringConvertible{
    var description: String{
        return "TrunkCar: \(make) \(drive) \(transmition) \(engine) \(bodyType) \(trunckCopasity)"
    }
}

let car1 = TrunkCar()
let car2 = SportCar()
car1.enginState(engineState: false)
car2.enginState(engineState: true)
print(car1.description)
print(car2.description)

