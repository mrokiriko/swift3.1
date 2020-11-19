//
//  ViewController.swift
//  homework31
//
//  Created by Admin on 19.11.2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit



@IBDesignable class PrimaryButton : UIButton {
    
    
    
    @IBInspectable var cornerRadius: CGFloat {
        
        get {
            return layer.cornerRadius
        }
        
        set {
            layer.cornerRadius = newValue
        }
        
    }
    
    @IBInspectable var backCol: UIColor? {
        didSet {
            self.layer.backgroundColor = backCol?.cgColor
        }
    }
    
    @IBInspectable var txt: String? {
        didSet {
            // Ne obnovlyaetsya
            self.titleLabel?.text = txt
            print(self.titleLabel?.text)
        }
    }
}

class ViewController: UIViewController {
    
    @IBOutlet var greenPerson: UIView?
    
    @IBAction func click(_ sender: UIButton) {
        
        greenPerson?.backgroundColor = UIColor(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1),
            alpha: 1.0
        )
        greenPerson?.frame.origin.y += 300
            
        sender.isEnabled = false
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

