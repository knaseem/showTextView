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
    
    var outputMessage = String()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        textViewOutput.text = outputMessage
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
