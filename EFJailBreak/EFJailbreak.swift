//
//  EFJailbreak.swift
//  EFJailBreak
//
//  Created by Ezequiel França on 12/06/17.
//  Copyright © 2017 Ezequiel França. All rights reserved.
//

import Foundation
import UIKit

public class EFJailbreakDetection {
    
    //mark: Shared Instance
    static let shared : EFJailbreakDetection = {
        let instance = EFJailbreakDetection()
        return instance
    }()
    
    public var  isJailbroken : Bool {
        return DTTJailbreakDetection.isJailbroken()
    }
}

protocol JailBreakDetectable {
    func trackJailBreak() -> (Bool, String)
}

extension JailBreakDetectable {
    func trackJailBreak() -> (Bool, String) {
        let jailbroken = EFJailbreakDetection.shared.isJailbroken
        if let deviceid = UIDevice.current.identifierForVendor?.uuidString {
            return (jailbroken, deviceid)
        }
        return (jailbroken, "no-detect-deviceID")
    }
}
