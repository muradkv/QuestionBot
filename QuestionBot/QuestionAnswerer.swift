//
//  QuestionAnswerer.swift
//  QuestionBot
//
//  Created by murad on 16/06/2019.
//  Copyright © 2019 murad. All rights reserved.
//

import Foundation

class MyQuestionAnswerer {
    
    func responseTo(question: String) -> String {
        
        let lowerQuestion = question.lowercased()
        
        if lowerQuestion.hasPrefix("hello") {
            return "Of course, not hello to you! Go fuck yourself."
        } else if lowerQuestion.hasPrefix("when") {
            return "When Earth down"
        } else if lowerQuestion.hasPrefix("what") {
            return "What...what. Look at this another stupid human. Please, can you shut the fuck up your mouth, leather bag."
        } else {
            
            let defaultAnswer = question.count % 2
            
            if defaultAnswer == 0 {
                return "I don't understand, you piece of shit"
            } else {
                return "Oh, yes. Of course I have an aswer. SUCK MY DICK"
            }
        
        }
        
    }
    
}
