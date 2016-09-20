//
//  ViewController.swift
//  Routify
//
//  Created by Nguyen Le Trong Nhan on 9/20/16.
//  Copyright © 2016 Trong Nhan Nguyen. All rights reserved.
//

import UIKit
import Haneke
import AwesomeButton

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func touchBtn(sender: AwesomeButton) {
        
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        
        
        let view2 = storyBoard.instantiateViewControllerWithIdentifier("SecondViewController")
        
        self.presentViewController(view2, animated: true) {
            //
        }
        
    }

}

