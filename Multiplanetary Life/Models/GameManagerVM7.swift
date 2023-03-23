//
//  GameManagerVM7.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import Foundation
import SwiftUI

class GameManagerVM7 : ObservableObject {

    static var currentIndex = 0
    
    static func createGameModel(i:Int) -> Quiz {
        return Quiz(currentQuestionIndex: i, quizModel: quizData7[i])
    }
    
    @Published var model = GameManagerVM7.createGameModel(i: GameManagerVM7.currentIndex)
    
    
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
                    if (GameManagerVM7.currentIndex < 2) {
                        GameManagerVM7.currentIndex = GameManagerVM7.currentIndex + 1
                        self.model = GameManagerVM7.createGameModel(i: GameManagerVM7.currentIndex)
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
        GameManagerVM7.currentIndex = 0
        model = GameManagerVM7.createGameModel(i: GameManagerVM7.currentIndex)
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

extension GameManagerVM7
{
    
    static var quizData7: [QuizModel] {
        [
            QuizModel(question: "What was the space probe that first flew by Uranus?", answer: "B", optionsList: [QuizOption(id: 41, optionId: "A", option: "Pioneer 11", color: Color.blue),
                                                                                            QuizOption(id: 42, optionId: "B", option: "Voyager 2", color: Color.red),
                                                                                            QuizOption(id: 43, optionId: "C", option: "Voyager 1", color: Color.gray),
                                                                                            QuizOption(id: 44, optionId: "D", option: "New Horizons", color: Color.yellow)]),
            
            QuizModel(question: "About how many Earths can fit in Uranus?", answer: "B", optionsList: [QuizOption(id: 51, optionId: "A", option: "12", color: Color.blue),
                                                                                                 QuizOption(id: 52, optionId: "B", option: "62", color: Color.red),
                                                                                                 QuizOption(id: 53, optionId: "C", option: "7", color: Color.yellow),
                                                                                                 QuizOption(id: 54, optionId: "D", option: "192", color: Color.gray)]),
            
            
            QuizModel(question: "What is Uranus's largest moon?", answer: "D", optionsList: [QuizOption(id: 61, optionId: "A", option: "Miranda", color: Color.red),
                                                                                                QuizOption(id: 62, optionId: "B", option: "Ariel", color: Color.gray),
                                                                                                QuizOption(id: 63, optionId: "C", option: "Puck", color: Color.yellow),
                                                                                                QuizOption(id: 64, optionId: "D", option: "Oberon", color: Color.blue)])
        
        ]
    }
}
