//
//  RegisterScreenViewController.swift
//  Safe Space
//
//  Created by Taha Karakaş on 6.08.2024.
//

import UIKit

class RegisterScreenViewController: UIViewController {
    
    @IBOutlet weak var namet: UITextField!
    
    
    @IBOutlet weak var passwordT: UITextField!
    
    @IBOutlet weak var registerB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerBP(_ sender: UIButton) {
        guard let name = namet.text, !name.isEmpty,
              let password = passwordT.text, !password.isEmpty else {
            // Kullanıcıya tüm alanları doldurması gerektiğini bildirin
            let alert = UIAlertController(title: "Error", message: "Please enter both name and password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            self.performSegue(withIdentifier: "goToResult", sender: self)
            return
            
            
            
            
            
        }
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! RegisterScreenViewController
            
        }
    }
}
