//
//  ViewController.swift
//  circleAPP
//
//  Created by Admin2 on 11.08.2021.
//

import UIKit



class ViewController: UIViewController {

    
    
    let shapeLayer = CAShapeLayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let center = view.center
        let trackLayer = CAShapeLayer()

        let circularPath = UIBezierPath(arcCenter: center, radius: 100, startAngle: -CGFloat.pi / 2, endAngle: 2 * CGFloat.pi, clockwise: true)
        trackLayer.path = circularPath.cgPath
       
        trackLayer.strokeColor = UIColor.lightGray.cgColor
        trackLayer.lineWidth = 10
        trackLayer.fillColor = UIColor.clear.cgColor
        trackLayer.lineCap = CAShapeLayerLineCap.round
        view.layer.addSublayer(trackLayer)

        shapeLayer.path = circularPath.cgPath
        shapeLayer.strokeColor = UIColor.red.cgColor
       

        shapeLayer.lineCap = CAShapeLayerLineCap.round

        shapeLayer.strokeEnd = 0


        view.layer.addSublayer(shapeLayer)

        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))

    
    }


       @objc private  func handleTap() {
            print("Anamation")
            
            let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
            
            basicAnimation.toValue = 1
            
            basicAnimation.duration = 2
            
            basicAnimation.fillMode = CAMediaTimingFillMode.forwards
            basicAnimation.isRemovedOnCompletion = false
            
            shapeLayer.add(basicAnimation, forKey: "urSoBasic")

        }

    }




