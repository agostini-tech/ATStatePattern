//
//  StoppedState.swift
//  ATStatePattern
//
//  Created by Dejan on 30/04/2018.
//  Copyright © 2018 Dejan. All rights reserved.
//

import Foundation

class StoppedState: VehicleState
{
    private weak var vehicle: VehicleProtocol?
    
    required init(_ vehicle: VehicleProtocol) {
        self.vehicle = vehicle
    }
    
    func accelerate() {
        self.vehicle?.speed += 5
        if let movingState = self.vehicle?.getMovingState() {
            self.vehicle?.setState(movingState)
        }
    }
    
    func brake() {
        print("Can't brake... Vehicle is already stopped!")
    }
    
    func park() {
        if let parkingState = self.vehicle?.getParkingState() {
            self.vehicle?.setState(parkingState)
            parkingState.park()
        }
    }
}
