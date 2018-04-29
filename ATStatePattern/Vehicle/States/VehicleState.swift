//
//  VehicleState.swift
//  ATStatePattern
//
//  Created by Dejan on 30/04/2018.
//  Copyright © 2018 Dejan. All rights reserved.
//

import Foundation

protocol VehicleState
{
    init(_ vehicle: VehicleProtocol)
    
    func accelerate()
    func brake()
    func park()
}
