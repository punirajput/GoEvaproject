//
//  forgetViewController.swift
//  GoEvaproject
//
//  Created by Deepak Singh Shekhawat on 18/07/22.
//

import UIKit

class forgetViewController: UIViewController {

    @IBOutlet var otpbtn: UIButton!
    @IBOutlet var textemail: UITextField!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        otpbtn.layer.cornerRadius = 10
        otpbtn.clipsToBounds = true

       
    }
    
    @IBAction func otptapped(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "OTPViewController") as! codeViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
