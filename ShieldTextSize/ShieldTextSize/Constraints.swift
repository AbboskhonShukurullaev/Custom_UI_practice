//
//  Constraints.swift
//  ShieldTextSize
//
//  Created by 1 on 7/9/20.
//  Copyright © 2020 1. All rights reserved.
//

import UIKit

//MARK: - Layout Setup
extension ViewController {
    
    func setupUI() {
        view.addSubview(hamburgerButton)
        view.addSubview(infoButton)
        view.addSubview(logoImageView)
        
        view.addSubview(toolBarView)
        toolBarView.addSubview(securityButton)
        toolBarView.addSubview(speedUpButton)
        toolBarView.addSubview(manualButton)
        
        view.addSubview(mainView)
        mainView.addSubview(tickImageView)
        mainView.addSubview(titleLabel)
        mainView.addSubview(info1Label)
        mainView.addSubview(data1Label)
        mainView.addSubview(info2Label)
        mainView.addSubview(data2Label)
        mainView.addSubview(info3Label)
        mainView.addSubview(data3Label)
        
        view.addSubview(additionalView)
        additionalView.addSubview(checkLabel)
        additionalView.addSubview(updateButton)
        
        view.addSubview(mainButton)
        mainButton.addSubview(mainImageButton)
    }
    
