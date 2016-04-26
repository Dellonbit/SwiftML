//
//  Ga.swift
//  SwiftML
//
//  Created by arianne on 2016-04-25.
//  Copyright © 2016 della. All rights reserved.
//

import Foundation
class Ga {
    var populationSize: Int!
    var mutationRate: Double!
    var crossoverRAte: Double!
    var elitism: Int!
    
    init (popsize:Int, muteRate: Double, crossOver: Double, elitism: Int) {
        
        populationSize = popsize
        mutationRate = muteRate
        crossoverRAte = crossOver
    }
}