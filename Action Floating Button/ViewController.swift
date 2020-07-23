//
//  ViewController.swift
//  Action Floating Button
//
//  Created by Adwait Barkale on 20/07/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var actionButton : ActionButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtons()
        
    }

    func setupButtons()
    {
        let google = ActionButtonItem(title: "Google", image: #imageLiteral(resourceName: "a1"))
        google.action = { item in self.view.backgroundColor = .blue}
        let facebook = ActionButtonItem(title: "Facebook", image: #imageLiteral(resourceName: "a3"))
        let linkedin = ActionButtonItem(title: "Linkedin", image: #imageLiteral(resourceName: "a4"))
        let twiter = ActionButtonItem(title: "Twiter", image: #imageLiteral(resourceName: "a2"))
        actionButton = ActionButton(attachedToView: self.view, items: [google,facebook,linkedin,twiter])
        actionButton?.setTitle("+", forState: UIControl.State())
        actionButton?.backgroundColor = UIColor.init(red: 238.0/255.0, green: 130.0/255.0, blue: 130.0/255.0, alpha: 1)
        actionButton?.action = {button in button.toggleMenu()}
    }
}

