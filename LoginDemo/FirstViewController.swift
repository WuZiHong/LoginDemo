//
//  FirstViewController.swift
//  LoginDemo
//
//  Created by 吴子鸿 on 2017/2/3.
//  Copyright © 2017年 吴子鸿. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginButtonClick(_ sender: UIButton) {
        
        let loginVC = LoginVC()
        let navigationLoginVC = UINavigationController(rootViewController: loginVC)
        self.present(navigationLoginVC, animated: true, completion: nil)
        
    }

}

