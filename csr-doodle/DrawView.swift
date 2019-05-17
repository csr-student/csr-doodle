//
//  DrawView.swift
//  csr-doodle
//
//  Created by Brandon Sugarman on 5/12/19.
//  Copyright © 2019 Brandon Sugarman. All rights reserved.
//

import UIKit

class DrawView: UIView {

    var lineColor: UIColor!
    var lineWidth: CGFloat!
    var path: UIBezierPath!
    var startPoint: CGPoint!
    var movedPoint: CGPoint!
    var rainbowCheck = false
    var blackCheck = false
    var whiteCheck = false
    var blueCheck = false
    
    override func layoutSubviews() {
        self.clipsToBounds = true
        self.isMultipleTouchEnabled = false
        
        lineColor = UIColor.black
        
        if lineWidth == nil{
            lineWidth = 10
        }
        
        
        if blackCheck == true {
        lineColor = UIColor.black
        }
        
        if whiteCheck == true {
        lineColor = UIColor.white

        }
        
        if blueCheck == true {
            lineColor = UIColor.blue

        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        startPoint = touch?.location(in: self)
    }
    
    override func touchesMoved(_ touches:
        Set<UITouch>, with event: UIEvent?) {
        if rainbowCheck == true {
            rainbowTime()
        }
        let touch = touches.first
        movedPoint = touch?.location(in: self)
        path = UIBezierPath()
        path.move(to: startPoint)
        path.addLine(to: movedPoint)
        startPoint = movedPoint
        drawLayer()
        
    }
    
    func rainbowTime(){
        rainbowCheck = true
        let red: CGFloat = CGFloat(arc4random_uniform(255))
        let blue: CGFloat = CGFloat(arc4random_uniform(255))
        let green: CGFloat =
            CGFloat(arc4random_uniform(255))
        lineColor = UIColor.init(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: 1)
        
    }
    

    
    func drawLayer(){
        let layer = CAShapeLayer()
        layer.path = path.cgPath
        layer.strokeColor = lineColor.cgColor
        layer.fillColor = UIColor.clear.cgColor
        layer.lineWidth = lineWidth
        self.layer.addSublayer(layer)
        self.setNeedsDisplay()
    }
    
    func clear() {
        if path != nil{
            path.removeAllPoints()
            self.layer.sublayers = nil
            self.setNeedsDisplay()
        }
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
