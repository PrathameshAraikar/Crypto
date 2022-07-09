//
//  DetailView.swift
//  CryptoApp
//
//  Created by Prathamesh Araikar on 09/07/22.
//

import SwiftUI

struct DeatilLoadingView: View {
    
    @Binding var coin: CoinModel?
    
    init(coin: Binding<CoinModel?>) {
        self._coin = coin
    }
    
    var body: some View {
        ZStack {
            if let coin = coin {
                DetailView(coin: coin)
            }
        }
    }
}

struct DetailView: View {
    
    let coin: CoinModel
    
    init(coin: CoinModel) {
        self.coin = coin
        print("Initalising Detail View for: \(coin.name)")
    }
    
    var body: some View {
        ZStack {
            Text(coin.name)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(coin: dev.coin)
    }
}
