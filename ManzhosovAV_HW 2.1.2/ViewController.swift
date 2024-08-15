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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 75
        greenView.layer.cornerRadius = 75
        yellowView.layer.cornerRadius = 75
        startButton.layer.cornerRadius = 7
    }

    @IBAction func startButtonPressed(_ sender: Any) {
    }
    
}

