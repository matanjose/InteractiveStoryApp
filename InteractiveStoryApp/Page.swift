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

extension Page {
    
    func addChoiceWith(title: String, story: Story) -> Page {
        let page = Page(story: story)
        
        return addChoiceWith(title: title, page: page)
        
    }
    
    func addChoiceWith(title: String, page: Page) -> Page {
        
        switch (firstChoice, secondChoice) {
        case (.some, .some): break
        case (.none, .some), (.none, .none): firstChoice = (title, page)
        case (.some, .none): secondChoice = (title, page)
        }
        
        return page
    }
}






























