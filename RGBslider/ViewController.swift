//
//  ViewController.swift
//  RGBslider
//
//  Created by Николай Тунин on 22.08.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var showColorView: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!

    private var redValue: CGFloat = 0
    private var greenValue: CGFloat = 0
    private var blueValue: CGFloat = 0
    private let stepColor: Float = 1 / 255

    override func viewDidLoad() {
        super.viewDidLoad()
        showColorView.layer.cornerRadius = 15
        showColorView.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)

        redSlider.tintColor = .red
        greenSlider.tintColor = .green
        blueSlider.tintColor = .blue

        redValueLabel.text = "Red" + " " + "0"
        greenValueLabel.text = "Green" + " " + "0"
        blueValueLabel.text = "Blue" + " " + "0"
    }


    @IBAction func redSliderEvent() {
        let labelValue = Int(redSlider.value)
        redValueLabel.text = "Red" + " " + String(labelValue)

        redValue = CGFloat(redSlider.value * stepColor)
        showColorView.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
    }

    @IBAction func greenSliderEvent() {
        let labelValue = Int(greenSlider.value)
        greenValueLabel.text = "Green" + " " + String(labelValue)

        greenValue = CGFloat(greenSlider.value * stepColor)
        showColorView.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
    }

    @IBAction func blueSliderEvent() {
        let labelValue = Int(blueSlider.value)
        blueValueLabel.text = "Blue" + " " + String(labelValue)

        blueValue = CGFloat(blueSlider.value * stepColor)
        showColorView.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
    }

}

