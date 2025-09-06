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
                .debugRender(enabled: debugSettings.renderDebugEnabled)
                .debugCompute(enabled: debugSettings.computeDebugEnabled)
            
            Text(UUID().uuidString)
                .font(.caption)
                .monospaced()
            
            HStack {
                Text("Property A: \(model.propertyA)")
                    .padding(8)
                    .debugRender(enabled: debugSettings.renderDebugEnabled)
                    .debugCompute(enabled: debugSettings.computeDebugEnabled)
                
                Spacer()
                
                Button("Update A") {
                    model.updatePropertyA()
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.small)
                .debugRender(enabled: debugSettings.renderDebugEnabled)
                .debugCompute(enabled: debugSettings.computeDebugEnabled)
            }
            
            HStack {
                Text("Counter: \(model.counter)")
                    .padding(8)
                    .debugRender(enabled: debugSettings.renderDebugEnabled)
                    .debugCompute(enabled: debugSettings.computeDebugEnabled)
                
                Spacer()
                
                Button("+ Counter") {
                    model.incrementCounter()
                }
                .buttonStyle(.bordered)
                .controlSize(.small)
                .debugRender(enabled: debugSettings.renderDebugEnabled)
                .debugCompute(enabled: debugSettings.computeDebugEnabled)
            }
        }
        .padding()
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
                .debugRender(enabled: debugSettings.renderDebugEnabled)
                .debugCompute(enabled: debugSettings.computeDebugEnabled)
            
        
        Text(UUID().uuidString)
            .font(.caption)
            .monospaced()
            
            HStack {
                Text("Property B: \(model.propertyB)")
                    .padding(8)
                    .debugRender(enabled: debugSettings.renderDebugEnabled)
                    .debugCompute(enabled: debugSettings.computeDebugEnabled)
                
                Spacer()
                
                Button("Update B") {
                    model.updatePropertyB()
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.small)
                .debugRender(enabled: debugSettings.renderDebugEnabled)
                .debugCompute(enabled: debugSettings.computeDebugEnabled)
            }
            
            HStack {
                Text("Counter: \(model.counter)")
                    .padding(8)
                    .debugRender(enabled: debugSettings.renderDebugEnabled)
                    .debugCompute(enabled: debugSettings.computeDebugEnabled)
                
                Spacer()
                
                Button("+ Counter") {
                    model.incrementCounter()
                }
                .buttonStyle(.bordered)
                .controlSize(.small)
                .debugRender(enabled: debugSettings.renderDebugEnabled)
                .debugCompute(enabled: debugSettings.computeDebugEnabled)
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
