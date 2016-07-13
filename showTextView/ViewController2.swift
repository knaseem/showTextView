//
//  ViewController2.swift
//  showTextView
//
//  Created by Khalid Naseem on 08/07/2016.
//  Copyright © 2016 Khalid Naseem. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var textViewOutput: UITextView!
    
    
   // var outputMessage = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fileManager = NSFileManager.defaultManager()
        
        do {
            let documents = try fileManager.URLForDirectory(NSSearchPathDirectory.DocumentDirectory, inDomain: NSSearchPathDomainMask.UserDomainMask, appropriateForURL: nil, create: false)
            
            let url = NSURL(string: "test_document.txt", relativeToURL: documents)
            if let url = url {
                //try stringToWrite.writeToURL(url, atomically: true, encoding: NSUTF8StringEncoding)
                textViewOutput.text = try String(contentsOfURL: url)
            }
            
            
        } catch {
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
