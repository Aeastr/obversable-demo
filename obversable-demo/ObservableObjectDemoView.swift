import SwiftUI
import RenderMeThis

struct ObservableObjectDemoView: View {
    @StateObject private var model = ObservableObjectModel()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                VStack(alignment: .leading, spacing: 0){
                    ObservableObjectViewA()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .overlay {
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.green, lineWidth: 3)
                        }
                    Text("ObservableObject A")
                        .padding(.vertical, 6)
                        .padding(.horizontal, 10)
                        .background(.green)
                        .foregroundStyle(.white)
                        .clipShape(UnevenRoundedRectangle(bottomLeadingRadius: 15, bottomTrailingRadius: 15))
                        .padding(.horizontal, 27)
                }
                VStack(alignment: .leading, spacing: 0){
                    ObservableObjectViewB()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .overlay {
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.green, lineWidth: 3)
                        }
                    Text("ObservableObject B")
                        .padding(.vertical, 6)
                        .padding(.horizontal, 10)
                        .background(.green)
                        .foregroundStyle(.white)
                        .clipShape(UnevenRoundedRectangle(bottomLeadingRadius: 15, bottomTrailingRadius: 15))
                        .padding(.horizontal, 27)
                }
            }
            .padding(20)
            .navigationTitle("ObservableObject")
            .navigationBarTitleDisplayMode(.inline)
        }
        .environmentObject(model)
    }
}