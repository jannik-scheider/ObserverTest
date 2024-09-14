//
//  StateBinding.swift
//  ObserverTest
//
//  Created by Jannik Scheider on 06.05.24.
//

import SwiftUI


struct StateBinding: View {
    @State private var isOn = false

    var body: some View {
        VStack {
            Text("The switch is \(isOn ? "ON" : "OFF")")
                .font(.title)
            ToggleView(isOn: $isOn)
        }
    }
}


struct ToggleView: View {
    @Binding var isOn: Bool

    var body: some View {
        Toggle("Enable", isOn: $isOn)
            .padding()
    }
}


#Preview {
    StateBinding()
}
