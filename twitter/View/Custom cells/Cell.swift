//
//  Cell.swift
//  twitter
//
//  Created by Junyu Lin on 26/07/19.
//  Copyright © 2019 Junyu Lin. All rights reserved.
//

import UIKit

class Cell : UICollectionViewCell{
    
    var user : User? {
        didSet{
            guard let users = user  else { return }
            
            label.text = users.name
            imageView.image = UIImage(named: users.profileImage)
            userName.text = users.userName
            textView.text = users.bioText
        }
    }
    
    let label : UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let imageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 25
        return imageView
    }()
    
    let userName : UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let textView : UITextView = {
        let textView = UITextView()
        textView.font = UIFont.systemFont(ofSize: 15)
        textView.isEditable = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    let button : UIButton = {
        let button = UIButton(type: .roundedRect)
        button.setTitle("Follow", for: .normal)
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.blue.cgColor
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "follow"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -10, bottom: 0, right: 0)
        return button
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
        
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews(){
        backgroundColor = .white
        
        addSubview(label)
        addSubview(imageView)
        addSubview(userName)
        addSubview(textView)
        addSubview(button)
        addSubview(saperatorView)
        
        label.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        label.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 12).isActive = true
        label.rightAnchor.constraint(equalTo: button.leftAnchor, constant: -5).isActive = true
        label.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 12).isActive = true
        imageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        userName.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 8).isActive = true
        userName.leftAnchor.constraint(equalTo: label.leftAnchor).isActive = true
        userName.rightAnchor.constraint(equalTo: button.leftAnchor, constant: -5).isActive = true
        userName.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        textView.topAnchor.constraint(equalTo: userName.bottomAnchor).isActive = true
        textView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        textView.leftAnchor.constraint(equalTo: userName.leftAnchor, constant: -5).isActive = true
        textView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        button.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -5).isActive = true
        button.topAnchor.constraint(equalTo: label.topAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 34).isActive = true
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        saperatorView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        saperatorView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        saperatorView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        saperatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
}
