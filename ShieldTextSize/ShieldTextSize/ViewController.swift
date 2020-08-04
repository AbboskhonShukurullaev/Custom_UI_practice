//
//  ViewController.swift
//  ShieldTextSize
//
//  Created by Abboskhon Shukurullaev on 7/8/20.
//  Copyright © 2020 1. All rights reserved.
//

import UIKit
import TinyConstraints

class ViewController: UIViewController {
    //MARK: - Initialization
    var compactConstraints: [NSLayoutConstraint] = []
    var regularConstraints: [NSLayoutConstraint] = []
    var sharedConstraints: [NSLayoutConstraint] = []
    
    //MARK: - Superview Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0.898, green: 0.898, blue: 0.898, alpha: 1)
        
        setupUI()
        setupConstraints()
        
        NSLayoutConstraint.activate(sharedConstraints)
        layoutTrait(traitCollection: UIScreen.main.traitCollection)
        
        self.mainButton.applyGradient(colours: [UIColor(red: 77.0/255.0, green: 205.0/255.0, blue: 82.0/255.0, alpha: 1),
                                                UIColor(red: 89.0/255.0, green: 217.0/255.0, blue: 156.0/255.0, alpha: 1)])
        
        self.toolBarView.applyGradient(colours: [.yellow, .blue, .red], locations: [0.0, 0.5, 1.0])
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        
        layoutTrait(traitCollection: traitCollection)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        mainView.roundCorners(corners: [.topLeft, .topRight], radius: 20)
        additionalView.roundCorners(corners: [.bottomRight, .bottomLeft], radius: 20)
        toolBarView.roundCorners(corners: .allCorners, radius: 20)
        
