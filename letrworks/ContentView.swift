//
//  ContentView.swift
//  letrworks
//
//  Created by Sungin Hong on 7/4/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isLoggedIn = UserDefaults.standard.bool(forKey: "IS_LOGIN")

    var body: some View {
        VStack {
            if isLoggedIn {
//                MainView()
            } else {
                LoginView(isLoggedIn: $isLoggedIn)
            }
        }
    }
}

#Preview {
    ContentView()
}
