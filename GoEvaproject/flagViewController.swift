//
//  SignupViewController.swift
//  GoEvaproject
//
//  Created by Deepak Singh Shekhawat on 13/07/22.
//

import UIKit
typealias Json = [String: String]

protocol TableViewControllerDelegate {
    func countryDetails(value: Json)
}

class SignupViewController: UIViewController {

   
    @IBOutlet var tableview: UITableView!
    
    var delegate: TableViewControllerDelegate?
    
    var arrData = [Json]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        
       
        arrData.append(["name":"TH", "image": "thailand"])
        arrData.append(["name":"PT", "image": "portugal"])
        arrData.append(["name":"IR", "image": "iran"])
        arrData.append(["name":"TH", "image": "thailand"])
        arrData.append(["name":"AL", "image": "albania"])
        arrData.append(["name":"BT", "image": "bhutan"])
        arrData.append(["name":"CA", "image": "canada"])
        arrData.append(["name":"EN", "image": "England"])
        arrData.append(["name":"AF", "image": "afghanistan"])
        arrData.append(["name":"IT", "image": "italy"])
        arrData.append(["name":"UAE", "image": "united-arab-emirates"])
        arrData.append(["name":"IN", "image": "india"])
        arrData.append(["name":"NZ", "image": "newzealand"])
        arrData.append(["name":"TR", "image": "turkey"])
        arrData.append(["name":"USA", "image": "usa"])
        
        
      
       
    }
    

    
}
extension SignupViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:flagTableViewCell = tableView.dequeueReusableCell(withIdentifier: "flagcell", for: indexPath) as! flagTableViewCell
        cell.countryname.text = arrData[indexPath.row]["name"]
        cell.countryimage.image = UIImage(named: arrData[indexPath.row]["image"] ?? "")
       
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return  40
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    self.dismiss(animated: true) {
        self.delegate?.countryDetails(value: self.arrData[indexPath.row])
    }
    
        
}
  

}
