//
//  Audio.swift
//  InteractiveStoryApp
//
//  Created by Jose Portuondo-Dember on 6/9/17.
//  Copyright © 2017 Jose Portuondo-Dember. All rights reserved.
//

import Foundation
import AudioToolbox

extension Story {
    
    var soundEffectName: String {
        switch self {
        case .droid, .home : return "HappyEnding"
        case .monster : return "Ominous"
        default : return "PageTurn"
        }
    }
    
    var soundEffectURL: URL {
        let path = Bundle.main.path(forResource: soundEffectName, ofType: "wav")!
        return URL(fileURLWithPath: path)
    }
}

class SoundEffectsPlayer {
    var sound: SystemSoundID = 0
}




































































