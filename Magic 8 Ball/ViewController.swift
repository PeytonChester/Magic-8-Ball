//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Peyton Chester on 5/17/19.
//  Copyright © 2019 Peyton Chester. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let answerArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var answer: Int = 0

    @IBOutlet weak var magicBall: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        getAnswer()
    }

    @IBAction func askButton(_ sender: Any) {
        getAnswer()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        getAnswer()
    }
    
    func getAnswer() {
        answer = Int.random(in: 0 ... 4)
        
        magicBall.image = UIImage(named: answerArray[answer])
    }
    
}

