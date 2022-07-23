//
//  ViewController.swift
//  Unit_Conversion
//
//  Created by piyush mishra on 13/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var TypeSegment: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let DestinationSegue : MainViewController = segue.destination as! MainViewController
        
        switch TypeSegment.selectedSegmentIndex{
        case 0:
            DestinationSegue.FromSegmentIndexOne = "Celsius"
            DestinationSegue.ToSegmentIndexOne = "Fahrenheit"
            DestinationSegue.FromSegmentIndexTwo = "Fahrenheit"
            DestinationSegue.ToSegmentIndextwo = "Celsius"
            
        case 1:
            DestinationSegue.FromSegmentIndexOne = "Dollar"
            DestinationSegue.ToSegmentIndexOne = "IndianRupee"
            DestinationSegue.FromSegmentIndexTwo = "IndianRupee"
            DestinationSegue.ToSegmentIndextwo = "Dollar"
            
        case 2:
            DestinationSegue.FromSegmentIndexOne = "Meter"
            DestinationSegue.ToSegmentIndexOne = "KiloMeter"
            DestinationSegue.FromSegmentIndexTwo = "KiloMeter"
            DestinationSegue.ToSegmentIndextwo = "Meter"
            
        default:
            break
            
            
        }
    }


}

