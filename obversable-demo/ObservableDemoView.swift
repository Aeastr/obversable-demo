import SwiftUI
import RenderMeThis

struct ObservableDemoView: View {
    @State private var model = ObservableModel()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                VStack(alignment: .leading, spacing: 0){
                    ObservableViewA()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .overlay {
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.blue, lineWidth: 3)
                        }
                    Text("Observable A")
                        .padding(.vertical, 6)
                        .padding(.horizontal, 10)
                        .background(.blue)
                        .foregroundStyle(.white)
                        .clipShape(UnevenRoundedRectangle(bottomLeadingRadius: 15, bottomTrailingRadius: 15))
                        .padding(.horizontal, 27)
                }
                VStack(alignment: .leading, spacing: 0){
                    ObservableViewB()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .overlay {
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.blue, lineWidth: 3)
                        }
                    Text("Observable B")
                        .padding(.vertical, 6)
                        .padding(.horizontal, 10)
                        .background(.blue)
                        .foregroundStyle(.white)
                        .clipShape(UnevenRoundedRectangle(bottomLeadingRadius: 15, bottomTrailingRadius: 15))
                        .padding(.horizontal, 27)
                }
            }
            .padding(20)
            .navigationTitle("@Observable")
            .navigationBarTitleDisplayMode(.inline)
        }
        .environment(model)
    }
}

#Preview {
    ObservableDemoView()
}
