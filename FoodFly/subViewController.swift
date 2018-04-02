//
//  subViewController.swift
//  FoodFly
//
//  Created by LEE on 2018. 3. 11..
//  Copyright © 2018년 LEE. All rights reserved.
//

import UIKit

class subViewController: UIViewController {
    var delegate: subViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension subViewController:UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MenuCell", for: indexPath) as! CollectionMenuCell
        let resCell = delegate?.setCellValues(cell: cell)
        
        return resCell!
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        <#code#>
    }
    
}



protocol subViewControllerDelegate{
    func setCellValues(cell: CollectionMenuCell) -> CollectionMenuCell
    func 
}




















