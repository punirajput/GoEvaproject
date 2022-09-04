//
//  BookingViewController.swift
//  GoEvaproject
//
//  Created by Deepak Singh Shekhawat on 16/08/22.
//

import UIKit

class BookingViewController: UIViewController {
    var value = "SUGGESTED RIDES"
    var arrdata = [String]()
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        arrdata = ["Sector 121","Sector 62"]
        
    }
    

    
}
extension BookingViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return arrdata.count
    
        
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookingTableViewCell", for: indexPath) as! BookingTableViewCell
        cell.lclbl.text = arrdata[indexPath.row]
        return cell
    }
    
   
    
}
