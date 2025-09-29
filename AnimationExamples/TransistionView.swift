//
    // Project: AnimationExamples
    //  File: TransistionView.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    

import SwiftUI

struct TransistionView: View {
    @State private var showBox = false
    var body: some View {
        VStack{
            if showBox{
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 200, height: 200)
                    .cornerRadius(10)
                    .transition(.slide.combined(with: .opacity))
                    .animation(.easeOut(duration: 0.5), value: showBox)
            }
            
            Button("Toggle Box") {
                withAnimation{
                    showBox.toggle()
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
    }
}

#Preview {
    TransistionView()
}
