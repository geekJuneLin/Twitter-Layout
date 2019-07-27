//
//  TweetCell.swift
//  twitter
//
//  Created by Junyu Lin on 27/07/19.
//  Copyright © 2019 Junyu Lin. All rights reserved.
//

import UIKit

class TweetCell : UICollectionViewCell{
    
    let imageView : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "dinosaur")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 5
        return imageView
    }()
    
    let label : UILabel = {
        let label = UILabel()
        label.text = "Junyu Lin"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let userName : UILabel = {
        let label = UILabel()
        label.text = "jl513@students.waikato.ac.nz"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let textView : UITextView = {
        let textView = UITextView()
        textView.text = "A professional graphic designer, good at UI/UX desgining. A professional graphic designer, good at UI/UX desgining. A professional graphic designer, good at UI/UX desgining. A professional graphic designer, good at UI/UX desgining."
        textView.font = UIFont.systemFont(ofSize: 15)
        textView.isEditable = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    let introImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "sloth2")
        imageView.layer.borderColor = UIColor.gray.cgColor
        imageView.layer.borderWidth = 1
        imageView.backgroundColor = .green
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 2.5
        return imageView
    }()
    
    //TODO: - Add buttons at the bottom
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        
        setUpView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setUpView(){
        
        addSubview(imageView)
        addSubview(label)
        addSubview(textView)
        addSubview(userName)
        addSubview(introImageView)
        
        imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 12).isActive = true
        imageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        label.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
        label.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 8).isActive = true
//        label.rightAnchor.constraint(equalTo: userName.leftAnchor, constant: 15).isActive = true
//        label.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.25).isActive = true
        
        userName.topAnchor.constraint(equalTo: label.topAnchor).isActive = true
        userName.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        userName.leftAnchor.constraint(equalTo: label.rightAnchor, constant: 8).isActive = true
        
        textView.topAnchor.constraint(equalTo: label.bottomAnchor).isActive = true
        textView.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 3).isActive = true
        textView.rightAnchor.constraint(equalTo: rightAnchor, constant: -12).isActive = true
        textView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        introImageView.topAnchor.constraint(equalTo: textView.bottomAnchor, constant: 10).isActive = true
        introImageView.leftAnchor.constraint(equalTo: label.leftAnchor).isActive = true
        introImageView.rightAnchor.constraint(equalTo: rightAnchor, constant: -12).isActive = true
        introImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
    }
}
