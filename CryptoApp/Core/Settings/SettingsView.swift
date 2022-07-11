//
//  SettingsView.swift
//  CryptoApp
//
//  Created by Prathamesh Araikar on 10/07/22.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.dismiss) var dismiss
    private let instagramURL = URL(string: "https://www.instagram.com/the_wazir__/")!
    private let linkedInURL = URL(string: "https://www.linkedin.com/in/prathamesh-araikar-548a44206/")!
    private let githubURL = URL(string: "https://github.com/Prathamesh-Araikar")!
    private let coingeckoURL = URL(string: "https://www.coingecko.com")!
    private let defaultURL = URL(string: "https://www.google.com")!
    
    var body: some View {
        NavigationView {
            List {
                cryptoTrackerSection
                coingeckoSection
                developerSection
                applicationSection
            }
            .listStyle(.grouped)
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .font(.headline)
                    }
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

extension SettingsView {
    private var cryptoTrackerSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Text("This app uses MVVM Architecture, Combine and Core Data")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
        } header: {
            Text("CRYPTO TRACKER")
        }
    }
    
    private var coingeckoSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Text("The Cryptocurrency data used in this app is downloaded from CoinGecko API which is free. Prices may be slightly delayed.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            
            Link("Visit CoinGecko 🦎", destination: coingeckoURL)
                .foregroundColor(Color.blue)
                .font(.headline)
        } header: {
            Text("COINGECKO")
        }
    }
    
    private var developerSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("MyPhoto")
                    .resizable()
                    .scaledToFit()
                    .frame( width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Text("This app was made by Prathamesh Araikar. This project benefits from Multithreading, Publishers/Subscribers and Data Persistence.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            
            Group {
                Link("Follow me on Instagram 😉", destination: instagramURL)
                Link("Connect with me on LinkedIn 😇", destination: linkedInURL)
                Link("Checkout my Github 😊", destination: githubURL)
            }
            .foregroundColor(Color.blue)
            .font(.headline)
        } header: {
            Text("ABOUT DEVELOPER")
        }
    }
    
    private var applicationSection: some View {
        Section {
            Group {
                Link("Terms of Service", destination: defaultURL)
                Link("Privacy Policy", destination: defaultURL)
                Link("Company Website", destination: defaultURL)
                Link("Learn More", destination: defaultURL)
            }
            .foregroundColor(Color.blue)
            .font(.headline)
        } header: {
            Text("APPLICATION")
        }
    }
}
