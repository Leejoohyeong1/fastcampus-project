//
//  subViewController.swift
//  FoodFly
//
//  Created by LEE on 2018. 3. 11..
//  Copyright © 2018년 LEE. All rights reserved.
//

import UIKit

class subViewController: UIViewController {
    

    @IBOutlet weak var _name: UILabel?
    
    
    var name: String {
        get {
            return self._name!.text!
        }
        set(newVal) {
            _name?.text = newVal
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
