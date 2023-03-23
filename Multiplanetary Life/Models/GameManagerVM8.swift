//
//  GameManagerVM8.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import Foundation
import SwiftUI

class GameManagerVM8 : ObservableObject {

    static var currentIndex = 0
    
    static func createGameModel(i:Int) -> Quiz {
        return Quiz(currentQuestionIndex: i, quizModel: quizData8[i])
    }
    
    @Published var model = GameManagerVM8.createGameModel(i: GameManagerVM8.currentIndex)
    
    
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
                    if (GameManagerVM8.currentIndex < 2) {
                        GameManagerVM8.currentIndex = GameManagerVM8.currentIndex + 1
                        self.model = GameManagerVM8.createGameModel(i: GameManagerVM8.currentIndex)
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
        GameManagerVM8.currentIndex = 0
        model = GameManagerVM8.createGameModel(i: GameManagerVM8.currentIndex)
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

extension GameManagerVM8
{
    
    static var quizData8: [QuizModel] {
        [
            QuizModel(question: "How many Earth years does it take Neptune to orbit the Sun?", answer: "B", optionsList: [QuizOption(id: 41, optionId: "A", option: "12 years", color: Color.blue),
                                                                                            QuizOption(id: 42, optionId: "B", option: "165 years", color: Color.red),
                                                                                            QuizOption(id: 43, optionId: "C", option: "213 years", color: Color.gray),
                                                                                            QuizOption(id: 44, optionId: "D", option: "87 years", color: Color.yellow)]),
            
            QuizModel(question: "What color is Neptune?", answer: "D", optionsList: [QuizOption(id: 51, optionId: "A", option: "Red", color: Color.blue),
                                                                                                 QuizOption(id: 52, optionId: "B", option: "Yellow", color: Color.red),
                                                                                                 QuizOption(id: 53, optionId: "C", option: "Brown", color: Color.yellow),
                                                                                                 QuizOption(id: 54, optionId: "D", option: "Blue", color: Color.gray)]),
            
            
            QuizModel(question: "What is the average temperature on Neptune?", answer: "D", optionsList: [QuizOption(id: 61, optionId: "A", option: "-132°", color: Color.red),
                                                                                                QuizOption(id: 62, optionId: "B", option: "372°", color: Color.gray),
                                                                                                QuizOption(id: 63, optionId: "C", option: "-543°", color: Color.yellow),
                                                                                                QuizOption(id: 64, optionId: "D", option: "-373°", color: Color.blue)])
        
        ]
    }
}
