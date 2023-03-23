//
//  GameManagerVM5.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import Foundation
import SwiftUI

class GameManagerVM5 : ObservableObject {

    static var currentIndex = 0
    
    static func createGameModel(i:Int) -> Quiz {
        return Quiz(currentQuestionIndex: i, quizModel: quizData5[i])
    }
    
    @Published var model = GameManagerVM5.createGameModel(i: GameManagerVM5.currentIndex)
    
    
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
                    if (GameManagerVM5.currentIndex < 2) {
                        GameManagerVM5.currentIndex = GameManagerVM5.currentIndex + 1
                        self.model = GameManagerVM5.createGameModel(i: GameManagerVM5.currentIndex)
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
        GameManagerVM5.currentIndex = 0
        model = GameManagerVM5.createGameModel(i: GameManagerVM5.currentIndex)
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

extension GameManagerVM5
{
    
    static var quizData5: [QuizModel] {
        [
            QuizModel(question: "What is the great red spot on Jupiter?", answer: "D", optionsList: [QuizOption(id: 41, optionId: "A", option: "Unidentified", color: Color.blue),
                                                                                            QuizOption(id: 42, optionId: "B", option: "Volcano", color: Color.red),
                                                                                            QuizOption(id: 43, optionId: "C", option: "Crater", color: Color.gray),
                                                                                            QuizOption(id: 44, optionId: "D", option: "Storm", color: Color.yellow)]),
            
            QuizModel(question: "How many years has the great red spot been active?", answer: "C", optionsList: [QuizOption(id: 51, optionId: "A", option: "10 years", color: Color.blue),
                                                                                                 QuizOption(id: 52, optionId: "B", option: "150 years", color: Color.red),
                                                                                                 QuizOption(id: 53, optionId: "C", option: "340 years", color: Color.yellow),
                                                                                                 QuizOption(id: 54, optionId: "D", option: "510 years", color: Color.gray)]),
            
            
            QuizModel(question: "How many moons does Jupiter have?", answer: "D", optionsList: [QuizOption(id: 61, optionId: "A", option: "0", color: Color.red),
                                                                                                QuizOption(id: 62, optionId: "B", option: "52", color: Color.gray),
                                                                                                QuizOption(id: 63, optionId: "C", option: "100", color: Color.yellow),
                                                                                                QuizOption(id: 64, optionId: "D", option: "80", color: Color.blue)])
        
        ]
    }
}
