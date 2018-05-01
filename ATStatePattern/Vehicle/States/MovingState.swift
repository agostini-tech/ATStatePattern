//
//  MovingState.swift
//  ATStatePattern
//
//  Created by Dejan on 30/04/2018.
//  Copyright © 2018 Dejan. All rights reserved.
//

import Foundation

class MovingState: VehicleState
{
    private weak var vehicle: VehicleProtocol?
    
    required init(_ vehicle: VehicleProtocol) {
        self.vehicle = vehicle
    }
    
    func accelerate() {
        self.vehicle?.speed += 5
    }
    
    func brake() {
        self.vehicle?.speed -= 5
        if self.vehicle?.speed == 0, let stoppedState = self.vehicle?.getStoppedState() {
            print("Vehicle braked to a stop")
            self.vehicle?.setState(stoppedState)
        }
    }
    
    func park() {
        print("Can't park the vehicle while it's moving. You need to stop first")
    }
}
