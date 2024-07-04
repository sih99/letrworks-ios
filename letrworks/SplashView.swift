//
//  SplashView.swift
//  letrworks
//
//  Created by Sungin Hong on 7/4/24.
//

import SwiftUI

struct SplashView: View {
    @State private var isActive = false

    var body: some View {
        VStack {
            if self.isActive {
                ContentView()
            } else {
                VStack {
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.yellow)

                    Text("LETR WORKS")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                }



                    .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
            }
        }
    }
}


#Preview {
    SplashView()
}
