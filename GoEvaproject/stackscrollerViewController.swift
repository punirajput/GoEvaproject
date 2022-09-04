//
//  stackscrollerViewController.swift
//  GoEvaproject
//
//  Created by Deepak Singh Shekhawat on 25/07/22.
//

import UIKit

class stackscrollerViewController: UIViewController , UINavigationControllerDelegate, UIImagePickerControllerDelegate{

    @IBOutlet var loginbtn: UIButton!
    @IBOutlet var signupbtn: UIButton!
    @IBOutlet var editimg: UIButton!
    @IBOutlet var imgupload: UIImageView!
    @IBOutlet var femaleimg: UIImageView!
    @IBOutlet var maleimg: UIImageView!
    @IBOutlet var repeatpasstxt: UITextField!
    @IBOutlet var passwordtxt: UITextField!
    @IBOutlet var altemailtxt: UITextField!
    @IBOutlet var ftxt: UITextField!
    @IBOutlet var emailtxt: UITextField!
    @IBOutlet var ltxt: UITextField!
    var maleSelected = true
    override func viewDidLoad() {
        super.viewDidLoad()

        signupbtn.layer.cornerRadius = 20
        imgupload.layer.borderWidth = 1.0
        imgupload.layer.masksToBounds = false
        imgupload.layer.borderColor = UIColor.white.cgColor
        imgupload.layer.cornerRadius = imgupload.frame.size.width/2
        imgupload.clipsToBounds = true
        signupbtn.layer.cornerRadius = 10
        signupbtn.clipsToBounds = true
      
     
    }
    

    @IBAction func malebtntapped(_ sender: Any) {
        maleSelected = true
        genderSelection()
    }
    
    @IBAction func femalebtntapped(_ sender: Any) {
        maleSelected = false
        genderSelection()
    }
    
    @IBAction func editimgbtntapped(_ sender: Any) {
        let imagecontroller = UIImagePickerController()
        imagecontroller.delegate = self
        imagecontroller.sourceType = UIImagePickerController.SourceType.photoLibrary
        self.present(imagecontroller, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imgupload.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        self.dismiss(animated: true, completion: nil)
    
    }
    func genderSelection() {

        if maleSelected == true {
            maleimg.image = UIImage.init(named: "check")
            femaleimg.image = nil
        } else {
            femaleimg.image = UIImage.init(named: "check")
            maleimg.image = nil
        }
    }
        
    
    @IBAction func signupbtntapped(_ sender: Any) {
        let main = self.storyboard?.instantiateViewController(withIdentifier: "sidemenu") as! sidemenuViewController
        self.navigationController?.pushViewController(main, animated: true)
        
    }
    
    @IBAction func loginbtntapped(_ sender: Any) {
        let story = self.storyboard?.instantiateViewController(withIdentifier: "viewcontroller") as! ViewController
        self.navigationController?.pushViewController(story, animated: true)
    }
}
