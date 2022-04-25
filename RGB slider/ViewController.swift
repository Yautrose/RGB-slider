//
//  ViewController.swift
//  RGB slider
//
//  Created by Alexey Artyushenko on 23.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var rgbView: UIImageView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rgbView.backgroundColor = UIColor(red: 130/255, green: 115/255, blue: 151/255, alpha: 1)
        rgbView.layer.cornerRadius = 10
        
    
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        redLabel.text = String(Int(redSlider.value))
        greenLabel.text = String(Int(greenSlider.value))
        blueLabel.text = String(Int(blueSlider.value))
        
        redLabel.textColor = .red
        greenLabel.textColor = .green
        blueLabel.textColor = .blue
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func redSliderAction() {
        rgbView.backgroundColor = UIColor(red: CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: 1)
        
        redLabel.text = String(Int(redSlider.value))
    }
    @IBAction func greenSliderAction() {
        rgbView.backgroundColor = UIColor(red: CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: 1)
        
        greenLabel.text = String(Int(greenSlider.value))

    }
    @IBAction func blueSliderAction() {
        rgbView.backgroundColor = UIColor(red: CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: 1)
        
        blueLabel.text = String(Int(blueSlider.value))
    }
}

