//
//  StoreListTBV.swift
//  TableViewExmp
//
//  Created by Ali Farhat on 4/10/15.
//  Copyright (c) 2015 ali farhat. All rights reserved.
//

import UIKit

class StoreListTBV: UITableViewController {


    
    var storeList = [Store]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
               self.loadRecords()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return storeList.count
        
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
      
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! StoreTVC
        
  
        
        let s = storeList[indexPath.row] as Store
        
        cell.lblName.text = s.storeName
        cell.lblDesc.text = s.storeDesc
        cell.lblPhone.text = s.storePhone
        
        cell.imgvImage.image = UIImage(named: s.storeImageName)
        
        return cell
        
    }
    

    

    // MARK: - Navigation

    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "details"
        {
            
           // if let indexPath = tableView.indexPathForCell(sender as UITableViewCell)
            
            if let indexPath = tableView.indexPathForSelectedRow
            {
                let s = storeList[indexPath.row] as Store
                
                let dvc = segue.destination as! DetailsVC
         
                dvc.store = s
            
            }

        }
        
        
        
    }
   
    /*********************************************************************
     *
     *   This function is responsible for calling web services and receives
     *   back data
     *
     ********************************************************************/
    
    func loadRecords()
    {
        
      
        
        
    }

    

    
    
    /*********************************************************************
    *
    *   This function is responsible of parsing out json data
    *
    ********************************************************************/
    
    func parseJSON(_ jsonData:AnyObject)
    {
        
        
    }

   
    
    /*********************************************************************
    *
    *
    *  This function downloads images for each record
    *
    ********************************************************************/
    
    func loadImages(_ store:Store, indexPath:IndexPath)
    {
        
        
    }
    

    

    
    

}
