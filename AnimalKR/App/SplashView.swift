//
//  SplashView.swift
//  AnimalKR
//
//  Created by yp on 2024/05/16.
//

import SwiftUI

struct SplashView: View {
    // property
    @State private var isActive: Bool = false
    @State private var size: Double = 0.5
    @State private var opacity: Double = 0.5
    
    
    var body: some View {
        if isActive {
            HomeView()
        } else {
            VStack(spacing:20){
                Image("splash")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                
                Text("한국의 멸종 위기 동물들")
                    .font(.largeTitle)
                    .foregroundColor(.accentColor.opacity(0.8))
                    .fontWeight(.heavy)
            }//:VStack
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear{
                withAnimation(.easeInOut(duration: 1.5)){
                    size = 1.0
                    opacity = 1.0
                    
                    // 3초 후에 HomeView 로 이동하기
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
                        isActive = true
                    }
                }
            }
        }
    }
}

#Preview {
    SplashView()
}
