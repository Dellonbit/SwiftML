//
//  Individual.swift
//  SwiftML
//
//  Created by arianne on 2016-04-25.
//  Copyright © 2016 della. All rights reserved.
//

import Foundation
class Individual {
    var chromosome = [Int]()
    var fitness:Double = -1.0
    
    init ( chromos: [Int]) {
    // Create individual chromosome
    chromosome = chromos
    }
    
    init (chromoLenght: Int){
     chromosome = [Int](count: 3, repeatedValue: 0)
        for gene in 0 ... chromoLenght {
            if (0.5 < drand48()) {
                setGene(gene, gene:1)
                } else {
                setGene(gene, gene:0)
                }
        }
    }

    
    func getChromosome() -> [Int] {
    return chromosome
   }
    func getChromosomeLength() -> Int {
    return chromosome.count;
    }
    func setGene(offset:Int, gene: Int) -> Void {
        chromosome[offset] = gene
    }
    
    func getGene(offset: Int) -> Int {
        return chromosome[offset]
    }
    
    func setFitness(fits: Double) -> Void {
        fitness = fits
    }
    
    func getFitness() -> Double {
        return fitness
    }

    func toString () -> String {
        var output = ""
        for gene in 0 ... chromosome.count {
          let outp = (chromosome[gene])
          let newstring = String(outp)
          output += newstring
        }
    return output
        
    }

}