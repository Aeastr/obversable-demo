import SwiftUI
import RenderMeThis

struct ObservableObjectViewA: View {
    @EnvironmentObject private var model: ObservableObjectModel
    @Environment(DebugSettings.self) private var debugSettings
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("ObservableObject View A")
                .font(.headline)
                .foregroundColor(.blue)
            
            HStack {
                Text("Property A: \(model.propertyA)")
                    .padding(8)
                    .background(Color.blue.opacity(0.1))
                    .cornerRadius(4)
                
                Spacer()
                
                Button("Update A") {
                    model.updatePropertyA()
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.small)
            }
            
            HStack {
                Text("Counter: \(model.counter)")
                    .padding(8)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(4)
                
                Spacer()
                
                Button("+ Counter") {
                    model.incrementCounter()
                }
                .buttonStyle(.bordered)
                .controlSize(.small)
            }
        }
        .padding()
        .background(Color.blue.opacity(0.05))
        .cornerRadius(8)
        .debugRender(enabled: debugSettings.renderDebugEnabled)
        .debugCompute(enabled: debugSettings.computeDebugEnabled)
    }
}

struct ObservableObjectViewB: View {
    @EnvironmentObject private var model: ObservableObjectModel
    @Environment(DebugSettings.self) private var debugSettings
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("ObservableObject View B")
                .font(.headline)
                .foregroundColor(.green)
                .debugRender()
                // .debugCompute()
            
            HStack {
                Text("Property B: \(model.propertyB)")
                    .padding(8)
                    .debugRender()
                    // .debugCompute()
                
                Spacer()
                
                Button("Update B") {
                    model.updatePropertyB()
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.small)
                .debugRender()
                // .debugCompute()
            }
            
            HStack {
                Text("Counter: \(model.counter)")
                    .padding(8)
                    .debugRender()
                    // .debugCompute()
                
                Spacer()
                
                Button("+ Counter") {
                    model.incrementCounter()
                }
                .buttonStyle(.bordered)
                .controlSize(.small)
                .debugRender()
                // .debugCompute()
            }
        }
        .padding()
        .debugRender(enabled: debugSettings.renderDebugEnabled)
        .debugCompute(enabled: debugSettings.computeDebugEnabled)
    }
}

#Preview{
    @Previewable @StateObject var model = ObservableObjectModel()
    VStack{
        ObservableObjectViewA()
        ObservableObjectViewB()
    }
    .environmentObject(model)
}
