//
//  ViewController.swift
//  SimpleQuizz
//
//  Created by epita on 02/04/2019.
//  Copyright © 2019 3ie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var buttonShowQuestion: UIButton!
    @IBOutlet weak var labelQuestion: UILabel!
    @IBOutlet weak var buttonShowAnswer: UIButton!
    @IBOutlet weak var answerLabel: UILabel!
    var curQuestionsIndex: Int = 0
    var questions: [String] = ["What is 7 + 7?", "What is the capital of France?", "From what is cognac made of?"]
    var answers: [String] = ["14", "Paris", "Grapes"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showQuestionClick(_ sender: Any) {
        let question: String = questions[curQuestionsIndex]
        debugPrint("displaying question: \(question)")
        debugPrint("displaying question: \(curQuestionsIndex)")
        self.labelQuestion.text = question
        self.answerLabel.text = "???"
        curQuestionsIndex = curQuestionsIndex + 1
        
    }
    
    @IBAction func showAnswerClick(_ sender: Any) {
        debugPrint("displaying question: \(curQuestionsIndex)")
        let answer: String = answers[curQuestionsIndex - 1]
        debugPrint("displaying answer: \(answer)")
        self.answerLabel.text = answer
        if (curQuestionsIndex==3) {
            curQuestionsIndex = 0
        }
    }
}
