import SwiftUI
import RenderMeThis

struct ObservableViewA: View {
    @Environment(ObservableModel.self) private var model
    @Environment(DebugSettings.self) private var debugSettings
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("@Observable View A")
                .font(.headline)
                .foregroundColor(.purple)
                .debugRender()
                // .debugCompute()
            
            let _ = Self._printChanges()
        
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
    }
}

struct ObservableViewB: View {
    @Environment(ObservableModel.self) private var model
    @Environment(DebugSettings.self) private var debugSettings
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("@Observable View B")
                .font(.headline)
                .foregroundColor(.orange)
                .debugRender()
                // .debugCompute()
            
            let _ = Self._printChanges()
            
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

#Preview {
    @Previewable @State var model = ObservableModel()
    @Previewable @State var settings = DebugSettings()
    VStack{
        ObservableViewA()
        ObservableViewB()
    }
    .environment(model)
    .environment(settings)
}
