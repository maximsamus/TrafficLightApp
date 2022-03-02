//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Максим Самусь on 01.03.2022.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet var red: UIView!
    @IBOutlet var yellow: UIView!
    @IBOutlet var green: UIView!
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        red.layer.cornerRadius = 40
        yellow.layer.cornerRadius = 40
        green.layer.cornerRadius = 40
        red.alpha = 0.3
        yellow.alpha = 0.3
        green.alpha = 0.3
        startButton.layer.cornerRadius = 10
    }
    
    @IBAction func buttonPressed() {
        
        startButton.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case .red:
            green.alpha = 0.3
            red.alpha = 1
            currentLight = .yellow
        case .yellow:
            red.alpha = 0.3
            yellow.alpha = 1
            currentLight = .green
        case .green:
            yellow.alpha = 0.3
            green.alpha = 1
            currentLight = .red
        }
    }
}

