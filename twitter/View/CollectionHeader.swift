//
//  CollectionHeader.swift
//  twitter
//
//  Created by Junyu Lin on 27/07/19.
//  Copyright © 2019 Junyu Lin. All rights reserved.
//

import UIKit

class CollectionHeader : UICollectionViewCell{
    
    let label : UILabel = {
        let label = UILabel()
        label.text = "WHO TO FOLLOW"
        label.textColor = UIColor.gray
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let saperatorView : UIView = {
        let view = UIView()
        view.layer.borderWidth = 0.5
        view.layer.borderColor = UIColor.darkGray.cgColor
        view.layer.opacity = 0.5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        
        addSubview(label)
        addSubview(saperatorView)
        
        label.topAnchor.constraint(equalTo: topAnchor).isActive = true
        label.leftAnchor.constraint(equalTo: leftAnchor, constant: 15).isActive = true
        label.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 5).isActive = true
        label.widthAnchor.constraint(equalToConstant: 200)
        
        saperatorView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        saperatorView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        saperatorView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        saperatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
