//
//  Move.swift
//  Project34 Four in Row Game
//
//  Created by Анастасия Стрекалова on 02.04.2020.
//  Copyright © 2020 Анастасия Стрекалова. All rights reserved.
//

import GameplayKit
import UIKit

class Move: NSObject, GKGameModelUpdate {
    var value: Int = 0
    var column: Int
    
    init(column: Int) {
        self.column = column
    }
}
