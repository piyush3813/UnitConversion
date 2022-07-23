//
//  MainViewController.swift
//  Unit_Conversion
//
//  Created by piyush mishra on 13/07/22.
//

import UIKit

class MainViewController: UIViewController {
    
    
    @IBOutlet var FromSegment: UISegmentedControl!
    
    
    @IBOutlet var ToSegment: UISegmentedControl!
                                                
  

    @IBOutlet var InputTextField: UITextField!
    

    @IBOutlet var MainLabel: UILabel!
    
    
    var FromSegmentIndexOne = String()
    var FromSegmentIndexTwo = String()
    var ToSegmentIndexOne = String()
    var ToSegmentIndextwo = String()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        FromSegment.setTitle(FromSegmentIndexOne, forSegmentAt: 0)
        FromSegment.setTitle(FromSegmentIndexTwo, forSegmentAt: 1)
        ToSegment.setTitle(ToSegmentIndexOne, forSegmentAt: 0)
        ToSegment.setTitle(ToSegmentIndextwo, forSegmentAt: 1)
    }
    


    @IBAction func Calculate(_ sender: UIButton) {
        
        if InputTextField.text == ""{
            MainLabel.text = "Enter Value "
        }
        else{
            if let value =  Double(InputTextField.text!){
                print("\(value)")
                let answer = performConversion(From: FromSegment.titleForSegment(at: FromSegment.selectedSegmentIndex)!, To: ToSegment.titleForSegment(at: ToSegment.selectedSegmentIndex)!, TextField: value)
                
                MainLabel.text = answer
            }else{
                MainLabel.text = "Enter proper Value "
            }
            
//
//            let answer = performConversion(From: FromSegment.titleForSegment(at: FromSegment.selectedSegmentIndex)!, To: ToSegment.titleForSegment(at: ToSegment.selectedSegmentIndex)!, TextField: Double(from: InputTextField?.text ?? 1))
//
            
        }
    }
    
}



func performConversion(From f:String, To t:String, TextField num: Double) -> String {
    if(f == t){
        print("your from and to are same ")
    }
    else if f == "Dollar" && t == "IndianRupee"{
        let answer = "\(round(num * 79.64)) \(t)"
        return answer
    }
    else if f == "IndianRupee" && t == "Dollar"{
        let answer = "\(round(num * 0.013)) \(t)"
        return answer
    }
    
    else if f == "Meter" && t == "KiloMeter"{
        let answer = "\(round(num * 0.001)) \(t)"
        return answer
    }
    
    else if f == "KiloMeter" && t == "Meter"{
        let answer = "\(round(num * 1000)) \(t)"
        return answer
    }
    
    else if f == "Celsius" && t == "Fahrenheit"{
        let far = round(((num * (9/5)) + 32)*100)/100
        let answer = "\(far) \(t)"
        return answer
    }
    
    else if f == "Fahrenheit" && t == "Celsius"{
        let cel = round(((num - 32) * (5/9))*100)/100
        let answer = "\(cel) \(t)"
        return answer
    }
    else{
        return "not able to find"
    }
    return "alpha"
}
