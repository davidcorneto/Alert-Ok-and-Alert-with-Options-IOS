//
//  ViewController.swift
//  UIAlertController
//
//  Created by Vesperia on 8/3/17.
//  Copyright © 2017 David. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


    func createAlert(title:String, message:String, alertType:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        switch alertType {
        case "OPTION":
            alert.addAction(UIAlertAction(title: "Yes", style: UIAlertActionStyle.default, handler: { (action) in
                alert.dismiss(animated: true, completion: nil)
                self.performSegue(withIdentifier: "segue", sender: self)
            
            }))
            
            
            alert.addAction(UIAlertAction(title: "No", style: UIAlertActionStyle.default, handler: { (action) in
                alert.dismiss(animated: true, completion: nil)
            }))
            self.present(alert, animated: true, completion: nil)
            print("OPTIONS")
            break
            
        case "OK":
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
                alert.dismiss(animated: true, completion: nil)
            }))
            
            self.present(alert, animated: true, completion: nil)
            break
        default:
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: { (action) in
                alert.dismiss(animated: true, completion: nil)
            }))
            self.present(alert, animated: true, completion: nil)
           
        }
    }
    
    @IBAction func alertOk(_ sender: UIButton) {
        createAlert(title: "Warning", message: "Pastikan Anda telah mengisikan Email dan Password dengan benar!",alertType: "OK")
     
    }
    @IBAction func alertOption(_ sender: UIButton) {
        createAlert(title: "Konfirmasi", message: "Apakah Anda ingin memesan produk ini?", alertType: "OPTION")
        
    }
    
}

