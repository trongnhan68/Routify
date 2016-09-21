//
//  ViewController.swift
//  Routify
//
//  Created by Nguyen Le Trong Nhan on 9/20/16.
//  Copyright © 2016 Trong Nhan Nguyen. All rights reserved.
//

import UIKit

import Firebase
import FirebaseStorage
import FirebaseDatabase

class BaseViewController: UIViewController {

    var leftButton:UIButton = UIButton(frame: CGRect(x: 10, y: 40, width: 50, height: 40))
    var rightButton:UIButton = UIButton(frame: CGRect(x: 10, y: 40, width: 50, height: 40))
    
    var ref: FIRDatabaseReference!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        commonInit()
        
        ref = FIRDatabase.database().reference()
    }
    func commonInit() -> Void {
        leftButton.backgroundColor = UIColor.blue
        leftButton.addTarget(self, action: #selector(BaseViewController.leftButtonClick(_:)), for: .touchUpInside)
        self.view.addSubview(leftButton)
    }

    func leftButtonClick(_ sender: AnyObject) -> Void {

        // Get files
        //        FIRStorage.storage().reference(forURL: "gs://routify-bb432.appspot.com/de thi.png").data(withMaxSize: INT64_MAX) { (respone, error) in
//            if (respone != nil) {
//                let image = UIImage.init(data: respone!)
//                print(respone);
//                
//            }
//        }
       // FIRDatabase.database().reference(fromURL: <#T##String#>)
        ref.child("users").child("User").setValue(["username": "Nhan"])
    }
    
    @IBAction func touchButton(_ sender: AnyObject) {
//        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
//        
//        
//        let view2 = storyBoard.instantiateViewController(withIdentifier: "SecondViewController")
//        
//        self.present(view2, animated: true) {
//            //
//        }

        
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

