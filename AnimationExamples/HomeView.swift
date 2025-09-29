//
    // Project: AnimationExamples
    //  File: HomeView.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    

import SwiftUI

struct HomeView: View {
    @State private var showDetail = false // control navigation
    @Namespace private var animation
    var body: some View {
        NavigationStack{
            VStack{
                if !showDetail{
                    Text("Welcome to our app")
                        .font(.largeTitle)
                        .bold()
                        .matchedGeometryEffect(id: "title", in: animation)
                    
                    Image(systemName: "dog.fill")
                        .font(.largeTitle)
                    
                    Button(action: {
                        withAnimation(.spring()){
                            showDetail = true
                        }
                    }){
                        Text("Go to detail view")
                            .padding()
                            .background(.purple)
                            .foregroundStyle(.white)
                            .cornerRadius(10)
                    }
                }
                else{
                    DetailView(showDetail: $showDetail, animation: animation)
                        .transition(.opacity)
                }
            }
        }
        
    }
}

#Preview {
    HomeView()
}
