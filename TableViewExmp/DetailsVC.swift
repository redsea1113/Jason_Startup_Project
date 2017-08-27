//
//  DetailsVC.swift
//  TableViewExmp
//
//  Created by Ali Farhat on 4/12/15.
//  Copyright (c) 2015 ali farhat. All rights reserved.
//

import UIKit

class DetailsVC: UIViewController {

    
    @IBOutlet weak var lblDesc: UILabel!
    @IBOutlet weak var lblPhone: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var storeImage: UIImageView!
    
    
    var store:Store = Store()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblName.text = store.storeName
        lblDesc.text = store.storeDesc
        lblPhone.text = store.storePhone
        storeImage.image = UIImage(data: store.storeImage as Data)

        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
