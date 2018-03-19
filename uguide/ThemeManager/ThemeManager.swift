//
//  ThemeManager.swift
//  uguide
//
//  Created by Hannibal B. Moulvad on 19/03/2018.
//  Copyright © 2018 Sebastian Frelle Koch. All rights reserved.
//

import UIKit
import Foundation

extension UIColor {
    func colorFromHexString (_ hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.characters.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
enum Theme: Int {
    
    case theme1, theme2
    
    var mainColor: UIColor {
        switch self {
        case .theme1:
            return UIColor().colorFromHexString("ffffff")
        case .theme2:
            return UIColor().colorFromHexString("000000")
        }
    }
    
    var backgroundColor: UIColor {
        switch self {
        case .theme1:
            return UIColor().colorFromHexString("6c7d98")
        case .theme2:
            return UIColor().colorFromHexString("ffffff")
        }
    }
    
    var titleTextColor: UIColor {
        switch self {
        case .theme1:
            return UIColor().colorFromHexString("ffffff")
        case .theme2:
            return UIColor().colorFromHexString("000000")
        }
    }
    var subtitleTextColor: UIColor {
        switch self {
        case .theme1:
            return UIColor().colorFromHexString("ffffff")
        case .theme2:
            return UIColor().colorFromHexString("000000")
        }
    }
}

// Enum declaration
let SelectedThemeKey = "SelectedTheme"

// This will let you use a theme in the app.
class ThemeManager {
    
    // ThemeManager
    static func currentTheme() -> Theme {
        if let storedTheme = (UserDefaults.standard.value(forKey: SelectedThemeKey) as AnyObject).integerValue {
            return Theme(rawValue: storedTheme)!
        } else {
            return .theme2
        }
    }
    
    static func applyTheme(theme: Theme) {
        // First persist the selected theme using NSUserDefaults.
        UserDefaults.standard.setValue(theme.rawValue, forKey: SelectedThemeKey)
        UserDefaults.standard.synchronize()
        
        // You get your current (selected) theme and apply the main color to the tintColor property of your application’s window.
        let sharedApplication = UIApplication.shared
        sharedApplication.delegate?.window??.tintColor = theme.titleTextColor
        
        //MARK: Setting global colors, fonts textsize etc.
        UILabel.appearance().font = UIFont(name: "Lato-Regular", size: 16)
        
        UINavigationBar.appearance().backgroundColor = theme.backgroundColor

        
        UITextView.appearance().font = UIFont(name: "Lato-Regular", size: 14)
        
        UITableView.appearance().backgroundColor = theme.backgroundColor
        UITableViewCell.appearance().backgroundColor = theme.backgroundColor
        

    
    }
}
