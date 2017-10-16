//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Josephine  on 31/8/17.
//  Copyright © 2017 Josephine . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var EmojiMainTable: UITableView!
    
    var emojis : [Emoji] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
            EmojiMainTable.dataSource = self
            EmojiMainTable.delegate = self
            emojis = makeEmojiArray()
        
    }
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return emojis.count
            
    }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
            let cell = UITableViewCell()
            let emoji = emojis[indexPath.row]
            cell.textLabel?.text = emoji.stringEmoji
            return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
       tableView.deselectRow(at: indexPath, animated: true)
        
        let emoji = emojis[indexPath.row]
        
        performSegue(withIdentifier: "moveSeque", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        
        defVC.emoji = sender as! Emoji
        
      
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray ()
         -> [Emoji] {
            let emoji1 = Emoji()
            emoji1.stringEmoji = "😀"
            emoji1.category = "Smiley"
            emoji1.definition = "Original smiley face"
            emoji1.birthYear = 1999
            
            let emoji2 = Emoji()
            emoji2.stringEmoji = "😮"
            emoji2.category = "Smiley"
            emoji2.definition = "Surprised face"
            emoji2.birthYear = 2005
            
            let emoji3 = Emoji()
            emoji3.stringEmoji = "😛"
            emoji3.category = "Smiley"
            emoji3.definition = "Cheekyface"
            emoji3.birthYear = 2007
            
            let emoji4 = Emoji()
            emoji4.stringEmoji = "😳"
            emoji4.category = "Smiley"
            emoji4.definition = "Worried face"
            emoji4.birthYear = 2011
            
           
            let emoji5 = Emoji()
            emoji5.stringEmoji = "💩"
            emoji5.category = "Smiley"
            emoji5.definition = "Poo face"
            emoji5.birthYear = 2016
            
            let emoji6 = Emoji()
            emoji6.stringEmoji = "🐹"
            emoji6.category = "Animal"
            emoji6.definition = "Hamster face"
            emoji6.birthYear = 2017
            
            let emoji7 = Emoji()
            emoji7.stringEmoji = "🤠"
            emoji7.category = "Smiley"
            emoji7.definition = "Cowboy face"
            emoji7.birthYear = 2015
            
            return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7]
            
           
    }

}

