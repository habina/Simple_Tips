//
//  SettingsViewController.swift
//  caltip
//
//  Created by Chen, Dasheng on 9/16/16.
//  Copyright © 2016 Chen, Dasheng. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipText1: UITextField!
    @IBOutlet weak var tipText2: UITextField!
    @IBOutlet weak var tipText3: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tipOnEnd(_ sender: AnyObject) {
        let rate1 = Double(tipText1.text!) ?? 0
        print(rate1)
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
