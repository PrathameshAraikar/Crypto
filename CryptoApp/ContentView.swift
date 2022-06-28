//
//  ContentView.swift
//  CryptoApp
//
//  Created by Prathamesh Araikar on 28/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background.ignoresSafeArea()
            VStack(spacing: 20.0) {
                Text("Hello, world!")
                    .foregroundColor(Color.theme.accent)
                Text("Hello, world!")
                    .foregroundColor(Color.theme.secondaryText)
                Text("Hello, world!")
                    .foregroundColor(Color.theme.green)
                Text("Hello, world!")
                    .foregroundColor(Color.theme.red)

            }
            .font(.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
            ContentView()
        }
    }
}
