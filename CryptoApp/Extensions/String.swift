//
//  String.swift
//  CryptoApp
//
//  Created by Prathamesh Araikar on 10/07/22.
//

import Foundation

extension String {
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
