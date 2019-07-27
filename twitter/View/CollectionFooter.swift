//
//  CollectionFooter.swift
//  twitter
//
//  Created by Junyu Lin on 27/07/19.
//  Copyright © 2019 Junyu Lin. All rights reserved.
//

import UIKit

class CollectionFooter : UICollectionViewCell {
    
    let label : UILabel = {
        let label = UILabel()
        label.text = "SHOW ME MORE"
        label.textColor = UIColor.gray
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //    let saperatorView : UIView = {
    //        let view = UIView()
    //        view.layer.borderWidth = 0.5
    //        view.layer.borderColor = UIColor.darkGray.cgColor
    //        view.layer.opacity = 0.5
    //        view.translatesAutoresizingMaskIntoConstraints = false
    //        return view
    //    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        let backgroundView = UIView()
        backgroundView.backgroundColor = .white
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(backgroundView)
        addSubview(label)
        //        addSubview(saperatorView)
        
        backgroundView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        backgroundView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        backgroundView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        backgroundView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -14).isActive = true
        
        label.topAnchor.constraint(equalTo: topAnchor).isActive = true
        label.leftAnchor.constraint(equalTo: leftAnchor, constant: 15).isActive = true
        label.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12).isActive = true
        label.widthAnchor.constraint(equalToConstant: 200)
        
        //        saperatorView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        //        saperatorView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        //        saperatorView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        //        saperatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

