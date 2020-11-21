//
//  ViewController.swift
//  gradient-mask
//
//  Created by 郭家銘 on 2020/11/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let forestContainer = UIImageView()
        self.view.addSubview(forestContainer)
        
        let forestImageView = UIImageView(image: UIImage(named: "forest"))
        forestImageView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 600)
        forestImageView.contentMode = .scaleAspectFill
        forestContainer.addSubview(forestImageView)
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = forestImageView.bounds
        gradientLayer.colors = [
            UIColor(red: 0, green: 0, blue: 0, alpha: 0.0).cgColor,
            UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        ]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        forestImageView.layer.mask = gradientLayer
        
        let deerImageView = UIImageView(image: UIImage(named: "deer"))
        deerImageView.frame = CGRect(x: 0, y: 200, width: UIScreen.main.bounds.width, height: 400)
        deerImageView.contentMode = .scaleAspectFit
        forestContainer.mask = deerImageView
    }


}

