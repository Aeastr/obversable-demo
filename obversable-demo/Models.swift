import SwiftUI
import Combine
import Observation

class ObservableObjectModel: ObservableObject {
    @Published var propertyA: Int = 10
    @Published var propertyB: Int = 5
    @Published var counter: Int = 0
    
    func updatePropertyA() {
        propertyA += 1
    }
    
    func updatePropertyB() {
        propertyB += 1
    }
    
    func incrementCounter() {
        counter += 1
    }
}

@Observable
class ObservableModel {
    var propertyA: Int = 10
    var propertyB: Int = 5
    var counter: Int = 0
    
    func updatePropertyA() {
        propertyA += 1
    }
    
    func updatePropertyB() {
        propertyB += 1
    }
    
    func incrementCounter() {
        counter += 1
    }
}
