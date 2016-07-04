//
//  ViewController.swift
//  showTextView
//
//  Created by Khalid Naseem on 03/07/2016.
//  Copyright © 2016 Khalid Naseem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    @IBAction func saveButton(sender: UIBarButtonItem) {
        let fileManager = NSFileManager.defaultManager()
        do {
            let documents = try fileManager.URLForDirectory(NSSearchPathDirectory.DocumentDirectory, inDomain: NSSearchPathDomainMask.UserDomainMask, appropriateForURL: nil, create: false)
            
           
        } catch {
            print("Error getting path")
        }
        
        let savedText = textView.text
        print(savedText)
    }
    
    
}

    




