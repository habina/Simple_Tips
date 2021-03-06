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
    @IBOutlet weak var settingTitleLabel: UILabel!
    @IBOutlet weak var tip1TextLabel: UILabel!
    @IBOutlet weak var tip2TextLabel: UILabel!
    @IBOutlet weak var tip3TextLabel: UILabel!
    @IBOutlet weak var themeTextLabel: UILabel!
    @IBOutlet weak var themeToggle: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("DEBUG: setting view will appear")
        // load initial value
        let defaults = UserDefaults.standard
        
        let isDarkTheme = defaults.bool(forKey: "theme")
        if !isDarkTheme {
            Style.themeLight()
        } else {
            Style.themeDark()
        }
        
        self.view.backgroundColor = Style.sectionHeaderBackgroundColor
        self.view.alpha = Style.sectionHeaderAlpha
        
        settingTitleLabel.textColor = Style.sectionHeaderTitleColor
        settingTitleLabel.font = Style.sectionHeaderTitleFont
        
        tip1TextLabel.textColor = Style.sectionHeaderTitleColor
        tip1TextLabel.font = Style.sectionHeaderTitleFont
        
        tip2TextLabel.textColor = Style.sectionHeaderTitleColor
        tip2TextLabel.font = Style.sectionHeaderTitleFont
        
        tip3TextLabel.textColor = Style.sectionHeaderTitleColor
        tip3TextLabel.font = Style.sectionHeaderTitleFont
        
        themeTextLabel.textColor = Style.sectionHeaderTitleColor
        themeTextLabel.font = Style.sectionHeaderTitleFont
        
        themeToggle.setOn(defaults.bool(forKey: "theme"), animated: true)
        
        let rate1 = defaults.double(forKey: "rate1")
        let rate2 = defaults.double(forKey: "rate2")
        let rate3 = defaults.double(forKey: "rate3")

        tipText1.text = String(rate1)
        tipText2.text = String(rate2)
        tipText3.text = String(rate3)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("DEBUG: setting view did appear")
        self.settingTitleLabel.alpha = 1
        UIView.animate(withDuration: 1.5, animations: {
            self.settingTitleLabel.alpha = 0.1
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tip1OnEnd(_ sender: AnyObject) {
        let defaults = UserDefaults.standard
        let oldRate = defaults.double(forKey: "rate1")
        var rate1 = Double(tipText1.text!) ?? oldRate
        if (rate1 > 1) {
            rate1 = rate1 / 100
        }
        defaults.set(rate1, forKey: "rate1")
        defaults.set(true, forKey: "isUpdate")
        tipText1.text = String(rate1)
        print("DEBUG: rate1: ", rate1)
    }

    @IBAction func tip2OnEnd(_ sender: AnyObject) {
        let defaults = UserDefaults.standard
        let oldRate = defaults.double(forKey: "rate2")
        var rate2 = Double(tipText2.text!) ?? oldRate
        if (rate2 > 1) {
            rate2 = rate2 / 100
        }
        defaults.set(rate2, forKey: "rate2")
        defaults.set(true, forKey: "isUpdate")
        tipText2.text = String(rate2)
        print("DEBUG: rate2: ", rate2)
    }
    
    @IBAction func tip3OnEnd(_ sender: AnyObject) {
        let defaults = UserDefaults.standard
        let oldRate = defaults.double(forKey: "rate3")
        var rate3 = Double(tipText3.text!) ?? oldRate
        if (rate3 > 1) {
            rate3 = rate3 / 100
        }
        defaults.set(rate3, forKey: "rate3")
        defaults.set(true, forKey: "isUpdate")
        tipText3.text = String(rate3)
        print("DEBUG: rate3: ", rate3)
    }
    
    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func onTapSave(_ sender: AnyObject) {
        print("DEBUG: tap save")
    }
    
    @IBAction func onTapClear(_ sender: AnyObject) {
        print("DEBUG: tap clear")
        tipText1.text = ""
        tipText2.text = ""
        tipText3.text = ""
    }

    @IBAction func onChangeThemeToggle(_ sender: AnyObject) {
        let defaults = UserDefaults.standard
        defaults.set(!defaults.bool(forKey: "theme"), forKey: "theme")
        self.viewWillAppear(true)
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