    func setupConstraints() {
        
        sharedConstraints.append(contentsOf: [
            hamburgerButton.topToSuperview(),
            hamburgerButton.leftToSuperview(),
            hamburgerButton.width(100),
            hamburgerButton.height(100),
            
            infoButton.topToSuperview(),
            infoButton.rightToSuperview(),
            infoButton.width(100),
            infoButton.height(100),
            
            logoImageView.centerX(to: view),
            
            toolBarView.centerXToSuperview(),
            
            mainView.centerXToSuperview(),
            
            securityButton.height(43),
            securityButton.width(95),
            securityButton.centerYToSuperview(),
            securityButton.left(to: toolBarView, offset: 12),
            
            speedUpButton.centerXToSuperview(),
            speedUpButton.centerYToSuperview(),
            speedUpButton.height(to: securityButton),
            speedUpButton.width(to: securityButton),
            
            manualButton.height(to: securityButton),
            manualButton.width(to: securityButton),
            manualButton.centerYToSuperview(),
            manualButton.right(to: toolBarView, offset: -12),
            
            additionalView.topToBottom(of: mainView),
            additionalView.width(to: mainView),
            additionalView.leading(to: mainView),
            additionalView.trailing(to: mainView),
            
            
            tickImageView.centerXToSuperview(),
            
            titleLabel.centerXToSuperview(),
            
            info1Label.left(to: mainView, offset: 30),
            
            info2Label.left(to: mainView, offset: 30),
            
            info3Label.left(to: mainView, offset: 30),
            
            data1Label.right(to: mainView, offset: -30),
            
            data2Label.right(to: mainView, offset: -30),
            
            data3Label.right(to: mainView, offset: -30),
            
            info2Label.topToBottom(of: info1Label, offset: SCREEN_HEIGHT*0.03),
            
            info3Label.topToBottom(of: info2Label, offset: SCREEN_HEIGHT*0.03),
            
            
            
            data2Label.topToBottom(of: data1Label, offset: SCREEN_HEIGHT*0.03),
            
            data3Label.topToBottom(of: data2Label, offset: SCREEN_HEIGHT*0.03),
            
            checkLabel.centerYToSuperview(),
            checkLabel.left(to: additionalView, offset: 30),
            
            updateButton.centerY(to: checkLabel),
            updateButton.right(to: additionalView, offset: -20),
            
            
            mainButton.centerXToSuperview(),
            
            mainImageButton.centerYToSuperview(),
            mainImageButton.height(25),
            mainImageButton.width(25),
            
            
            
        ])
        
        regularConstraints.append(contentsOf: [
            
            logoImageView.top(to: hamburgerButton, offset: SCREEN_HEIGHT*0.08),
            logoImageView.height(SCREEN_WIDTH*0.25),
            logoImageView.width(SCREEN_WIDTH*0.25),
            
            toolBarView.topToBottom(of: logoImageView, offset: SCREEN_HEIGHT*0.03),
            toolBarView.width(SCREEN_WIDTH*0.65),
            toolBarView.height(60),
            
            mainView.topToBottom(of: toolBarView, offset: SCREEN_HEIGHT*0.05),
            mainView.height(SCREEN_HEIGHT * 0.4),
            mainView.width(to: toolBarView),
            
            tickImageView.top(to: mainView, offset: SCREEN_HEIGHT*0.07),
            tickImageView.height(SCREEN_WIDTH*0.13),
            tickImageView.width(SCREEN_WIDTH*0.13),
            
            titleLabel.topToBottom(of: tickImageView, offset: SCREEN_HEIGHT*0.03),
            
            info1Label.topToBottom(of: titleLabel, offset: SCREEN_HEIGHT*0.035),
            
            data1Label.topToBottom(of: titleLabel, offset: SCREEN_HEIGHT*0.035),
            
            additionalView.height(SCREEN_HEIGHT * 0.06),
            
            updateButton.height(70),
            updateButton.width(70),
            
            mainButton.bottom(to: view, offset: -SCREEN_HEIGHT*0.05),
            mainButton.width(SCREEN_WIDTH * 0.4),
            mainButton.height(55),
            
            mainImageButton.left(to: mainButton, offset: 40),
            
        ])
        compactConstraints.append(contentsOf: [
            
            logoImageView.top(to: hamburgerButton, offset: SCREEN_HEIGHT*0.08),
            logoImageView.height(120),
            logoImageView.width(120),
            
            toolBarView.topToBottom(of: logoImageView, offset: SCREEN_HEIGHT*0.015),
            toolBarView.width(SCREEN_WIDTH * 0.8),
            toolBarView.height(50),
            
            mainView.topToBottom(of: toolBarView, offset: SCREEN_HEIGHT * 0.04),
            mainView.height(SCREEN_HEIGHT * 0.4),
            mainView.width(to: toolBarView),
            
            tickImageView.centerYToSuperview(offset: -SCREEN_HEIGHT*0.1),
            tickImageView.height(60),
            tickImageView.width(60),
            
            titleLabel.topToBottom(of: tickImageView, offset: SCREEN_HEIGHT*0.03),
            
            info1Label.topToBottom(of: titleLabel, offset: SCREEN_HEIGHT*0.025),
            
            data1Label.topToBottom(of: titleLabel, offset: SCREEN_HEIGHT*0.025),
            
            additionalView.height(SCREEN_HEIGHT * 0.08),
            
            updateButton.height(50),
            updateButton.width(50),
            
            mainButton.topToBottom(of: additionalView, offset: SCREEN_HEIGHT*0.035, priority: .defaultHigh),
            mainButton.bottomToSuperview(offset: -SCREEN_HEIGHT*0.08, priority: .defaultHigh),

            mainButton.width(to: additionalView),
            mainButton.height(SCREEN_HEIGHT*0.068),
            
            mainImageButton.left(to: mainButton, offset: SCREEN_WIDTH*0.1),
            
        ])
    }
    
    func layoutTrait(traitCollection:UITraitCollection) {
        if (!sharedConstraints[0].isActive) {
            // activating shared constraints
            NSLayoutConstraint.activate(sharedConstraints)
        }
        if traitCollection.horizontalSizeClass == .compact && traitCollection.verticalSizeClass == .regular {
            if regularConstraints.count > 0 && regularConstraints[0].isActive {
                NSLayoutConstraint.deactivate(regularConstraints)
            }
            // activating compact constraints
            NSLayoutConstraint.activate(compactConstraints)
        } else {
            if compactConstraints.count > 0 && compactConstraints[0].isActive {
                NSLayoutConstraint.deactivate(compactConstraints)
            }
            // activating regular constraints
            NSLayoutConstraint.activate(regularConstraints)
        }
    }
    
}
