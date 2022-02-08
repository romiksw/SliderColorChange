//
//  ViewController.swift
//  SliderColorChange
//
//  Created by Roman Kozlov on 08.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redValue: UILabel!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var blueValue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViewColor()
        setValueLabels()
        
        colorView.layer.cornerRadius = 10
    }
    
    @IBAction func redSliderChange() {
        setValueLabels()
        setViewColor()
    }
    
    @IBAction func greenSliderChange() {
        setValueLabels()
        setViewColor()
    }
    
    @IBAction func blueSliderChange() {
        setValueLabels()
        setViewColor()
    }
    
    private func setViewColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    private func setValueLabels() {
        redValue.text = String(format: "%.2f", redSlider.value)
        greenValue.text = String(format: "%.2f", greenSlider.value)
        blueValue.text = String(format: "%.2f", blueSlider.value)
    }
}

