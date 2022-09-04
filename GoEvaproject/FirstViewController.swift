//
//  FirstViewController.swift
//  GoEvaproject
//
//  Created by Deepak Singh Shekhawat on 17/08/22.
//

import UIKit
import DropDown

class FirstViewController: UIViewController {

    @IBOutlet var fbtn: UIButton!
    @IBOutlet var gbtn: UIButton!
    @IBOutlet var CWAbtn: UIButton!
    @IBOutlet var cwpbtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        cwpbtn.layer.borderColor = UIColor.black.cgColor
        cwpbtn.layer.cornerRadius = 10
        CWAbtn.layer.cornerRadius = 10
        gbtn.layer.cornerRadius = 10
        fbtn.layer.cornerRadius = 10
        fbtn.layer.borderColor = UIColor.black.cgColor
        gbtn.layer.borderColor = UIColor.black.cgColor
    }
    
    @IBAction func nextbtn(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "viewcontroller") as! ViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func abc(name: String = "Deepak") {
        
    }
    
}