        //        mainView.applyShadow(shadowRadius: 10, shadowOpacity: 1)
        //        additionalView.applyShadow(shadowRadius: 10, shadowOpacity: 1)
    }
    
    //MARK: - Properties
    let data = ["145", "1.25", "2663599"]
    
    lazy var hamburgerButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "hamburger"), for: .normal)
        return button
    }()
    
    lazy var infoButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "info"), for: .normal)
        return button
    }()
    
    //    lazy var shadowLogoView: UIView = {
    //           let outerView = UIView()
    //           outerView.applyShadow(shadowRadius: 1, shadowOpacity: 0.35)
    //           outerView.layer.shadowOffset = CGSize(width: 3.5, height: 8)
    //           return outerView
    //       }()
    
    lazy var logoImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "logo")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    lazy var toolBarView: UIView = {
        let view = UIView()
        view.backgroundColor = LIGHT_GREY
        view.layer.borderColor = UIColor.white.cgColor
        
        view.isUserInteractionEnabled = true

        return view
    }()
    
    lazy var securityButton: UIButton = {
        let button = UIButton()
        //        button.customize()
        button.setTitle("Security", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 20
        //        button.titleLabel?.font = UIFont(name: "Security", size: 15)
        button.backgroundColor = UIColor.purple
        button
            .addTarget(self, action: #selector(securityButtonTapped), for: .touchUpInside)
        
        button.layer.shadowRadius = 10
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.45
        button.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        
        return button
    }()
    
    lazy var speedUpButton: UIButton = {
        let button = UIButton()
        //        button.customize()
        button.setTitle("Speed Up", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 20
        //        button.titleLabel?.font = UIFont(name: "Speed Up", size: 15)
        button.backgroundColor = UIColor.clear
        button
            .addTarget(self, action: #selector(speedUpButtonTapped), for: .touchUpInside)
        
        button.layer.shadowRadius = 10
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.45
        button.layer.shadowOffset = CGSize(width: 0, height: 0)
        return button
    }()
    
    lazy var manualButton: UIButton = {
        let button = UIButton()
        //        button.customize()
        button.setTitle("Manual", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 20
        //        button.titleLabel?.font = UIFont(name: "Manual", size: 15)
        button.backgroundColor = UIColor.clear
        button
            .addTarget(self, action: #selector(manualButtonTapped), for: .touchUpInside)
        
        button.layer.shadowRadius = 10
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.45
        button.layer.shadowOffset = CGSize(width: 0, height: 0)
        return button
    }()
    
    lazy var mainView: UIView = {
        let view = UIView()
        view.backgroundColor = LIGHT_GREY
        //        view.roundCorners(corners: .allCorners, radius: 30)
        //        view.applyShadow(shadowRadius: 10, shadowOpacity: 1.0)
        
        //            view.layer.shadowOffset = CGSize(width: 0, height: 2)
        
        //        view.layer.cornerRadius = 25
        
        view.isUserInteractionEnabled = true
        
        return view
    }()
    
    lazy var additionalView: UIView = {
        let view = UIView()
        view.backgroundColor = LIGHT_GREY
        
        //        view.applyShadow(shadowRadius: 10, shadowOpacity: 1.0)
        view.layer.borderColor = UIColor.white.cgColor
        view.layer.borderWidth = 4
        view.isUserInteractionEnabled = true
        
        
        
        return view
    }()
    
    lazy var tickImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "tick")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.customize(fontSize: 20, fontWeight: .Bold, color: GREEN)
        
        label.text = "Web Surfing is protected"
        return label
    }()
    
    lazy var info1Label: UILabel = {
        let label = UILabel()
        label.customize(fontSize: 15, fontWeight: .Normal)
        label.text = "Unsafe websites blocked:"
        return label
    }()
    
    lazy var data1Label: UILabel = {
        let label = UILabel()
        label.customize(fontSize: 15, fontWeight: .Medium)
        label.textColor = GREEN
        label.text = data[0]
        return label
    }()
    
    lazy var info2Label: UILabel = {
        let label = UILabel()
        label.customize(fontSize: 15, fontWeight: .Normal)
        label.text = "Database Version:"
        label.text = data[1]
        return label
    }()
    
    lazy var data2Label: UILabel = {
        let label = UILabel()
        label.customize(fontSize: 15, fontWeight: .Medium)
        label.text = data[1]
        label.textColor = GREEN
        return label
    }()
    
    lazy var info3Label: UILabel = {
        let label = UILabel()
        label.customize(fontSize: 15, fontWeight: .Normal)
        label.text = "Total sites in db:"
        return label
    }()
    
    lazy var data3Label: UILabel = {
        let label = UILabel()
        label.customize(fontSize: 15, fontWeight: .Medium)
        label.text = data[2]
        label.textColor = GREEN
        return label
    }()
    
    lazy var checkLabel: UILabel = {
        let label = UILabel()
        label.customize(fontSize: 15, fontWeight: .Normal)
        label.text = "Check Database Updates"
        return label
    }()
    
    lazy var updateButton: UIButton = {
        let button = UIButton()
        button.customize()
        //            button.titleLabel?.font = UIFont(name: "Update", size: 15)
        button.setImage(UIImage(named: "update"), for: .normal)
        //        button
        //        .addTarget(self, action: #selector(policyButtonTapped), for: .touchUpInside)
        return button
    }()
    //    func createGradientLayer() {
    //    let gradientLayer = CAGradientLayer()
    //
    //        let colors = [UIColor(red: 77.0/255.0, green: 205.0/255.0, blue: 82.0/255.0, alpha: 1),
    //                      UIColor(red: 89.0/255.0, green: 217.0/255.0, blue: 156.0/255.0, alpha: 1)]
    //    gradientLayer.colors = colors
    //
    //    let locations: [NSNumber] = [0.0, 0.5]
    //    gradientLayer.locations = locations
    //
    //    gradientLayer.frame = self.mainView.bounds
    //
    //    mainView.layer.addSublayer(gradientLayer)
    //    }
    
    lazy var mainButton: UIButton = {
        let button = UIButton()
        
        button.customize()
        
        
        button.setTitle("Manage Protection", for: .normal)
        button.layer.borderWidth = 6
        button.layer.borderColor = UIColor.white.cgColor
        button.backgroundColor = UIColor.clear
        button.layer.shadowRadius = 10
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.15
        button.layer.shadowOffset = CGSize(width: 5, height: 5)
        button.backgroundColor = GREEN
        //        button
        //        .addTarget(self, action: #selector(policyButtonTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var mainImageButton: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "settings")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    
    
    
    //MARK: - Actions
    @objc func hamburgerButtonTapped() {
        
    }
    
    @objc func infoButtonTapped() {
        
    }
    
    @objc func securityButtonTapped() {
        UIView.animate(withDuration: 0.4, delay: 0.1, options: .curveLinear, animations: {
            self.securityButton.backgroundColor = UIColor.purple
            self.securityButton.setTitleColor(.white, for: .normal)
        })
        speedUpButton.backgroundColor = UIColor.clear
        speedUpButton.setTitleColor(.black, for: .normal)
        manualButton.backgroundColor = UIColor.clear
        manualButton.setTitleColor(.black, for: .normal)
        
    }
    
    @objc func speedUpButtonTapped() {
        securityButton.backgroundColor = UIColor.clear
        securityButton.setTitleColor(.black, for: .normal)
        UIView.animate(withDuration: 0.4, delay: 0.1, options: .curveLinear, animations: {
            self.speedUpButton.backgroundColor = UIColor.purple
            self.speedUpButton.setTitleColor(.white, for: .normal)
        })
        manualButton.backgroundColor = UIColor.clear
        manualButton.setTitleColor(.black, for: .normal)
    }
    
    @objc func manualButtonTapped() {
        securityButton.backgroundColor = UIColor.clear
        securityButton.setTitleColor(.black, for: .normal)
        speedUpButton.backgroundColor = UIColor.clear
        speedUpButton.setTitleColor(.black, for: .normal)
        UIView.animate(withDuration: 0.4, delay: 0.1, options: .curveLinear, animations: {
            self.manualButton.backgroundColor = UIColor.purple
            self.manualButton.setTitleColor(.white, for: .normal)
        })
    }
    
    @objc func updateButtonTapped() {
        
    }
    
    @objc func mainButtonTapped() {
        
    }
    
}


