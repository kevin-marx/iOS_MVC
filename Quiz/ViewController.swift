//
//  Modified from iOS Programming, Big Nerd Ranch
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    //Quiz Model moved to the Quiz class, create a new object reference here
    let quizzy:Quiz = Quiz()
    var currentQuestionIndex: Int = 0
    
    //TODO : Modify the functions below to use the quizzy object's properties and methods instead of the array values
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = quizzy.question(number: currentQuestionIndex) //The questions array has been moved to the quiz class, use the quizzy reference to access it
    }
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        // Go back to 0 if the index = count
        currentQuestionIndex = currentQuestionIndex % quizzy.count
        
        let question: String = quizzy.question(number: currentQuestionIndex)
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = quizzy.answer(number: currentQuestionIndex) //The answers array has been moved to the quiz class, use the quizzy reference to access it
        answerLabel.text = answer
    }

}

