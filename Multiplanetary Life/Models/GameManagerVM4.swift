//
//  GameManagerVM4.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import Foundation
import SwiftUI

class GameManagerVM4 : ObservableObject {

    static var currentIndex = 0
    
    static func createGameModel(i:Int) -> Quiz {
        return Quiz(currentQuestionIndex: i, quizModel: quizData4[i])
    }
    
    @Published var model = GameManagerVM4.createGameModel(i: GameManagerVM4.currentIndex)
    
    
    var timer = Timer()
    var maxProgress = 25
    @Published var progress = 0
    
    init() {
        self.start()
    }
    
    func verifyAnswer(selectedOption: QuizOption) {
        for index in model.quizModel.optionsList.indices {
            model.quizModel.optionsList[index].isMatched = false
            model.quizModel.optionsList[index].isSelected = false
            
        }
        if let index = model.quizModel.optionsList.firstIndex(where: {$0.optionId == selectedOption.optionId}) {
            if selectedOption.optionId ==  model.quizModel.answer {
                model.quizModel.optionsList[index].isMatched = true
                model.quizModel.optionsList[index].isSelected = true
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    if (GameManagerVM4.currentIndex < 3) {
                        GameManagerVM4.currentIndex = GameManagerVM4.currentIndex + 1
                        self.model = GameManagerVM4.createGameModel(i: GameManagerVM4.currentIndex)
                    } else {
                        self.model.quizCompleted = true
                        self.model.quizWinningStatus = true
                        self.reset()
                    }
                }
            } else {
                model.quizModel.optionsList[index].isMatched = false
                model.quizModel.optionsList[index].isSelected = true
            }

        }
    }
    
    func restartGame() {
        GameManagerVM4.currentIndex = 0
        model = GameManagerVM4.createGameModel(i: GameManagerVM4.currentIndex)
        self.start()
    }
    
    func start() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats:true, block: { time in
            if self.progress == self.maxProgress {
                self.model.quizCompleted = true
                self.model.quizWinningStatus = false
                self.reset()
            } else {
                self.progress += 1
            }
        })
    }
                                     
    func reset () {
        timer.invalidate()
        self.progress = 0
    }
    
                                     
                                     
                                     
                                

}

extension GameManagerVM4
{
    
    static var quizData4: [QuizModel] {
        [
            QuizModel(question: "How close is Mars from the Sun?", answer: "A", optionsList: [QuizOption(id: 41, optionId: "A", option: "Fourth Planet", color: Color.blue),
                                                                                            QuizOption(id: 42, optionId: "B", option: "First Planet", color: Color.red),
                                                                                            QuizOption(id: 43, optionId: "C", option: "Sixth Planet", color: Color.gray),
                                                                                            QuizOption(id: 44, optionId: "D", option: "Third Planet", color: Color.yellow)]),
            
            QuizModel(question: "What is a way we can heat Mars to make it colonizable?", answer: "D", optionsList: [QuizOption(id: 51, optionId: "A", option: "Impossible", color: Color.blue),
                                                                                                 QuizOption(id: 52, optionId: "B", option: "Generators", color: Color.red),
                                                                                                 QuizOption(id: 53, optionId: "C", option: "Manual Heating", color: Color.yellow),
                                                                                                 QuizOption(id: 54, optionId: "D", option: "Nuke Mars", color: Color.gray)]),
            
            
            QuizModel(question: "What does Mars atmosphere consist of?", answer: "C", optionsList: [QuizOption(id: 61, optionId: "A", option: "Methane", color: Color.red),
                                                                                                QuizOption(id: 62, optionId: "B", option: "Hydrogen", color: Color.gray),
                                                                                                QuizOption(id: 63, optionId: "C", option: "Carbon Dioxide", color: Color.yellow),
                                                                                                QuizOption(id: 64, optionId: "D", option: "Helium", color: Color.blue)]),
            
            QuizModel(question: "There are no definitive signs of life on Mars.", answer: "A", optionsList: [QuizOption(id: 71, optionId: "A", option: "True", color: Color.black),
                                                                                                             QuizOption(id: 72, optionId: "B", option: "False", color: Color.gray)])
        
        ]
    }
}
