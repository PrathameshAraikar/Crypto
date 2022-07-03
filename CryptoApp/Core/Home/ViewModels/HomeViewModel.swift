//
//  HomeViewModel.swift
//  CryptoApp
//
//  Created by Prathamesh Araikar on 29/06/22.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    @Published var statistics: [StatisticModel] = []
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    @Published var searchText: String = ""
    
    private let coinDataService = CoinDataService()
    private let marketDataService = MarketDataService ()
    private var cancellabes = Set<AnyCancellable>()
    
    init() {
        addSubscribers()
    }
    
    func addSubscribers() {
        // Updates allCoins and even filters according to searchText
        $searchText
            .combineLatest(coinDataService.$allCoins)   // Combined 2 Publishers here
            .debounce(for: .seconds(0.5), scheduler: DispatchQueue.main)
            .map(filterCoins)
            .sink { [weak self] filteredCoins in
                self?.allCoins = filteredCoins  //... we return filteredCoins
            }
            .store(in: &cancellabes)
        
        // Updates Market Data
        marketDataService.$marketData
            .map(mapGlobalMarketData)
            .sink { [weak self] returnedStats in
                self?.statistics = returnedStats
            }
            .store(in: &cancellabes)
    }
    
    private func filterCoins(text: String, coins: [CoinModel]) -> [CoinModel] {
        guard !text.isEmpty else {
            return coins    // If searchText = "", we return allCoins else ...
        }
        
        // Filtering our coins
        let lowercasedText = text.lowercased()
        return coins.filter { coin in
            return coin.name.lowercased().contains(lowercasedText) || coin.symbol.lowercased().contains(lowercasedText) || coin.id.lowercased().contains(lowercasedText)
        }
    }
    
    private func mapGlobalMarketData(marketDataModel: MarketDataModel?) -> [StatisticModel] {
        var stats: [StatisticModel] = []
        
        guard let data = marketDataModel else { return stats }
        
        let marketCap = StatisticModel(title: "Market Cap", value: data.marketCap, percentageChange: data.marketCapChangePercentage24HUsd)
        let volume = StatisticModel(title: "24h Volume", value: data.volume)
        let btcDominance = StatisticModel(title: "BTC Dominance", value: data.btcDominance)
        let portfolio = StatisticModel(title: "Portfolio Value", value: "$0.00", percentageChange: 0)
        
        stats.append(contentsOf: [marketCap, volume, btcDominance, portfolio])
        
        return stats
    }
}

//        coinDataService.$allCoins
//            .sink { [weak self] returnedCoins in
//                self?.allCoins = returnedCoins
//            }
//            .store(in: &cancellabes)
