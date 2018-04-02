//
//  CollectionMenuCell.swift
//  TestCustomViewCell
//
//  Created by 주호박 on 2018. 4. 2..
//  Copyright © 2018년 주호박. All rights reserved.
//

import UIKit

class CollectionMenuCell: UICollectionViewCell {
    
    @IBOutlet weak var menuImg: UIImageView!
    @IBOutlet weak var menuTitleLB: UILabel!
    @IBOutlet weak var starPointLB: UILabel!
    @IBOutlet weak var menuKindLB: UILabel!
    @IBOutlet weak var deliveryCostLB: UILabel!
    @IBOutlet weak var minOrderCostLB: UILabel!
    @IBOutlet weak var distanceCurrentLocationLB: UILabel!
    
    // img와 LB text는 call 부분에서 결정.
    var menuImgName: UIImage?{
        get{
            return menuImg?.image
        }
        set{
            menuImg?.image = newValue
        }
    }
    var menuTitle: String?{
        get{
            return menuTitleLB?.text
        }
        set{
            menuTitleLB.text = newValue
        }
    }
    
    var starPointValue: String?{
        get{
            return starPointLB?.text
        }
        set{
            starPointLB.text = newValue
        }
    }
    
    var menuKindValue: String?{
        get{
            return menuKindLB?.text
        }
        set{
            menuKindLB.text = newValue
        }
    }
    
    var deliveryCostValue: String?{
        get{
            return deliveryCostLB?.text
        }
        set{
            deliveryCostLB.text = newValue
        }
    }
    var minOrderCostValue: String?{
        get{
            return minOrderCostLB?.text
        }
        set{
            minOrderCostLB.text = newValue
        }
    }
    var distanceCurrentLocationValue: String?{
        get{
            return distanceCurrentLocationLB?.text
        }
        set{
            distanceCurrentLocationLB.text = newValue
        }
    }
}
