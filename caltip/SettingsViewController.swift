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
    
    @IBAction func tip1OnEnd(_ sender: AnyObject) {
        let defaults = UserDefaults.standard
        let oldRate = defaults.double(forKey: "rate1")
        let rate1 = Double(tipText1.text!) ?? oldRate
        defaults.set(rate1, forKey: "rate1")
        defaults.set(true, forKey: "isUpdate")
        print("rate1: ", rate1)
    }

    @IBAction func tip2OnEnd(_ sender: AnyObject) {
        let defaults = UserDefaults.standard
        let oldRate = defaults.double(forKey: "rate2")
        let rate2 = Double(tipText2.text!) ?? oldRate
        defaults.set(rate2, forKey: "rate2")
        defaults.set(true, forKey: "isUpdate")
        print("rate2: ", rate2)
    }
    
    @IBAction func tip3OnEnd(_ sender: AnyObject) {
        let defaults = UserDefaults.standard
        let oldRate = defaults.double(forKey: "rate3")
        let rate3 = Double(tipText3.text!) ?? oldRate
        defaults.set(rate3, forKey: "rate3")
        defaults.set(true, forKey: "isUpdate")
        print("rate3: ", rate3)
    }
    
    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func onTapSave(_ sender: AnyObject) {
        print("tap save")
    }
    
    @IBAction func onTapClear(_ sender: AnyObject) {
        print("tap clear")
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
