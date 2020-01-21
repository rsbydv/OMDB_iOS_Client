//
//  MoviesListViewController.swift
//  OMDB_iOS_Client
//
//  Created by Rishabh Yadav on 19/01/20.
//  Copyright © 2020 Rishabh Yadav. All rights reserved.
//

import UIKit

class CollectionFooterView: UICollectionReusableView {
    
    //MARK:- Variable Declairations
    static let nib = UINib.init(nibName: "CollectionFooterView", bundle: nil)
    static let identifier = "CollectionFooterView"
    
    //MARK:- Show footer view whien pagination called
    class func registerSupplementaryView(`for` collectionView: UICollectionView) {
        collectionView.register(nib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: identifier)
    }
    
}
