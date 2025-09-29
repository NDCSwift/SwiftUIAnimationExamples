//
    // Project: AnimationExamples
    //  File: DetailView.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    
import SwiftUI

struct DetailView: View {
    @Binding var showDetail: Bool
    var animation: Namespace.ID
    var body: some View {
        VStack{
            Text("Detail View")
                .font(.title)
                .bold()
                .matchedGeometryEffect(id: "title", in: animation)
            
            Button(action: {
                withAnimation(.spring()){
                    showDetail = false
                }
            }){
                Text("Go Back")
                    .padding()
                    .background(.purple)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
            }

        }
        .padding()
        .transition(.opacity)
    }
}
