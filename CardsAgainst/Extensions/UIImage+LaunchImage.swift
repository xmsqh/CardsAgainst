//
//  UIImage+LaunchImage.swift
//  CardsAgainst
//
//  Created by JP Simard on 11/5/14.
//  Copyright (c) 2014 JP Simard. All rights reserved.
//

import UIKit

extension UIImage {
    class func launchImage() -> UIImage {
        // We only care about iOS 8+ portrait iPhones
        // LaunchImage names found here: http://stackoverflow.com/a/25843887/373262
        var launchImageName: String
        switch UIScreen.mainScreen().bounds.size.height {
        case 0..<568:
            // 3.5 inch screen
            launchImageName = "LaunchImage-700"
        case 568:
            // 4 inch screen
            launchImageName = "LaunchImage-700-568h"
        case 667:
            // 4.7 inch screen
            launchImageName = "LaunchImage-800-667h"
        case 736:
            // 5.5 inch screen
            launchImageName = "LaunchImage-800-Portrait-736h"
        default:
            // Let the system decide
            launchImageName = "LaunchImage"
        }
        return UIImage(named: launchImageName)!
    }
}
