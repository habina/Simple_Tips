//
//  ViewController.swift
//  caltip
//
//  Created by Chen, Dasheng on 9/15/16.
//  Copyright © 2016 Chen, Dasheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var titleLabel: UILabel!
    
    var tipPercentages = [Double]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let defaults = UserDefaults.standard
        let isFirstLaunch = defaults.bool(forKey: "fisrtLaunch")
        if !isFirstLaunch {
            print("first laucnh")
            defaults.set(true, forKey: "firstLaunch")
            defaults.set(false, forKey: "isUpdate")

            let initTipRate = [0.18, 0.20, 0.25]
            defaults.set(initTipRate[0], forKey: "rate1")
            defaults.set(initTipRate[1], forKey: "rate2")
            defaults.set(initTipRate[2], forKey: "rate3")

            tipPercentages.append(initTipRate[0])
            tipPercentages.append(initTipRate[1])
            tipPercentages.append(initTipRate[2])
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        let defaults = UserDefaults.standard
        if defaults.bool(forKey: "isUpdate") {
            // TODO: update UI view
            defaults.set(false, forKey: "isUpdate")
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
        self.titleLabel.alpha = 1
        UIView.animate(withDuration: 0.4, animations: {
            self.titleLabel.alpha = 0
            })
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func calculateTip(_ sender: AnyObject) {
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * self.tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip

        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "%.2f", total)
    }

}

