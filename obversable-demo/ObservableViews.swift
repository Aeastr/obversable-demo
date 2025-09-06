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
                .debugRender(enabled: debugSettings.renderDebugEnabled)
                .debugCompute(enabled: debugSettings.computeDebugEnabled)
            
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

struct ObservableViewB: View {
    @Environment(ObservableModel.self) private var model
    @Environment(DebugSettings.self) private var debugSettings
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("@Observable View B")
                .font(.headline)
                .foregroundColor(.orange)
                .debugRender(enabled: debugSettings.renderDebugEnabled)
                .debugCompute(enabled: debugSettings.computeDebugEnabled)
            
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

#Preview {
    @Previewable @State var model = ObservableModel()
    VStack{
        ObservableViewA()
        ObservableViewB()
    }
    .environment(model)
}
