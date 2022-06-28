//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by Prathamesh Araikar on 28/06/22.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
