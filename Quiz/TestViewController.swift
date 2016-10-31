//
//  TestViewController.swift
//  Quiz
//
//  Created by Jake Johnson on 10/7/16.
//  Copyright © 2016 Jake Johnson. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    
    var currentQuestion = 0
    
    @IBOutlet var currentQuestionLabel: UILabel!
    
    @IBOutlet var questionText: UITextView!
    
    //Button Outlets
    @IBOutlet var AButton: UIButton!
    
    @IBOutlet var BButton: UIButton!
    
    @IBOutlet var CButton: UIButton!
    
    @IBOutlet var DButton: UIButton!
    
    
    //Label Outlets
    
    @IBOutlet var ALabel: UILabel!
    
    @IBOutlet var BLabel: UILabel!
    
    @IBOutlet var CLabel: UILabel!
    
    @IBOutlet var DLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        questionText.text = test.questions[currentQuestion].questions[0]
        ALabel.text = test.questions[currentQuestion].questions[1]
        BLabel.text = test.questions[currentQuestion].questions[2]
        CLabel.text = test.questions[currentQuestion].questions[3]
        DLabel.text = test.questions[currentQuestion].questions[4]
        
        currentQuestionLabel.text = "\(currentQuestion + 1)/\(test.questions.count)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func AButton(_ sender: AnyObject) {
        print("A button pressed")
      //  ALabel.text = "BPP \n bpp \n bpp \n bpp"
        answers(ans: 1)

        nextQuestion()
    }
    
    

    @IBAction func BButton(_ sender: AnyObject) {
        print("B button pressed")
     //   BLabel.text = "BPP \n bpp \n bpp \n bpp"
        answers(ans: 2)

        nextQuestion()
    }
    
    @IBAction func CButton(_ sender: AnyObject) {
        print("C button pressed")
    //    CLabel.text = "BPP \n bpp \n bpp \n bpp"
        answers(ans: 3)

        nextQuestion()
    }
    
    @IBAction func DButton(_ sender: AnyObject) {
        print("D button pressed")
      //  DLabel.text = "BPP \n bpp \n bpp \n bpp"
        answers(ans: 4)
        nextQuestion()
    }
    
    func nextQuestion(){
        currentQuestion += 1
        if currentQuestion < test.questions.count {
            questionText.text = test.questions[currentQuestion].questions[0]
            ALabel.text = test.questions[currentQuestion].questions[1]
            BLabel.text = test.questions[currentQuestion].questions[2]
            CLabel.text = test.questions[currentQuestion].questions[3]
            DLabel.text = test.questions[currentQuestion].questions[4]
            updateUI()
        } else {
            print("End of array!")
            //call show results function
            correctCheck()
            self.performSegue(withIdentifier: "endSegue", sender: self)
        }
    }
    
    func updateUI(){
        currentQuestionLabel.text = "\(currentQuestion + 1)/\(test.questions.count)"
        
    }
    
    
    func answers(ans: Int){
       // print(ans)
        answerArray.append(ans)
        for num in answerArray{
            print(num)
        }
    }
    

    //should make array length a final
        func correctCheck(){
            
            for index in 0...20{
                if answerArray[index] != test.questions[index].answer{
                    incorrectString.append( "\n\(test.questions[index].questions[0])")
                    incorrectString.append( "\n\(test.questions[index].questions[test.questions[index].answer])\n")
                    numberIncorrect = numberIncorrect + 1
                }
            }
            
    }

    
}//end class TestViewController

var answerArray = [Int]()
var incorrectString = ""
var numberIncorrect = 0
struct Question{
    var questions: [String]
    var answer: Int
    
    init(x: [String], y: Int){
        questions = x
        answer = y
    }
    
}

struct Test{
    var questions: [Question]
    
    init(x: [Question]){
        questions = x
    }
}


