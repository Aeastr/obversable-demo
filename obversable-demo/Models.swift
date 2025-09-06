import SwiftUI
import Combine
import Observation

class ObservableObjectModel: ObservableObject {
    @Published var propertyA: String = "A Value"
    @Published var propertyB: String = "B Value" 
    @Published var counter: Int = 0
    
    func updatePropertyA() {
        propertyA = "A Updated \(Date().timeIntervalSince1970)"
    }
    
    func updatePropertyB() {
        propertyB = "B Updated \(Date().timeIntervalSince1970)"
    }
    
    func incrementCounter() {
        counter += 1
    }
}

@Observable
class ObservableModel {
    var propertyA: String = "A Value"
    var propertyB: String = "B Value"
    var counter: Int = 0
    
    func updatePropertyA() {
        propertyA = "A Updated \(Date().timeIntervalSince1970)"
    }
    
    func updatePropertyB() {
        propertyB = "B Updated \(Date().timeIntervalSince1970)"
    }
    
    func incrementCounter() {
        counter += 1
    }
}
