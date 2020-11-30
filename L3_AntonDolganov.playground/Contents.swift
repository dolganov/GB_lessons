import UIKit



//1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.
struct SportCar {
    var make = String()
    var model = String()
    var year = Int()
    var drive = String()
    var transmition = String()
    var engine = Int()
    var engineState = String()
    var horspower = Int()
    var package = String()
    var type = String()
    var body = String()
    var windowsState  = String()
    var vihicleSize = Int()
    var series = String()
    var doorState = String()
    
}

struct TrunkCar {
    var make = String()
    var model = String()
    var drive = String()
    var transmition = String()
    var engine = Int()
    var engineState = String()
    var horspower = Int()
    var trim = String()
    var type = String()
    var body = String()
    var windowsState = String()
    var vihicleSize = Int()
    var series = String()
    var trunkLoade = Int()
    var doorState = String()
}

//2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
enum DoorState {
    case open, close
}
enum Make {
    case Audi, BMW, Ford, MercedesBenz, Toyota
}
enum Transmission {
    case manual, auto
}
enum Year {
    
    case Y2021, Y2020
}
//enum Trunk{
//    case Full = 3000, Medium = 2500
//}
enum EngineState {
    case stop, run
}
enum WindowsState {
    case open, close
}
enum TrunkState {
    case full, empty
}

//3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
enum CarActions {
    case setEngiState
    case setWindowsState
    case setLoadState
    
}
struct CarState {
    var isEngineOn: EngineState = .stop
    var isWindowsState: WindowsState = .close
    var isDoorsState: DoorState = .close
    var truckLoud: TrunkState = .empty
}


//4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
struct TrunkCarState {
    var isEngineOn: EngineState = .stop
    var isWindowsState: WindowsState = .close
    var isDoorsState: DoorState = .close
    var truckLoud: TrunkState = .empty
    mutating func makeAction(action: CarActions){
        switch action {
        case .setEngiState:
            if self.isEngineOn == .stop {
                self.isEngineOn = .run
            } else {
                self.isEngineOn = .stop
            }
        case .setWindowsState:
            self.isWindowsState = .open
        case .setLoadState:
            self.truckLoud = .full
        }
        self.describeSelf()
    }
    
    func describeSelf(){
        print(self.isDoorsState, self.isEngineOn,self.isWindowsState, self.truckLoud)
    }
}
var car = TrunkCarState(isEngineOn: .run, isWindowsState: .close, isDoorsState: .close)
car.describeSelf()
//5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
car.makeAction(action: .setLoadState)
struct MySportCar {
    var make: String
    var model: String
    var transmition: String
    var horspower: Int

    
    init(MAKE: String, MODEL: String, TRANSMITTION: String, HORSPOWER: Int) {
        make = MAKE
        model = MODEL
        transmition = TRANSMITTION
        horspower = HORSPOWER
    }
}
let mySportCar = MySportCar(MAKE: "Audi", MODEL: "S7", TRANSMITTION: "munual", HORSPOWER: 256)
let mySportCar2 = MySportCar(MAKE: "BMW", MODEL: "5", TRANSMITTION: "auto", HORSPOWER: 302)


struct BigTrunkCar {
    var make: String
    //var model: String
    //var drive: String
    //var transmition: String
   // var engine: Int
    //var engineState: String
   // var horspower: Int
   // var trim: String
    //var type: String
    //var body: String
    //var windowsState: String
    //var vihicleSize: Int
    //var series: String
    var trunkLoade: Int
    var doorState: String
    
    init(MAKE: String, DOORSTATE: String, TRUNKLOAD: Int) {
        make = MAKE
        doorState = DOORSTATE
        trunkLoade = TRUNKLOAD
    }
}

let myBigTrunkCar = BigTrunkCar(MAKE: "Ford", DOORSTATE: "F150", TRUNKLOAD: 540)
//6. Вывести значения свойств экземпляров в консоль.
print("\(mySportCar)\n\(mySportCar2)\n\(myBigTrunkCar)")



