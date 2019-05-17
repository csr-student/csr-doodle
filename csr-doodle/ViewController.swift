//
//  ViewController.swift
//  csr-doodle
//
//  Created by Brandon Sugarman on 5/12/19.
//  Copyright © 2019 Brandon Sugarman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var drawView: DrawView!
    
    @IBAction func clearView(_ sender: UIButton) {
        drawView.clear()
        
    }
    @IBAction func makeBlack(_ sender: UIButton) {
        drawView.blackCheck = true
        drawView.whiteCheck = false
        drawView.blueCheck = false
        drawView.rainbowCheck = false
    }
    
    
    @IBAction func makeBlue(_ sender: UIButton) {
        drawView.blueCheck = true
        drawView.whiteCheck = false
        drawView.blackCheck = false
        drawView.rainbowCheck = false


    }
    
    @IBAction func makeRainbow(_ sender: UIButton) {
        drawView.rainbowTime()
        drawView.whiteCheck = false
        drawView.blueCheck = false
        drawView.blackCheck = false

    }
    
    @IBAction func makeWhite(_ sender: UIButton) {
        drawView.whiteCheck = true
        drawView.rainbowCheck = false
        drawView.blueCheck = false
        drawView.blackCheck = false

    }
    @IBAction func changeWidth(_ sender: Any) {
           drawView.lineWidth = CGFloat(widthSlider.value*5)
    }
    
    
    @IBOutlet weak var widthSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

