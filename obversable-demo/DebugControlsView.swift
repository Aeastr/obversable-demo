import SwiftUI

struct DebugControlsView: View {
    @Environment(DebugSettings.self) private var debugSettings
    
    var body: some View {
        NavigationView {
            Form {
                Section("RenderMeThis Debug Options") {
                    Toggle(isOn: .init(
                        get: { debugSettings.renderDebugEnabled },
                        set: { debugSettings.renderDebugEnabled = $0 }
                    )) {
                        VStack(alignment: .leading, spacing: 2) {
                            Text("Show Render Debug")
                                .font(.body)
                            Text("Canvas background changes on each re-render")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                    }
                    
                    Toggle(isOn: .init(
                        get: { debugSettings.computeDebugEnabled },
                        set: { debugSettings.computeDebugEnabled = $0 }
                    )) {
                        VStack(alignment: .leading, spacing: 2) {
                            Text("Show Compute Debug")
                                .font(.body)
                            Text("Red flashes when views re-compute")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                    }
                }
            }
            .navigationTitle("Debug")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}