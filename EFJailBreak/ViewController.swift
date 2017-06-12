//
//  ViewController.swift
//  EFJailBreak
//
//  Created by Ezequiel França on 12/06/17.
//  Copyright © 2017 Ezequiel França. All rights reserved.
//

import UIKit

class ViewController: UIViewController, JailBreakDetectable {

    override func viewDidLoad() {
        super.viewDidLoad()
        let (jailbreak, deviceID) = self.trackJailBreak()
        
        if jailbreak {
            print("Jailbreak detected, device:")
            print(deviceID)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

