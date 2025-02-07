//
//  Pokemon+Ext.swift
//  Dex3
//
//  Created by Jim Rainville on 2/7/25.
//
import Foundation

// This is extending the model we create in coredata (Dex3)
extension Pokemon {
    var background: String {
        switch self.types![0] {
        case "normal", "grass", "electric", "poison", "fairy":
            return "normalgrasselectricpoisonfairy"
        case "rock", "ground", "steal", "fighting", "ghost", "dark", "psychic":
            return "rockgroundstealfightingghostdarkpsychic"
        case "fire", "dragon":
            return "firedragon"
        case "flying", "bug":
            return "flyingbug"
        case "ice":
            return "ice"
        case "water":
            return "water"
        default:
            return "hi"
        }
    }
    
    // We need this so that we can get the labels. If we just used core date we
    // would see the values but not the label ("HP", "Attack", etc)
    // Also this allows us to order them. 
    var stats: [Stat] {
        [
            Stat(id: 1, label: "HP", value: self.hp),
            Stat(id: 2, label: "Attack", value: self.attack),
            Stat(id: 3, label: "Defense", value: self.defense),
            Stat(id: 4, label: "Special Attack", value: self.specialAttack),
            Stat(id: 5, label: "Special Defense", value: self.specialDefense),
            Stat(id: 6, label: "Speed", value: self.speed)
        ]
    }
    
    var highestStat: Stat {
        stats.max{ $0.value < $1.value }!
    }
}

struct Stat: Identifiable {
    let id: Int
    let label: String
    let value: Int16
    
}

