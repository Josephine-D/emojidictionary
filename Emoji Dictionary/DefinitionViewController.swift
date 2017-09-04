//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Josephine  on 4/9/17.
//  Copyright © 2017 Josephine . All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "🐹" {
        definitionLabel.text = "A cute hamster"
        }
        if emoji == "😳" {
            definitionLabel.text = "A flushed face"
        }
        
        if emoji == "💩" {
            definitionLabel.text = "A poo ...eww"
        }
        if emoji == "🤠" {
            definitionLabel.text = "A cowboy face"
        }
        
        if emoji == "😃" {
            definitionLabel.text = "A grinning face"
        }
        
        if emoji == "😛" {
            definitionLabel.text = "A face with stuck out tongue"
        }
        if emoji == "😮" {
            definitionLabel.text = "A surprised face"
        }
    }
        

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
