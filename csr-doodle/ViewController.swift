//
//  ViewController.swift
//  csr-doodle
//
//  Created by Brandon Sugarman on 5/12/19.
//  Copyright © 2019 Brandon Sugarman. All rights reserved.
//


// WELCOME TO THE CSR PICASSO'S PLAYGROUND PROJECT
// OUR GOAL IS TO MAKE A DRAWING APP THAT ALLOWS US TO DO THE FOLLOWING THINGS:
// CHANGE BRUSH SIZE, CHANGE COLOR, AND CLEAR THE CANVAS
// WE HAVE ACCESS TO AN OBJECT CALLED CANVAS
// IT GIVES US ACCESS TO THE FOLLOWING PROPERTIES:
// isBlack, isWhite, isBlue, isRainbow ARE BOOLEANS THAT CONTROL BRUSH COLOR
// ONLY ONE SHOULD BE TRUE FOR EACH COLOR CLICKED
// IF YOU WANT TO ACTIVATE RAINBOW COLOR, USE canvas.rainbowTime()
// YOU ALSO HAVE ACCESS TO A FUNCTION CALLED canvas.clear()
// TO CHANGE THE WIDTH OF THE BRUSH, SET THE lineWidth PROPERTY TO THE VALUE OF THE SLIDER
// canvas.lineWidth = CGFloat(widthSlider.value*5)
//


import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var canvas: DrawView!
    
    @IBAction func clearCanvas(_ sender: UIButton) {
        
    }
    @IBAction func makeBlack(_ sender: UIButton) {
        
    }
    
    
    @IBAction func makeBlue(_ sender: UIButton) {
   

    }
    
    @IBAction func makeRainbow(_ sender: UIButton) {
 

    }
    
    @IBAction func makeWhite(_ sender: UIButton) {
   
    }
    @IBAction func changeWidth(_ sender: Any) {

    }
    
    
    @IBOutlet weak var widthSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

