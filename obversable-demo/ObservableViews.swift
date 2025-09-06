import SwiftUI
import RenderMeThis

struct ObservableViewA: View {
    @Environment(ObservableModel.self) private var model
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("@Observable View A")
                .font(.headline)
                .foregroundColor(.purple)
                // .debugRender()
                .debugCompute()
            
            HStack {
                Text("Property A: \(model.propertyA)")
                    .padding(8)
                    .background(Color.purple.opacity(0.1))
                    .cornerRadius(4)
                    // .debugRender()
                    .debugCompute()
                
                Spacer()
                
                Button("Update A") {
                    model.updatePropertyA()
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.small)
                // .debugRender()
                .debugCompute()
            }
            
            HStack {
                Text("Counter: \(model.counter)")
                    .padding(8)
                    // .debugRender()
                    .debugCompute()
                
                Spacer()
                
                Button("+ Counter") {
                    model.incrementCounter()
                }
                .buttonStyle(.bordered)
                .controlSize(.small)
                // .debugRender()
                .debugCompute()
            }
        }
        .padding()
        // .debugRender()
        .debugCompute()
    }
}

struct ObservableViewB: View {
    @Environment(ObservableModel.self) private var model
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("@Observable View B")
                .font(.headline)
                .foregroundColor(.orange)
                // .debugRender()
                .debugCompute()
            
            HStack {
                Text("Property B: \(model.propertyB)")
                    .padding(8)
                    // .debugRender()
                    .debugCompute()
                
                Spacer()
                
                Button("Update B") {
                    model.updatePropertyB()
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.small)
                // .debugRender()
                .debugCompute()
            }
            
            HStack {
                Text("Counter: \(model.counter)")
                    .padding(8)
                    // .debugRender()
                    .debugCompute()
                
                Spacer()
                
                Button("+ Counter") {
                    model.incrementCounter()
                }
                .buttonStyle(.bordered)
                .controlSize(.small)
                // .debugRender()
                .debugCompute()
            }
        }
        .padding()
        // .debugRender()
        .debugCompute()
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
