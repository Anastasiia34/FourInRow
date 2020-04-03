//
//  Player.swift
//  Project34 Four in Row Game
//
//  Created by Анастасия Стрекалова on 02.04.2020.
//  Copyright © 2020 Анастасия Стрекалова. All rights reserved.
//

import GameplayKit
import UIKit

class Player: NSObject, GKGameModelPlayer {
    var chip: ChipColor
    var color: UIColor
    var name: String
    var playerId: Int
    
    var opponent: Player {
        if chip == .red {
            return Player.allPlayers[1]
        } else {
            return Player.allPlayers[0]
        }
    }
    
    static var allPlayers = [Player(chip: .red), Player(chip: .black)]
    
    init(chip: ChipColor) {
        self.chip = chip
        self.playerId = chip.rawValue
        
        if chip == .red {
            color = .red
            name = "Red"
        } else {
            color = .black
            name = "Black"
        }
        
        super.init()
    }
}
