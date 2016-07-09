//
//  ViewController.swift
//  showTextView
//
//  Created by Khalid Naseem on 03/07/2016.
//  Copyright © 2016 Khalid Naseem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var showButton: UIBarButtonItem!
    @IBOutlet weak var textView: UITextView!
    
    @IBAction func saveButton(sender: UIBarButtonItem) {
        
        let fileManager = NSFileManager.defaultManager()
        do {
            let documents = try fileManager.URLForDirectory(NSSearchPathDirectory.DocumentDirectory, inDomain: NSSearchPathDomainMask.UserDomainMask, appropriateForURL: nil, create: false)
            print(documents)
            
            let url = NSURL(string: "test_document.txt", relativeToURL: documents)
            let savedText = textView.text
            // let stringToWrite = "This is the string to save to file"
            if let url = url {
                try savedText.writeToURL(url, atomically: true, encoding: NSUTF8StringEncoding)
            }
            
        } catch {
            print("Error getting path")
        }
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let secondViewController: ViewController2 = segue.destinationViewController as! ViewController2
        secondViewController.outputMessage = textView.text
    }
    
    
}






