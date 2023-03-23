//
//  GameManagerVM6.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import Foundation
import SwiftUI

class GameManagerVM6 : ObservableObject {

    static var currentIndex = 0
    
    static func createGameModel(i:Int) -> Quiz {
        return Quiz(currentQuestionIndex: i, quizModel: quizData6[i])
    }
    
    @Published var model = GameManagerVM6.createGameModel(i: GameManagerVM6.currentIndex)
    
    
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
                    if (GameManagerVM6.currentIndex < 2) {
                        GameManagerVM6.currentIndex = GameManagerVM6.currentIndex + 1
                        self.model = GameManagerVM6.createGameModel(i: GameManagerVM6.currentIndex)
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
        GameManagerVM6.currentIndex = 0
        model = GameManagerVM6.createGameModel(i: GameManagerVM6.currentIndex)
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

extension GameManagerVM6
{
    
    static var quizData6: [QuizModel] {
        [
            QuizModel(question: "What is the name of one of Saturn's moons?", answer: "C", optionsList: [QuizOption(id: 41, optionId: "A", option: "No moons", color: Color.blue),
                                                                                            QuizOption(id: 42, optionId: "B", option: "Io", color: Color.red),
                                                                                            QuizOption(id: 43, optionId: "C", option: "Titan", color: Color.gray),
                                                                                            QuizOption(id: 44, optionId: "D", option: "Callisto", color: Color.yellow)]),
            
            QuizModel(question: "How long is a year on Saturn in Earth years?", answer: "A", optionsList: [QuizOption(id: 51, optionId: "A", option: "29 years", color: Color.blue),
                                                                                                 QuizOption(id: 52, optionId: "B", option: "150 years", color: Color.red),
                                                                                                 QuizOption(id: 53, optionId: "C", option: "10 years", color: Color.yellow),
                                                                                                 QuizOption(id: 54, optionId: "D", option: "32 years", color: Color.gray)]),
            
            
            QuizModel(question: "What are Saturn's rings made of?", answer: "D", optionsList: [QuizOption(id: 61, optionId: "A", option: "Nitrogen", color: Color.red),
                                                                                                QuizOption(id: 62, optionId: "B", option: "Carbon Dioxide", color: Color.gray),
                                                                                                QuizOption(id: 63, optionId: "C", option: "Hydrogen", color: Color.yellow),
                                                                                                QuizOption(id: 64, optionId: "D", option: "Ice and Rock", color: Color.blue)])
        
        ]
    }
}
