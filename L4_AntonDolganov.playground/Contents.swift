import UIKit

//1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
//
//2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
//
//3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.
//
//4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
//
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//
//6. Вывести значения свойств экземпляров в консоль.

enum MakeCars {
    case audi, bmw, subaru, ford
}
enum TrunsType {
    case auto, manual
}
enum DriveType {
    case awd, fwd
}

class Car {
    var make: MakeCars
    var drive: DriveType
    var transmition: TrunsType
    var engine: String
    
    init(make: MakeCars, drive: DriveType, transmition: TrunsType, engine: String) {
        self.make = make
        self.drive = drive
        self.transmition = transmition
        self.engine = engine
        
    }
    
    func enginState() {
        print("engin is stop")
    }
    func doorState() {
        print("door is closed")
    }
    func driveTypeState() {
        print("the car has an AWD drivetrain")
    }
}

enum BodyTypeOfSportCar {
    case coupe, convertibles
}
enum SportCarModel {
    case supra, m3, m4, gt, gts
}
class SportСar: Car {
    var horsPower: Int
    var bodyType: BodyTypeOfSportCar
    var sportСarmodel: SportCarModel
    
    init(make: MakeCars, sportСarmodel: SportCarModel, drive: DriveType, transmition: TrunsType, engine: String, horsPower: Int, bodyType: BodyTypeOfSportCar) {
        self.horsPower = horsPower
        self.bodyType = bodyType
        self.sportСarmodel = sportСarmodel
        super.init(make: make, drive: drive, transmition: transmition, engine: engine)
    }
    
    func sportCarConsumptin(){
        print("Consumption of the sport car")
    }
}

enum BodyTypeOfTrunkCar {
    case full, long, longPlus
}
enum TrunkCarCarModel {
    case f150, f250, f350, gts
}
class TrunkCar: Car {
    var vihicleSize: BodyTypeOfTrunkCar
    var trimTrunkCar: String
    var models: TrunkCarCarModel
    
    init(make: MakeCars, models: TrunkCarCarModel, drive: DriveType, transmition: TrunsType, engine: String, vihicleSize: BodyTypeOfTrunkCar, trimTrunkCar: String){
        self.trimTrunkCar = trimTrunkCar
        self.vihicleSize = vihicleSize
        self.models = models
        super.init(make: make, drive: drive, transmition: transmition, engine: engine)
    }
    
    func trunkCarCarBodyType(){
        print("The car has a big trunk")
    }
}
enum SportCarPackages {
    case luxs, sport, ex, ls
}

class Coups: SportСar {
    var packages: SportCarPackages
    init(packages: SportCarPackages) {
        self.packages = packages
        super.init(make: .bmw, sportСarmodel: .m4, drive: .awd, transmition: .manual, engine: "v6", horsPower: 600, bodyType: .coupe)
    }
    
    override func sportCarConsumptin() {
        super.sportCarConsumptin()
        print("consumption for \(make) \(sportСarmodel), is 21/34 MPG")
    }
}
enum Availability {
    case instock, outOfStok
}
class BigTruck: TrunkCar {
    var availability: Availability
    init(availability: Availability) {
        self.availability = availability
        super.init(make: .ford, models: .f150, drive: .awd, transmition: .auto, engine: "v12", vihicleSize: .full, trimTrunkCar: "lux")
    }
    override func trunkCarCarBodyType() {
        print("The truck specification: \(make) \(models) \(drive) \(transmition) \(engine) \(vihicleSize) \(trimTrunkCar)")
    }
}

let car = Coups(packages: .luxs)
let truck = BigTruck(availability: .instock)
car.driveTypeState()
car.sportCarConsumptin()
truck.trunkCarCarBodyType()



