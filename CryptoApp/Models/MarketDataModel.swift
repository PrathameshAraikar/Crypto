//
//  MarketDataModel.swift
//  CryptoApp
//
//  Created by Prathamesh Araikar on 03/07/22.
//

import Foundation

// Market Data
/*
    URL: https://api.coingecko.com/api/v3/global
 
    JSON Data:
{
    "data": {
        "active_cryptocurrencies": 13372,
        "upcoming_icos": 0,
        "ongoing_icos": 49,
        "ended_icos": 3376,
        "markets": 526,
        "total_market_cap": {
            "btc": 47129041.099411055,
            "eth": 853730013.9181088,
            "ltc": 18167960532.661377,
            "bch": 8741519857.07832,
            "bnb": 4173832623.744,
            "eos": 976101976223.9458,
            "xrp": 2870763135309.2036,
            "xlm": 8393879003337.696,
            "link": 148249755835.57648,
            "dot": 134223655338.58607,
            "yfi": 159974044.35090968,
            "usd": 899889931125.5745,
            "aed": 3305291217574.5806,
            "ars": 112942619669377.2,
            "aud": 1320281611460.2678,
            "bdt": 84095051522409.1,
            "bhd": 339395287303.8729,
            "bmd": 899889931125.5745,
            "brl": 4798618063230.551,
            "cad": 1160106603059.502,
            "chf": 863016941197.7048,
            "clp": 839219351969086.4,
            "cny": 6030162428472.495,
            "czk": 21359787405196.66,
            "dkk": 6419589796167.072,
            "eur": 862864859799.3424,
            "gbp": 743403571552.4946,
            "hkd": 7060860359986.456,
            "huf": 345233773177015.25,
            "idr": 13475986702095140,
            "ils": 3178078277461.0156,
            "inr": 71047119963302.05,
            "jpy": 121687615936456.05,
            "krw": 1168858032639696,
            "kwd": 276263509185.7579,
            "lkr": 323875187124876.8,
            "mmk": 1665707355456617.5,
            "mxn": 18233479795473.28,
            "myr": 3965814926470.4077,
            "ngn": 373688292799206.2,
            "nok": 8968855586015.203,
            "nzd": 1468946127752.0056,
            "php": 49560986211995.77,
            "pkr": 184091596374203.4,
            "pln": 4052816285011.6274,
            "rub": 51113837177035.766,
            "sar": 3376691184379.874,
            "sek": 9302200013422.176,
            "sgd": 1256412823488.559,
            "thb": 31999153664856.785,
            "try": 15070915620424.863,
            "twd": 26827158670743.176,
            "uah": 26582370611678.42,
            "vef": 90105978803.60374,
            "vnd": 20981145018551028,
            "zar": 14819912921495.764,
            "xdr": 659025392160.5052,
            "xag": 45235856034.70595,
            "xau": 496973213.3634116,
            "bits": 47129041099411.055,
            "sats": 4712904109941106
        },
        "total_volume": {
            "btc": 2964413.6539500225,
            "eth": 53699562.9660161,
            "ltc": 1142763548.9939883,
            "bch": 549841036.7810782,
            "bnb": 262533803.58471537,
            "eos": 61396751524.444336,
            "xrp": 180570816571.80853,
            "xlm": 527974449440.0422,
            "link": 9324900107.064384,
            "dot": 8442659287.921702,
            "yfi": 10062357.100606686,
            "usd": 56603018789.49399,
            "aed": 207902604998.71753,
            "ars": 7104083513062.82,
            "aud": 83045628444.17528,
            "bdt": 5289573332010.258,
            "bhd": 21347941742.49525,
            "bmd": 56603018789.49399,
            "brl": 301832767544.036,
            "cad": 72970630717.75806,
            "chf": 54283710094.59452,
            "clp": 52786843262706.18,
            "cny": 379296828908.4005,
            "czk": 1343529253987.431,
            "dkk": 403791785289.5531,
            "eur": 54274144184.41895,
            "gbp": 46760036837.095055,
            "hkd": 444127662509.1336,
            "huf": 21715182128401.465,
            "idr": 847638696825490.5,
            "ils": 199900919247.54083,
            "inr": 4468859276147.456,
            "jpy": 7654143215809.34,
            "krw": 73521095075485.77,
            "kwd": 17376956959.31828,
            "lkr": 20371728439444.13,
            "mmk": 104772885524765.88,
            "mxn": 1146884706410.8484,
            "myr": 249449503805.30005,
            "ngn": 23504969582525.28,
            "nok": 564140439509.6349,
            "nzd": 92396616957.25603,
            "php": 3117382845115.961,
            "pkr": 11579349571701.018,
            "pln": 254921883661.86832,
            "rub": 3215057070942.1157,
            "sar": 212393658318.53217,
            "sek": 585107782553.7888,
            "sgd": 79028285788.60959,
            "thb": 2012744707426.9404,
            "try": 947959623207.238,
            "twd": 1687426554944.879,
            "uah": 1672029401773.7622,
            "vef": 5667660271.392031,
            "vnd": 1319712672220598.5,
            "zar": 932171569588.3617,
            "xdr": 41452654780.29815,
            "xag": 2845332435.1442313,
            "xau": 31259583.156686068,
            "bits": 2964413653950.0225,
            "sats": 296441365395002.25
        },
        "market_cap_percentage": {
            "btc": 40.493251198863206,
            "eth": 14.00264240111915,
            "usdt": 7.363345006198584,
            "usdc": 6.205786710467819,
            "bnb": 3.910557767405185,
            "busd": 1.9793191711257485,
            "ada": 1.6888383205959372,
            "xrp": 1.6841742672912146,
            "sol": 1.2395568315258767,
            "doge": 0.9694089519455248
        },
        "market_cap_change_percentage_24h_usd": -0.9697096845905442,
        "updated_at": 1656862485
    }
}
 */


struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
    
}

//        if let item = totalMarketCap.first(where: { (key, value) in
//            return key == "usd"
//        }) {
//            return "\(item.value)"
//        }


