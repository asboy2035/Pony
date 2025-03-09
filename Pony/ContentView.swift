//
//  ContentView.swift
//  Pony
//
//  Created by ash on 3/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("RainbowDash")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            Text("Pony")
                .font(.largeTitle)
        }
        .padding()
        .frame(minWidth: 350, minHeight: 450)
        #if os(macOS)
        .background(
            VisualEffectView(
                material: .sidebar,
                blendingMode: .behindWindow
            ).ignoresSafeArea()
        )
        #endif
    }
}

#if os(macOS)
struct VisualEffectView: NSViewRepresentable {
    let material: NSVisualEffectView.Material
    let blendingMode: NSVisualEffectView.BlendingMode
    
    func makeNSView(context: Context) -> NSVisualEffectView {
        let visualEffectView = NSVisualEffectView()
        visualEffectView.material = material
        visualEffectView.blendingMode = blendingMode
        visualEffectView.state = .active
        return visualEffectView
    }
    
    func updateNSView(_ visualEffectView: NSVisualEffectView, context: Context) {
        visualEffectView.material = material
        visualEffectView.blendingMode = blendingMode
    }
}
#endif

#Preview {
    ContentView()
}
