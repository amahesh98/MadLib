//
//  MakerVC.swift
//  MadLibs
//
//  Created by Ashwin Mahesh on 7/9/18.
//  Copyright © 2018 AshwinMahesh. All rights reserved.
//

import UIKit

class MakerVC: UIViewController {
    
    @IBOutlet var textFields: [UITextField]!
    @IBOutlet weak var nounField: UITextField!
    @IBOutlet weak var verb1Field: UITextField!
    @IBOutlet weak var adjField: UITextField!
    @IBOutlet weak var verb2Field: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func submitPushed(_ sender: UIButton) {
//        Checks to prevent empty input
        for textField in textFields{
            if let text = textField.text{
                if text.count==0{
                    return
                }
                var allSpaces=true
                for char in text{
                    if char != " "{
                        allSpaces=false
                    }
                }
                if allSpaces{
                    return
                }
            }
            else{
                return
            }
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
