//
//  Page.swift
//  InteractiveStoryApp
//
//  Created by Jose Portuondo-Dember on 5/24/17.
//  Copyright © 2017 Jose Portuondo-Dember. All rights reserved.
//

import Foundation

class Page {
    let story: Story
    
    typealias Choice = (title: String, page: Page)
    
    var firstChoice: Choice?
    var secondChoice: Choice?
    
    init(story: Story) {
        self.story = story
    }
}






























