//
//  ViewController.swift
//  PilotQuiz
//
//  Created by Steven Douglas Olson on 10/24/14.
//  Copyright (c) 2014 seriousminion. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var currentQuestionIndex = 0;
    var questions = [String]();
    var answers = [String]();
    

    @IBOutlet weak var questionText: UITextView!
  
    @IBOutlet weak var answerText: UITextView!
   
    
    @IBAction func questionView(sender: AnyObject) {
        rotateQA()
        questionText.text = questions[currentQuestionIndex]
        answerText.text = ""
    }
    @IBAction func answerView(sender: AnyObject) {
        
        answerText.text = answers[currentQuestionIndex]
   
    }

    
    func rotateQA(){
        currentQuestionIndex++
        if(currentQuestionIndex >= questions.count){
            currentQuestionIndex = 0
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.questions = ["Is there a reminder associated with the Perform element of the 3P model",
            "Describe the 3P model used in Aeronautical Decision Making.",
            "What is the rule of thumb when working with the processing phase of the 3P model",
            "In respect to PAVE, what is the question we want to ask ourselves as it pertains to each point",
            "The 3P model is associated with another acronym, PAVE. What does PAVE indicate",
            "How would the 3P model come into play if you suspected an instrument failure in flight7 ",
            "What is the Visibility and Cloud Clearance Requirements for B AirSpace?",
            "What is the Visibility and Cloud Clearance Requirements for C AirSpace?",
            "What is the Visibility and Cloud Clearance Requirements for D AirSpace?",
            "What is the Visibility and Cloud Clearance Requirements for E AirSpace?",
            "What is the Visibility and Cloud Clearance Requirements for G AirSpace?" ]
        
        self.answers = ["Yes, it's ME. That stands for Mitigate (or eliminate) the risk, then Evaluate the outcome of your actions",
            "Perceive, process, and perform are the three components of the 3P model.",
            "If you find yourself thinking that you'll probably be okay on a given flight, that is a good indication that you really need to take time out  for a reality check. Probably being okay is not a good starting point for any night, nor is it an effective approach to risk management",
            "For each element of PAVE, the pilot should ask,\"What could hurt me, my passengers, or my aircraft?\"PAVE is a defensive tool.",
            "PAVE is a reminder that makes it possible for the pilot to evaluate the various aspects that make up a successful flight. PAVE is a means of evaluating the Pilot, Aircraft, environment, and ExternalPressures associated with the flight in an organized manner.",
            "Perceive ; I would recognize if a conflict existed between supporting instruments that suggested a potential failure Process ; I would determine how significant an effect this potential failure would have on flight safety. For instance, if the failure is in the VSI, it would be a minor issue, while if the failure was of the altimeter, that would be a significantly more important issue. Perform ; I would verify the failure and implement the best possible course of action to either continue the flight safely or terminate the flight early in the interest of safety. ",
            "3 SM visibility, Clear of Clouds",
            "3 SM visibility, 1000' Above, 500' Below and 2000' Horizontal",
            "Same as C: 3 SM visibility, 1000' Above, 500' Below and 2000' Horizontal",
            "Below 10000 feet MSL:3 152; Above 10000 feet 5 111",
            "Above 1200 and 10000 MSL Day: 5 111, Night: 5 111; Above 1200 and Below 10000 MSL Day: 1 152, Night: 3 1-5-2; Below 1200 Day: 1 Clear of Clouds, Night 3 1-5-2"]
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

