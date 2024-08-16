//
//  ViewController.swift
//  ManzhosovAV_HW 2.1.2
//
//  Created by Александр Манжосов on 15.08.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var startButton: UIButton!
    
    private var state = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 75
        redView.alpha = 0.3
        greenView.layer.cornerRadius = 75
        greenView.alpha = 0.3
        yellowView.layer.cornerRadius = 75
        yellowView.alpha = 0.3
        startButton.layer.cornerRadius = 7
    }

    @IBAction func startButtonPressed(_ sender: Any) {
        startButton.setTitle("NEXT", for: .normal)
        
//        if redView.alpha < 1 && greenView.alpha < 1 && yellowView.alpha < 1 {
//            redView.alpha = 1
//            return
//        }
//        if redView.alpha == 1 {
//            yellowView.alpha = 1
//            redView.alpha = 0.3
//            return
//        }
//        if yellowView.alpha == 1 {
//            greenView.alpha = 1
//            yellowView.alpha = 0.3
//            return
//        }
//        if greenView.alpha == 1 {
//            redView.alpha = 1
//            greenView.alpha = 0.3
//            return
//        }
        
        switch state {
        case "red":
            state = "yellow"
            yellowView.alpha = 1
            redView.alpha = 0.3
        case "yellow":
            state = "green"
            greenView.alpha = 1
            yellowView.alpha = 0.3
        case "green":
            state = "red"
            redView.alpha = 1
            greenView.alpha = 0.3
        default:
            state = "red"
            redView.alpha = 1
        }
    }
    
}

