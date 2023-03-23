//
//  GameManagerVM2.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import Foundation
import SwiftUI

class GameManagerVM2 : ObservableObject {

    static var currentIndex = 0
    
    static func createGameModel(i:Int) -> Quiz {
        return Quiz(currentQuestionIndex: i, quizModel: quizData2[i])
    }
    
    @Published var model = GameManagerVM2.createGameModel(i: GameManagerVM2.currentIndex)
    
    
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
                    if (GameManagerVM2.currentIndex < 3) {
                        GameManagerVM2.currentIndex = GameManagerVM2.currentIndex + 1
                        self.model = GameManagerVM2.createGameModel(i: GameManagerVM2.currentIndex)
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
        GameManagerVM2.currentIndex = 0
        model = GameManagerVM2.createGameModel(i: GameManagerVM2.currentIndex)
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

extension GameManagerVM2
{
    
    static var quizData2: [QuizModel] {
        [
            QuizModel(question: "What is the average temperature on Venus?", answer: "C", optionsList: [QuizOption(id: 41, optionId: "A", option: "210°", color: Color.blue),
                                                                                            QuizOption(id: 42, optionId: "B", option: "400°", color: Color.red),
                                                                                            QuizOption(id: 43, optionId: "C", option: "900°", color: Color.gray),
                                                                                            QuizOption(id: 44, optionId: "D", option: "650°", color: Color.yellow)]),
            
            QuizModel(question: "Why can't we ever colonize Venus?", answer: "D", optionsList: [QuizOption(id: 51, optionId: "A", option: "Too Cold", color: Color.blue),
                                                                                                 QuizOption(id: 52, optionId: "B", option: "Too Small", color: Color.red),
                                                                                                 QuizOption(id: 53, optionId: "C", option: "No Surface", color: Color.yellow),
                                                                                                 QuizOption(id: 54, optionId: "D", option: "Too Hot", color: Color.gray)]),
            
            
            QuizModel(question: "What space orginazation has previously traveled to Venus?", answer: "C", optionsList: [QuizOption(id: 61, optionId: "A", option: "NASA", color: Color.red),
                                                                                                QuizOption(id: 62, optionId: "B", option: "SpaceX", color: Color.gray),
                                                                                                QuizOption(id: 63, optionId: "C", option: "SovietUnion", color: Color.yellow),
                                                                                                QuizOption(id: 64, optionId: "D", option: "JAXA", color: Color.blue),]),
            QuizModel(question: "What is it called when Venus passes in front of the Sun?", answer: "C", optionsList: [QuizOption(id: 71, optionId: "A", option: "Transit", color: Color.gray),
                                                                                                                                                    QuizOption(id: 72, optionId: "B", option: "Conjunction", color: Color.black),
                                                                                                                                                    QuizOption(id: 73, optionId: "C", option: "Eclipse", color: Color.blue),
                                                                                                                                                    QuizOption(id: 74, optionId: "D", option: "Nothing", color: Color.yellow)])
        
        ]
    }
}
