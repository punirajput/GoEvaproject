//
//  accountViewController.swift
//  GoEvaproject
//
//  Created by Deepak Singh Shekhawat on 18/07/22.
//

import UIKit

class accountViewController: UIViewController , UINavigationControllerDelegate, UIImagePickerControllerDelegate{

    @IBOutlet var femaleimg: UIImageView!
    @IBOutlet var maleimg: UIImageView!
    @IBOutlet var logingbtn: UIButton!
    @IBOutlet var dpimage: UIImageView!
    @IBOutlet var editbtn: UIButton!
    @IBOutlet var repasstxtfield: UITextField!
    @IBOutlet var signupbtn: UIButton!
    @IBOutlet var passwordtxtfield: UITextField!
    @IBOutlet var alttextfield: UITextField!
    @IBOutlet var emailtxtfield: UITextField!
    @IBOutlet var lasttextfield: UITextField!
    @IBOutlet var firsttxtfield: UITextField!
     var maleSelected = true
 
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        dpimage.layer.borderWidth = 1.0
        dpimage.layer.masksToBounds = false
        dpimage.layer.borderColor = UIColor.white.cgColor
        dpimage.layer.cornerRadius = dpimage.frame.size.width/2
        dpimage.clipsToBounds = true
        signupbtn.layer.cornerRadius = 10
        signupbtn.clipsToBounds = true
      
    }

    @IBAction func maletapped(_ sender: Any) {
        maleSelected = true
        genderSelection()
        
    }
    
    @IBAction func femaletapped(_ sender: Any) {
        maleSelected = false
        genderSelection()
        
    }
    @IBAction func edittapped(_ sender: UIButton) {
        let imagecontroller = UIImagePickerController()
        imagecontroller.delegate = self
        imagecontroller.sourceType = UIImagePickerController.SourceType.photoLibrary
        self.present(imagecontroller, animated: true, completion: nil)
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        dpimage.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
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
        
    
    
    @IBAction func signuptapped(_ sender: Any) {
        let main = self.storyboard?.instantiateViewController(withIdentifier: "sidemenu") as! sidemenuViewController
        self.navigationController?.pushViewController(main, animated: true)
        
    }
    @IBAction func logintapped(_ sender: Any) {
        let story = self.storyboard?.instantiateViewController(withIdentifier: "viewcontroller") as! ViewController
        self.navigationController?.pushViewController(story, animated: true)
    }
    
}
