//
//  ViewController.swift
//  FoodFly
//
//  Created by LEE on 2018. 3. 11..
//  Copyright © 2018년 LEE. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource,UIScrollViewDelegate{

    
    @IBOutlet weak var cataLogTitle: UICollectionView!
    
    @IBOutlet weak var menuListScroll: UIScrollView!
    
    var scrollview:CGRect?
    var label: [String] = ["전체","신규맛집","한식","일식","카페","양식","퓨전","분식","햄버거","치킨","중식","피자"]

    override func viewDidLoad() {
        super.viewDidLoad()
        print("!111")
        self.menuListScroll.delegate = self
        cataLogTitle.delegate = self
        cataLogTitle.dataSource = self
        self.cataLogTitle.showsHorizontalScrollIndicator = false
        self.menuListScroll.decelerationRate = UIScrollViewDecelerationRateFast
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        print("333333")
        self.menuListScroll.isPagingEnabled = true
        self.menuListScroll.contentSize = CGSize(width: self.menuListScroll.bounds.width * CGFloat(label.count), height: self.menuListScroll.frame.height)
        
        
        for (index,content) in self.label.enumerated() {
            let testVC1 = self.storyboard?.instantiateViewController(withIdentifier: "sub") as! subViewController
            testVC1.view.frame = CGRect(x: 0, y: 0, width: self.menuListScroll.bounds.width , height: self.menuListScroll.frame.height)
            testVC1._name?.text = content
            testVC1.view.frame.origin = CGPoint(x: CGFloat(index) * self.menuListScroll.bounds.width , y: 0)
            self.addChildViewController(testVC1)
            self.menuListScroll.addSubview(testVC1.view)
            testVC1.willMove(toParentViewController: self)
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return label.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "catalogcell", for: indexPath) as! CatalogViewCell
        cell.CatalogName.text = label[indexPath.row]
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let x = CGFloat(indexPath.row) * menuListScroll.frame.size.width
        menuListScroll.setContentOffset(CGPoint(x: x,y :0), animated: true)
    }
    
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let position = scrollView.contentOffset.x / view.frame.size.width
        let indexPath = IndexPath(item: Int(position), section: 0)
        cataLogTitle.scrollToItem(at: indexPath, at: .left, animated: true)
        
    }
    


}

