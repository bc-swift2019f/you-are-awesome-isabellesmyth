//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Isabelle Smyth on 9/2/19.
//  Copyright © 2019 Isabelle Smyth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
    @IBAction func showMessagePressed(_ sender: UIButton) {
        let message1 = "You Are Awesome!"
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
        messageLabel.textColor = UIColor.red

    }
    
   
    
}

