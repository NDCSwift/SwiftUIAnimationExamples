//
    // Project: AnimationExamples
    //  File: DragAnimationView.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    

import SwiftUI

struct DragAnimationView: View {
    @State private var dragOffset: CGSize = .zero
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.purple)
            .frame(width: 150, height: 150)
            .offset(dragOffset)
            .gesture(DragGesture()
                .onChanged { value in dragOffset = value.translation}
                .onEnded{ _ in
                    withAnimation(.spring(.bouncy(duration: 0.5, extraBounce: 0.5))){
                        dragOffset = .zero
                    }}
                     )
    }
}

#Preview {
    DragAnimationView()
}
