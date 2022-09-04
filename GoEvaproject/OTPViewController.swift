//
//  OTPViewController.swift
//  GoEvaproject
//
//  Created by Deepak Singh Shekhawat on 17/07/22.
//

import UIKit

class codeViewController: UIViewController {

    @IBOutlet var lblreset: UILabel!
    @IBOutlet var otpsendbtn: UIButton!
    @IBOutlet var text4: UITextField!
    @IBOutlet var text3: UITextField!
    @IBOutlet var text2: UITextField!
    @IBOutlet var text1: UITextField!
    @IBOutlet var stackview: UIStackView!
    @IBOutlet var otpscroller: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        otpsendbtn.layer.cornerRadius = 10
        otpsendbtn.clipsToBounds =  true

    }
    
    @IBAction func otpresendbtntapped(_ sender: Any) {
        
      
    }
    
}
