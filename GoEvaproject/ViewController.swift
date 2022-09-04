//
//  ViewController.swift
//  GoEvaproject
//
//  Created by Deepak Singh Shekhawat on 13/07/22.
//

import UIKit
import DropDown


class ViewController: UIViewController {

    @IBOutlet var flaglbl: UILabel!
    @IBOutlet var flagimage: UIImageView!
    @IBOutlet var scrollerview: UIScrollView!
    @IBOutlet var countrybtn: UIButton!
    @IBOutlet var registerbtn: UIButton!
    @IBOutlet var signbtn: UIButton!
    @IBOutlet var mobiletxt: UITextField!
     let dropdown = DropDown()
     let flag = ["india","albania","thailand","portugal"]
    var strimage:UIImage!
    var strflag:String!
   
    override func viewDidLoad(){
        super.viewDidLoad()
        
          // lbldisplay.text = "+91"
       /* flagimage.image = UIImage(named: "fleg")
           dropdown.anchorView = flagimage
           dropdown.dataSource = flag
           dropdown.bottomOffset = CGPoint(x: 0, y:(dropdown.anchorView?.plainView.bounds.height)!)

           dropdown.topOffset = CGPoint(x: 0, y:-(dropdown.anchorView?.plainView.bounds.height)!)
           dropdown.direction = .bottom
           dropdown.selectionAction = { [unowned self] (index: Int, item: String) in
             print("Selected item: \(item) at index: \(index)")
               self.flagimage.image = UIImage(named: fleg[index])
               
               DropDown.appearance().textColor = UIColor.black
               DropDown.appearance().selectedTextColor = UIColor.red
               DropDown.appearance().backgroundColor = UIColor.white
               DropDown.appearance().selectionBackgroundColor = UIColor.lightGray
              
        
          
       }
        
    }

    @IBAction func signbtntapped(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "OTPViewController") as! OTPViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func registerbtntapped(_ sender: Any) {
    }
    @IBAction func helptapped(_ sender: Any) {
    }*/
        signbtn.clipsToBounds = true
        signbtn.layer.cornerRadius = 10
        
        flagimage.image = strimage
        flaglbl.text = strflag
        
}
    @IBAction func countrybtntapped(_ sender: Any) {
       //  dropdown.show()
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignupViewController") as! SignupViewController
        vc.delegate = self
        self.navigationController?.present(vc, animated: true, completion: nil)
    }

    @IBAction func forgettapped(_ sender: Any) {
        let story = self.storyboard?.instantiateViewController(withIdentifier: "forgetViewController") as! forgetViewController
        self.navigationController?.pushViewController(story, animated: true)
    }
    
  @IBAction func signintapped(_ sender: Any) {
        let codeviewdata = self.storyboard?.instantiateViewController(withIdentifier: "codeview") as! codeViewController
        self.navigationController?.pushViewController(codeviewdata, animated: true)
    }
    
    @IBAction func registertapped(_ sender: Any) {
        let register = self.storyboard?.instantiateViewController(withIdentifier: "stactscroller") as! stackscrollerViewController
        self.navigationController?.pushViewController(register, animated: true)
        
        
    }
    
 
    
}
extension ViewController: TableViewControllerDelegate {
    func countryDetails(value: Json) {
        self.flaglbl.text = "\(value["name"] ?? "")"
        self.flagimage.image = UIImage.init(named: value["image"] ?? "")
    }
}
