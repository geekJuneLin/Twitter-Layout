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
        User(profileImage: "dinosaur", name: "Chloe Qin", userName: "cq25", bioText: "A professional graphic designer, good at UI/UX desgining. A professional graphic designer, good at UI/UX desgining. A professional graphic designer, good at UI/UX desgining. A professional graphic designer, good at UI/UX desgining."),
        User(profileImage: "dinosaur", name: "Crystal Lin", userName: "jl513", bioText: "A iOS & Android developer and interested in learning new tech things! A professional graphic designer, good at UI/UX desgining. A professional graphic designer, good at UI/UX desgining. A professional graphic designer, good at UI/UX desgining. A professional graphic designer, good at UI/UX desgining.A iOS & Android developer and interested in learning new tech things! A professional graphic designer, good at UI/UX desgining. A professional graphic designer, good at UI/UX desgining. A professional graphic designer, good at UI/UX desgining. A professional graphic designer, good at UI/UX desgining."),

    ]
    
    let cellId = "cellId"
    let headId = "headId"
    let footId = "footId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpNavigationButton()
        
        collectionView?.backgroundColor = .white
        collectionView?.register(Cell.self, forCellWithReuseIdentifier: "cellId")
        collectionView.register(CollectionHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headId)
        collectionView.register(CollectionFooter.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: footId)
    }
    
    //MARK: - collection view delegate methods
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return users.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! Cell
        cell.user = users[indexPath.item]
        return cell
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
    
    //MARK: - collection view flow layout methods
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        // arbitary large value
        let height : CGFloat = 1000
        let width : CGFloat = view.frame.width - 58
        let size = CGSize(width: width, height: height)
        
        let attributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18)]
        
        // estimate the suitable size for the text of each user's bioText
        let estimatedFrame = NSString(string: users[indexPath.item].bioText).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
        
        return CGSize(width: view.frame.width, height: estimatedFrame.height + 66)
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

