//
//  AppDelegate.swift
//  ATStatePattern
//
//  Created by Dejan on 29/04/2018.
//  Copyright © 2018 Dejan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool
    {
        testVehicle()
        
        return true
    }
    
    private func testVehicle() {
        let vehicle = Vehicle()
        vehicle.brake()
        vehicle.accelerate()
        vehicle.accelerate()
        vehicle.brake()
        vehicle.park()
        vehicle.brake()
        vehicle.park()
    }
}
