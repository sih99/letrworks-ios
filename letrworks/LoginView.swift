//
//  LoginView.swift
//  letrworks
//
//  Created by Sungin Hong on 7/5/24.
//

import SwiftUI

struct LoginView: View {
    @Binding var isLoggedIn: Bool

    var body: some View {
        VStack {
            Text("Please Log In")
                .font(.largeTitle)
                .padding()

            Button(action: {
                UserDefaults.standard.set(true, forKey: "IS_LOGIN")
                isLoggedIn = true
            }) {
                Text("Log In")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
                .padding()
        }
    }
}

#Preview {
    struct LoginViewPreviewWrapper: View {
        @State private var isLoggedIn = false

        var body: some View {
            LoginView(isLoggedIn: $isLoggedIn)
        }
    }

    return LoginViewPreviewWrapper()
}
