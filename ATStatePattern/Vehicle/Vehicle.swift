//
//  Vehicle.swift
//  ATStatePattern
//
//  Created by Dejan on 30/04/2018.
//  Copyright © 2018 Dejan. All rights reserved.
//

import Foundation

class Vehicle: VehicleProtocol
{
    public var speed: Int = 0
    
    private var state: VehicleState?
    
    init() {
        self.state = StoppedState(self)
    }
    
    func setState(_ state: VehicleState) {
        self.state = state
    }
    
    // MARK: - Vehicle Controls
    func accelerate() {
        state?.accelerate()
    }
    
    func brake() {
        state?.brake()
    }
    
    func park() {
        state?.park()
    }
    
    // MARK: - State Getters
    func getStoppedState() -> VehicleState {
        return StoppedState(self)
    }
    
    func getMovingState() -> VehicleState {
        return MovingState(self)
    }
    
    func getParkingState() -> VehicleState {
        return ParkingState(self)
    }
}
