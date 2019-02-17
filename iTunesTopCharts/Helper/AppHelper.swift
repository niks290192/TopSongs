//
//  AppHelper.swift
//  TopSongs
//
//  Created by NiKhil AroRa on 18/09/18.
//  Copyright © 2018 Nikhil Arora. All rights reserved.
//

import Foundation
import Reachability

class AppHelper:NSObject {
    
    static let sharedInstance = AppHelper()
    
    class func categoriesArray() -> [String] {
        let categories = ["Music"]
        return categories
    }
    
    class func saveToUserDefault(value:String, key:String) {
        UserDefaults.standard.set(value, forKey:key)
        UserDefaults.standard.synchronize()
    }
    
    class func userDefaultForKey(key:String) -> String {
        var optional:String?
        optional = UserDefaults.standard.object(forKey: key) as? String
        if (optional != nil) {
            return UserDefaults.standard.object(forKey: key) as! NSString as String
        } else {
            return ""
        }
    }
    
    class func removeFromUserDefault(value:String) {
        UserDefaults.standard.removeObject(forKey: value)
        UserDefaults.standard.synchronize()
    }
    
    class func checkInternetConnection() -> Bool {
        let reachability = Reachability()!
        var connectionStatus: Bool = false
        if reachability.connection != .none {
            connectionStatus = true
        } else {
            connectionStatus = false
        }
        return connectionStatus
    }
    
    class func isValidEmail(testStr:String) -> Bool {
        print("validate emilId: \(testStr)")
        let emailRegEx = "^(?:(?:(?:(?: )*(?:(?:(?:\\t| )*\\r\\n)?(?:\\t| )+))+(?: )*)|(?: )+)?(?:(?:(?:[-A-Za-z0-9!#$%&’*+/=?^_'{|}~]+(?:\\.[-A-Za-z0-9!#$%&’*+/=?^_'{|}~]+)*)|(?:\"(?:(?:(?:(?: )*(?:(?:[!#-Z^-~]|\\[|\\])|(?:\\\\(?:\\t|[ -~]))))+(?: )*)|(?: )+)\"))(?:@)(?:(?:(?:[A-Za-z0-9](?:[-A-Za-z0-9]{0,61}[A-Za-z0-9])?)(?:\\.[A-Za-z0-9](?:[-A-Za-z0-9]{0,61}[A-Za-z0-9])?)*)|(?:\\[(?:(?:(?:(?:(?:[0-9]|(?:[1-9][0-9])|(?:1[0-9][0-9])|(?:2[0-4][0-9])|(?:25[0-5]))\\.){3}(?:[0-9]|(?:[1-9][0-9])|(?:1[0-9][0-9])|(?:2[0-4][0-9])|(?:25[0-5]))))|(?:(?:(?: )*[!-Z^-~])*(?: )*)|(?:[Vv][0-9A-Fa-f]+\\.[-A-Za-z0-9._~!$&'()*+,;=:]+))\\])))(?:(?:(?:(?: )*(?:(?:(?:\\t| )*\\r\\n)?(?:\\t| )+))+(?: )*)|(?: )+)?$"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        let result = emailTest.evaluate(with: testStr)
        return result
    }
    
}
