//
//  ViewController.swift
//  RE_RGBsliders
//
//  Created by Дэвид Бердников on 30.08.2021.
//

import UIKit

class SlidersViewController: UIViewController {
    
    @IBOutlet weak var mainView: UIView!    
    
    @IBOutlet weak var redSliderValue: UILabel!
    @IBOutlet weak var greenSliderValue: UILabel!
    @IBOutlet weak var blueSliderValue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    var viewColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sliderChanched()
        mainView.backgroundColor = viewColor
    }

    @IBAction func sliderChanched() {
        
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
                
        redSliderValue.text = String(format: "%.2f", redSlider.value)
        greenSliderValue.text = String(format: "%.2f", greenSlider.value)
        greenSliderValue.text = String(format: "%.2f", blueSlider.value)
    }
    
}

