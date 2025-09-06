//
//  ContentView.swift
//  obversable-demo
//
//  Created by Aether on 9/6/25.
//

import SwiftUI
import RenderMeThis

struct ContentView: View {
    @State private var debugSettings = DebugSettings()
    
    var body: some View {
        TabView {
            ObservableObjectDemoView()
                .tabItem {
                    Image(systemName: "square.stack.3d.up")
                    Text("ObservableObject")
                }
            
            ObservableDemoView()
                .tabItem {
                    Image(systemName: "bolt.circle")
                    Text("@Observable")
                }
            
            DebugControlsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Debug")
                }
        }
        .environment(debugSettings)
    }
}

#Preview {
    ContentView()
}
