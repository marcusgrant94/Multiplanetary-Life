//
//  GameManagerVM3.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import Foundation
import SwiftUI

class GameManagerVM3 : ObservableObject {

    static var currentIndex = 0
    
    static func createGameModel(i:Int) -> Quiz {
        return Quiz(currentQuestionIndex: i, quizModel: quizData3[i])
    }
    
    @Published var model = GameManagerVM3.createGameModel(i: GameManagerVM3.currentIndex)
    
    
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
                    if (GameManagerVM3.currentIndex < 3) {
                        GameManagerVM3.currentIndex = GameManagerVM3.currentIndex + 1
                        self.model = GameManagerVM3.createGameModel(i: GameManagerVM3.currentIndex)
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
        GameManagerVM3.currentIndex = 0
        model = GameManagerVM3.createGameModel(i: GameManagerVM3.currentIndex)
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

extension GameManagerVM3
{
    
    static var quizData3: [QuizModel] {
        [
            QuizModel(question: "How old is the Earth?", answer: "B", optionsList: [QuizOption(id: 41, optionId: "A", option: "2 billion years", color: Color.blue),
                                                                                            QuizOption(id: 42, optionId: "B", option: "4 billion years", color: Color.red),
                                                                                            QuizOption(id: 43, optionId: "C", option: "7 billion years", color: Color.gray),
                                                                                            QuizOption(id: 44, optionId: "D", option: "5 billion years", color: Color.yellow)]),
            
            QuizModel(question: "What is the axial tilt of Earth?", answer: "A", optionsList: [QuizOption(id: 51, optionId: "A", option: "23.5°", color: Color.blue),
                                                                                                 QuizOption(id: 52, optionId: "B", option: "None", color: Color.red),
                                                                                                 QuizOption(id: 53, optionId: "C", option: "50.8°", color: Color.yellow),
                                                                                                 QuizOption(id: 54, optionId: "D", option: "15.7°", color: Color.gray)]),
            
            
            QuizModel(question: "What is the escape velocity of Earth?", answer: "C", optionsList: [QuizOption(id: 61, optionId: "A", option: "54.121 km/s", color: Color.red),
                                                                                                QuizOption(id: 62, optionId: "B", option: "15.431 km/s", color: Color.gray),
                                                                                                QuizOption(id: 63, optionId: "C", option: "11.186 km/s", color: Color.yellow),
                                                                                                QuizOption(id: 64, optionId: "D", option: "12.418 km/s", color: Color.blue)]),
    
                                                                                                   
                                                                                                    QuizModel(question: "Is the Earth flat?", answer: "B", optionsList: [QuizOption(id: 71, optionId: "A", option: "Yes", color: Color.gray),
                                                                                                                                                                         QuizOption(id: 72, optionId: "B", option: "No", color: Color.black)])
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                
        
        ]
    }
}
