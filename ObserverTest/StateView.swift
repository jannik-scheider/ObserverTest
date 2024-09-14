//
//  State.swift
//  ObserverTest
//
//  Created by Jannik Scheider on 06.05.24.
//

import SwiftUI

struct StateView: View {
    @State private var score = 0  // Direkte Zustandsverwaltung

    var body: some View {
        VStack {
            Text("Your score is \(score)")
            InnerView2(score: $score)  // Übergeben des Zustands als Binding
        }
    }
}

struct InnerView2: View {
    @Binding var score: Int  // Binding, um Veränderungen erlauben zu können

    var body: some View {
        Button("Increase Score") {
            score += 1  // Direkte Veränderung des verknüpften Zustands
        }
    }
}

#Preview {
    StateView()
}
