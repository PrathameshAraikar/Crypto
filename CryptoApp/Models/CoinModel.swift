//
//  CoinModel.swift
//  CryptoApp
//
//  Created by Prathamesh Araikar on 29/06/22.
//

import Foundation

// CoinModel API Info
/*
    URL:
        https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h
 
    JSON Response:
 
         {
             "id": "bitcoin",
             "symbol": "btc",
             "name": "Bitcoin",
             "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
             "current_price": 20113,
             "market_cap": 383636632319,
             "market_cap_rank": 1,
             "fully_diluted_valuation": 422233698297,
             "total_volume": 20783224462,
             "high_24h": 21102,
             "low_24h": 19954.04,
             "price_change_24h": -881.9713507702472,
             "price_change_percentage_24h": -4.20096,
             "market_cap_change_24h": -16289076871.530823,
             "market_cap_change_percentage_24h": -4.07303,
             "circulating_supply": 19080356,
             "total_supply": 21000000,
             "max_supply": 21000000,
             "ath": 69045,
             "ath_change_percentage": -70.87923,
             "ath_date": "2021-11-10T14:24:11.849Z",
             "atl": 67.81,
             "atl_change_percentage": 29551.47191,
             "atl_date": "2013-07-06T00:00:00.000Z",
             "roi": null,
             "last_updated": "2022-06-29T13:23:55.001Z",
             "sparkline_in_7d": {
             "price": [
             20490.845254632022,
             20242.115044893097,
         ]
         },
         "price_change_percentage_24h_in_currency": -4.2009595242665645
        }
 
 */

struct CoinModel: Identifiable, Codable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, fullyDilutedValuation: Double?
    let totalVolume, high24H: Double?
    let low24H, priceChange24H, priceChangePercentage24H, marketCapChange24H: Double?
    let marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?
    let currentHoldings: Double?
    
    enum CodingKeys: String, CodingKey {
           case id, symbol, name, image
           case currentPrice = "current_price"
           case marketCap = "market_cap"
           case marketCapRank = "market_cap_rank"
           case fullyDilutedValuation = "fully_diluted_valuation"
           case totalVolume = "total_volume"
           case high24H = "high_24h"
           case low24H = "low_24h"
           case priceChange24H = "price_change_24h"
           case priceChangePercentage24H = "price_change_percentage_24h"
           case marketCapChange24H = "market_cap_change_24h"
           case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
           case circulatingSupply = "circulating_supply"
           case totalSupply = "total_supply"
           case maxSupply = "max_supply"
           case ath
           case athChangePercentage = "ath_change_percentage"
           case athDate = "ath_date"
           case atl
           case atlChangePercentage = "atl_change_percentage"
           case atlDate = "atl_date"
           case lastUpdated = "last_updated"
           case sparklineIn7D = "sparkline_in_7d"
           case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
           case currentHoldings
       }
    
    func updateHoldings(amount: Double) -> CoinModel {
            return CoinModel(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, priceChangePercentage24HInCurrency: priceChangePercentage24HInCurrency, currentHoldings: amount)
        }
    
    var currentHoldingsValue: Double {
        return (currentHoldings ?? 0) * currentPrice
    }
    
    var rank: Int {
        return Int(marketCapRank ?? 0)
    }
}

struct SparklineIn7D: Codable {
    let price: [Double]?
}

