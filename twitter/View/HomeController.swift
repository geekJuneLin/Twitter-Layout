//
//  HomeController.swift
//  twitter
//
//  Created by Junyu Lin on 26/07/19.
//  Copyright © 2019 Junyu Lin. All rights reserved.
//

import UIKit

class HomeController : UICollectionViewController, UICollectionViewDelegateFlowLayout{
    
    let users = [
        User(profileImage: "dinosaur", name: "Junyu Lin", userName: "jl513", bioText: "A iOS & Android developer and interested in learning new tech things!"),
        User(profileImage: "dinosaur", name: "Chloe Qin", userName: "cq25", bioText: "A professional graphic designer, good at UI/UX desgining."),
//        User(profileImage: "dinosaur", name: "Junyu Lin", userName: "jl513", bioText: "A iOS & Android developer and interested in learning new tech things!"),
//        User(profileImage: "dinosaur", name: "Chloe Qin", userName: "cq25", bioText: "A professional graphic designer, good at UI/UX desgining.")
    ]
    
    let cellId = "cellId"
    let headId = "headId"
    let footId = "footId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = .white
        collectionView?.register(Cell.self, forCellWithReuseIdentifier: "cellId")
        collectionView.register(CollectionHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headId)
        collectionView.register(CollectionFooter.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: footId)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return users.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! Cell
        cell.user = users[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 150)
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader{
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headId, for: indexPath)
            return header
        } else {
            let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: footId, for: indexPath)
            return footer
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
}

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
        addSubview(label)
//        addSubview(saperatorView)
        
        label.topAnchor.constraint(equalTo: topAnchor).isActive = true
        label.leftAnchor.constraint(equalTo: leftAnchor, constant: 15).isActive = true
        label.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 5).isActive = true
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
