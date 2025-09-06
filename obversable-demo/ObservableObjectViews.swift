import SwiftUI
import RenderMeThis

struct ObservableObjectViewA: View {
    @EnvironmentObject private var model: ObservableObjectModel
    @Environment(DebugSettings.self) private var debugSettings
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            let _ = Self._printChanges()
            
            Text("ObservableObject View A")
                .font(.headline)
                .foregroundColor(.blue)
                .debugRender()
                // .debugCompute()
            
            Text(UUID().uuidString)
                .font(.caption)
                .monospaced()
            
            HStack {
                Text("Property A: \(model.propertyA)")
                    .padding(8)
                    .debugRender()
                    // .debugCompute()
                
                Spacer()
                
                Button("Update A") {
                    model.updatePropertyA()
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
//        .debugRender()
        // .debugCompute()
    }
}

struct ObservableObjectViewB: View {
    @EnvironmentObject private var model: ObservableObjectModel
    @Environment(DebugSettings.self) private var debugSettings
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            let _ = Self._printChanges()
            Text("ObservableObject View B")
                .font(.headline)
                .foregroundColor(.green)
                .debugRender()
                // .debugCompute()
            
        
        Text(UUID().uuidString)
            .font(.caption)
            .monospaced()
            
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
    }
}

#Preview{
    @Previewable @StateObject var model = ObservableObjectModel()
    @Previewable @State var settings = DebugSettings()
    VStack{
        ObservableObjectViewA()
        ObservableObjectViewB()
    }
    .environmentObject(model)
    .environment(settings)
}
