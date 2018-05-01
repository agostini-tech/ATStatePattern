//
//  ParkingState.swift
//  ATStatePattern
//
//  Created by Dejan on 30/04/2018.
//  Copyright © 2018 Dejan. All rights reserved.
//

import Foundation

class ParkingState: VehicleState
{
    private weak var vehicle: VehicleProtocol?
    private var parking: Bool = false
    
    required init(_ vehicle: VehicleProtocol) {
        self.vehicle = vehicle
    }
    
    func accelerate() {
        print("Vehicle is automatically parking, you can't accelerate!")
    }
    
    func brake() {
        print("Automatic parking has been aborted")
        stopParking()
    }
    
    func park() {
        guard self.parking == false else {
            print("Vehicle is already parking")
            return
        }
        print("Vehicle is now parking")
        self.parking = true
        DispatchQueue.global().asyncAfter(deadline: .now() + 5) {
            self.stopParking()
        }
    }
    
    private func stopParking() {
        print("Vehicle has stopped parking")
        self.parking = false
        if let stoppedState = self.vehicle?.getStoppedState() {
            self.vehicle?.setState(stoppedState)
        }
    }
}
