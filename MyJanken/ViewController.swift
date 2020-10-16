//
//  ViewController.swift
//  MyJanken
//
//  Created by 岩渕真未 on 2020/10/16.
//  Copyright © 2020 岩渕真未. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var amswerImageView: UIImageView!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    var answerNumber = 0
    
    @IBAction func shuffleAction(_ sender: Any) {
        
        var newAnswerNumber = 0
        
        repeat {
            
            newAnswerNumber = Int.random(in: 0..<3)
        
        } while answerNumber == newAnswerNumber
        
        answerNumber = newAnswerNumber
            
        if answerNumber == 0{
        answerLabel.text = "グー "
        amswerImageView.image = UIImage(named:"gu")
    
        } else if answerNumber == 1{
            
            answerLabel.text = "チョキ"
            amswerImageView.image = UIImage(named:"choki")
            
        } else if answerNumber == 2{
            
            answerLabel.text = "パー"
            amswerImageView.image = UIImage(named:"pa")
            
        }
        
    }
    
}

