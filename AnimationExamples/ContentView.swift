//
    // Project: AnimationExamples
    //  File: ContentView.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    

import SwiftUI

struct ContentView: View {
    @State private var isExpanded = false
    var body: some View {
        VStack {
            Rectangle()
                .fill(isExpanded ? Color.blue : Color.green)
                .frame(width: 100, height: isExpanded ? 200 : 100)
                .cornerRadius(20)
                .animation(.spring(response: 0.5, dampingFraction: 0.8), value: isExpanded) //implicit Animation
                .padding(.bottom, 50)
            
            Button("Toggle"){
                withAnimation{
                    isExpanded.toggle()
                }
            }
            .buttonStyle(.borderedProminent)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
