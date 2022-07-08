//
//  HapticFileManager.swift
//  CryptoApp
//
//  Created by Prathamesh Araikar on 08/07/22.
//

import Foundation
import SwiftUI

class HapticManger {
    static private let generator = UINotificationFeedbackGenerator()
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
