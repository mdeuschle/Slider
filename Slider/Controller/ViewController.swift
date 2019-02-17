//
//  ViewController.swift
//  Slider
//
//  Created by Matt Deuschle on 2/15/19.
//  Copyright © 2019 Matt Deuschle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var textView: UITextView!
    
    var selectedValue = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSlider()
        sliderLabel.textColor = .lightGray
        sliderLabel.text = "0"
        button.alpha = 0.3
        textView.layer.borderWidth = 1
        textView.layer.borderColor = UIColor.lightGray.cgColor
        textView.layer.cornerRadius = 5.0   
    }

    private func setupSlider() {
        slider.thumbTintColor = .lightGray
        let cgRect = CGRect(x: slider.frame.minX,
                            y: slider.frame.minY,
                            width: slider.frame.width,
                            height: CGFloat(1.0))
        let imageView = UIImageView(frame: cgRect)
        imageView.clipsToBounds = true
        imageView.image = #imageLiteral(resourceName: "nps")
        let image = imageView.image
        slider.setMaximumTrackImage(image, for: .normal)
    }
    


    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let value = Int(sender.value.rounded())
        sliderLabel.text = "\(value)"
        let color = Color.standard.colors[value - 1]
        sliderLabel.textColor = color
        slider.thumbTintColor = color
        slider.minimumTrackTintColor = color
        button.alpha = 1.0
    }
    
    
    

}

