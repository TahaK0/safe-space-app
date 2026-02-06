//
//  ViewController.swift
//  Safe Space
//
//  Created by Taha Karakaş on 4.08.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var webButton: UIButton!
    
    
    @IBOutlet weak var button2: UIButton!
    
    
    @IBOutlet weak var button3: UIButton!
    
    
    @IBOutlet weak var supportButton: UIButton!
    
    @IBOutlet weak var floatingTextField2: UITextField!
    
    @IBOutlet weak var floatinTextField: UITextField!
    
   
    
    @IBOutlet weak var formButton: UIButton!
    private let floatingLabel = UILabel()

    override func viewDidLoad() {
            super.viewDidLoad()
            
            
            floatinTextField.alpha = 0.0
        floatingTextField2.alpha = 0.0
            
        UIView.animate(withDuration: 0.7, delay: 0.5, options: .curveEaseIn, animations: {
                self.floatinTextField.alpha = 1.0
            }, completion: nil)
        UIView.animate(withDuration: 0.7, delay: 0.5, options: .curveEaseIn, animations: {
            self.floatingTextField2.alpha = 1.0
        }, completion: nil)
        }

        
    func feedbackVibrate() {
        let feedbackGenerator = UINotificationFeedbackGenerator()
        feedbackGenerator.notificationOccurred(.success)
        
    }
    
    
    @IBAction func button3Pressed(_ sender: UIButton) {
        feedbackVibrate()
        let countryCode = "90"
        let mobileNumber = "501 183 0 183"
        
        
         let fullPhoneNumber = "\(90)\(5413764282)"
        
     
        let urlString = "https://api.whatsapp.com/send?phone=\(905011830183)"
        
        
        if let urlStringEncoded = urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed),
           let url = URL(string: urlStringEncoded) {
           
            if UIApplication.shared.canOpenURL(url) {
                print("Opening WhatsApp")
                UIApplication.shared.open(url, options: [:], completionHandler: { status in
                    print("Opened a WhatsApp chat")
                })
            } else {
                print("Can't open WhatsApp")
            }
        }
    }
    
    
    @IBAction func webButtonPressed(_ sender: UIButton) {
        feedbackVibrate()
        
        if let url = URL(string: "https://yigitgunes26.wixsite.com/safe-place") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
            
        }
        
        
        
        
    }
    @IBAction func formButtonPressed(_ sender: UIButton) {
        feedbackVibrate()
        if let url = URL(string: "https://docs.google.com/forms/d/e/1FAIpQLSdSebWo-0ik4d7Y4U49IPi-6S-zA-hJOneMHBaIYcz0TyaxsA/viewform") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
            
            
        }
    }
    @IBAction func button2Pressed(_ sender: UIButton) {
        if let url = URL(string: "tel://112") {
                    if UIApplication.shared.canOpenURL(url) {
                        UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    } else {
                        
                        let alert = UIAlertController(title: "Hata", message: "Bu cihaz telefon aramaları yapamıyor.", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "Tamam", style: .default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
                    }
                }
            }
        }
    
