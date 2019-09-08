//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Isabelle Smyth on 9/2/19.
//  Copyright © 2019 Isabelle Smyth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var index = 0
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
    @IBAction func showMessagePressed(_ sender: UIButton) {
        let messages = ["You are awesome!",
                        "You are great!",
                        "You are fantastic!",
                        "when the genius bar needs help they call you!",
                        "You brighten my day!",
                        "You make me smile!",
                        "you are da bomb!",
                        "hey,fabulous!",
                        "you are tremendous",
                        "you've got the design skills of jony ive!", "I can't wait to download your app!"]
        
        messageLabel.text = messages.randomElement()!
        
        
//        messageLabel.text = messages[index]
//        if index == messages.count - 1 {
//            index = 0
//        }
//
//        else {
//            index = index + 1
//        }
    
        /*
        let message1 = "You Are Fantastic!"
        let message2 = "You Are Great!"
        let message3 = "You Are Amazing"
        if messageLabel.text == message1 {
            messageLabel.text = message2
        }

        else if messageLabel.text == message2 {
            messageLabel.text = message3
        }
        else {
            messageLabel.text = message1
        }
 */
     

    }
    
   
    
}

