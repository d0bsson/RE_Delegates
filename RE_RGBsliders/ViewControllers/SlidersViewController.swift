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
    var delegate: SlidersViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sliderChanched()
        setSliders()
        mainView.backgroundColor = viewColor
    }

    @IBAction func sliderChanched() {
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        
        )
        delegate.setNewColor(for: mainView.backgroundColor ?? .red)
        redSliderValue.text = String(format: "%.2f", redSlider.value)
        greenSliderValue.text = String(format: "%.2f", greenSlider.value)
        blueSliderValue.text = String(format: "%.2f", blueSlider.value)
    }
    
    @IBAction func backTapped(_ sender: Any) {
        
        dismiss(animated: true)
    }
    
    private func setSliders() {
        let ciColor = CIColor(color: viewColor)
        
        redSlider.value = Float(ciColor.red)
        greenSlider.value = Float(ciColor.green)
        blueSlider.value = Float(ciColor.blue)
    }
}

