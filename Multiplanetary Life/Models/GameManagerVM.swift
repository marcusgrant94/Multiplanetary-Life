//
//  GameManagerVM.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import Foundation
import SwiftUI

class GameManagerVM : ObservableObject {

    static var currentIndex = 0
    
    static func createGameModel(i:Int) -> Quiz {
        return Quiz(currentQuestionIndex: i, quizModel: quizData[i])
    }
    
    @Published var model = GameManagerVM.createGameModel(i: GameManagerVM.currentIndex)
    
    
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
                    if (GameManagerVM.currentIndex < 3) {
                        GameManagerVM.currentIndex = GameManagerVM.currentIndex + 1
                        self.model = GameManagerVM.createGameModel(i: GameManagerVM.currentIndex)
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
        GameManagerVM.currentIndex = 0
        model = GameManagerVM.createGameModel(i: GameManagerVM.currentIndex)
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

extension GameManagerVM
{
    static var quizData: [QuizModel] {
        [
            QuizModel(question: "How long is a day on Mercury?", answer: "B", optionsList: [QuizOption(id: 41, optionId: "A", option: "109", color: Color.blue),
                                                                                            QuizOption(id: 42, optionId: "B", option: "59", color: Color.red),
                                                                                            QuizOption(id: 43, optionId: "C", option: "30", color: Color.gray),
                                                                                            QuizOption(id: 44, optionId: "D", option: "21", color: Color.yellow)]),
            
            QuizModel(question: "What is the axial tilt of Mercury?", answer: "D", optionsList: [QuizOption(id: 51, optionId: "A", option: "90°", color: Color.blue),
                                                                                                 QuizOption(id: 52, optionId: "B", option: "54°", color: Color.red),
                                                                                                 QuizOption(id: 53, optionId: "C", option: "25°", color: Color.yellow),
                                                                                                 QuizOption(id: 54, optionId: "D", option: "No Tilt", color: Color.gray)]),
            
            
            QuizModel(question: "How many moons does Mercury have?", answer: "A", optionsList: [QuizOption(id: 61, optionId: "A", option: "None", color: Color.red),
                                                                                                QuizOption(id: 62, optionId: "B", option: "1", color: Color.gray),
                                                                                                QuizOption(id: 63, optionId: "C", option: "2", color: Color.yellow),
                                                                                                QuizOption(id: 64, optionId: "D", option: "3", color: Color.blue)]),
            QuizModel(question: "Does Mercury have an atmosphere?.", answer: "B", optionsList: [QuizOption(id: 71, optionId: "A", option: "Yes", color: Color.gray),
                                                                                                                                                                   QuizOption(id: 72, optionId: "B", option: "No", color: Color.black)])
        
        ]
    }
}
