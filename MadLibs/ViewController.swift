//
//  ViewController.swift
//  MadLibs
//
//  Created by Ashwin Mahesh on 7/9/18.
//  Copyright © 2018 AshwinMahesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var noun:String=""
    var verb1:String=""
    var verb2:String=""
    var adj:String=""

    @IBOutlet weak var madLib: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        madLib.text=""
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func writePushed(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "WriteSegue", sender: nil)
    }
    @IBAction func unwindToMainVC(segue:UIStoryboardSegue){
        print("Going back to main")
        print(segue.identifier)
        if segue.identifier=="ReturnSegue"{
            let src = segue.source as! MakerVC
            noun=src.nounField.text!
            verb1=src.verb1Field.text!
            verb2=src.verb2Field.text!
            adj=src.adjField.text!
            print("Results: ",noun, verb1, adj, verb2)
            madLib.text="The fergalicious \(noun) was \(verb1) when he witnessed a \(adj) Michael Choi \(verb2)."
        }
    }
    
}

