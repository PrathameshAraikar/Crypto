//
//  CoinImageViewModel.swift
//  CryptoApp
//
//  Created by Prathamesh Araikar on 30/06/22.
//

import Foundation
import Combine
import SwiftUI

class CoinImageViewModel: ObservableObject {
    
    @Published var image: UIImage? = nil
    @Published var isLoading: Bool = false
    
    private var cancellabes = Set<AnyCancellable>()
    private let coin: CoinModel
    private let dataService: CoinImageService
    
    init(coin: CoinModel) {
        self.coin = coin
        self.dataService = CoinImageService(coin: coin)
        self.addSubscriber()
        self.isLoading = true
    }
    
    private func addSubscriber() {
        dataService.$image
            .sink { [weak self] _ in
                self?.isLoading = false
            } receiveValue: { [weak self] returnedImage in
                self?.image = returnedImage
            }
            .store(in: &cancellabes)
    }
}
