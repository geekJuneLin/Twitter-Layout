//
//  HomeController+navbar.swift
//  twitter
//
//  Created by Junyu Lin on 27/07/19.
//  Copyright © 2019 Junyu Lin. All rights reserved.
//

import UIKit

extension HomeController {
    
    //MARK: - private methods
    
    func setUpNavigationButton(){
        //        print("123")
        navigationItem.title = "Twitter"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.blue]
        
        setUpLeftItem()
        
        setUpRightItem()
        
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
    }
    
    func setUpLeftItem(){
        let leftButton = UIButton(type: .system)
        leftButton.setImage(UIImage(named: "follow"), for: .normal)
        leftButton.contentMode = .scaleAspectFit
        leftButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftButton)
    }
    
    func setUpRightItem(){
        let rightButton = UIButton(type: .system)
        rightButton.setImage(UIImage(named: "follow"), for: .normal)
        rightButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        rightButton.contentMode = .scaleAspectFit
        
        let rightButton2 = UIButton(type: .system)
        rightButton2.setImage(UIImage(named: "follow"), for: .normal)
        rightButton2.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        rightButton2.contentMode = .scaleAspectFit
        
        navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: rightButton),
                                              UIBarButtonItem(customView: rightButton2) ]
    }
    
}

