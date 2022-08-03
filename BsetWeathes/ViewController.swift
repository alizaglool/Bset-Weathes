//
//  ViewController.swift
//  BsetWeathes
//
//  Created by Zaghloul on 8/6/19.
//  Copyright © 2019 AliZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    
    var gender = ["male","Female","Other"]

    @IBOutlet weak var laAge: UITextField!
    @IBOutlet weak var laheight: UITextField!
    @IBOutlet weak var laDisplayBest: UILabel!
    
    @IBOutlet weak var laChoosegender: UILabel!
    @IBOutlet weak var PickGender: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        PickGender.dataSource = self
        PickGender.delegate = self
        // Do any additional setup after loading the view.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gender.count
    }
    var Choosegender = 0
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        Choosegender = row
        return gender[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        laChoosegender.text = gender[row]
    }
    @IBAction func buBestWeight(_ sender: Any) {
        let age:Int = Int ( laAge.text!)!
        let height:Int = Int ( laheight.text!)!
        var BestWeight = height*5 - age/5
        
        if Choosegender == 0 {
            BestWeight+=10
        }else{
            BestWeight-=10
        }
        
        laDisplayBest.text = "The Best Weight \(BestWeight)"
        
    }
    
}

