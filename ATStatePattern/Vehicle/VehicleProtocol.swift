//
//  VehicleProtocol.swift
//  ATStatePattern
//
//  Created by Dejan on 30/04/2018.
//  Copyright © 2018 Dejan. All rights reserved.
//

import Foundation

protocol VehicleProtocol
{
    // MARK: - Vehicle State
    var speed: Int { get set }
    func setState(_ state: VehicleState)
    
    // MARK: - Vehicle Controls
    func accelerate()
    func brake()
    func park()
    
    // MARK: - State Getters
    func getStoppedState() -> VehicleState
    func getMovingState() -> VehicleState
    func getParkingState() -> VehicleState
}
