//
//  LoginVC.swift
//  LoginDemo
//
//  Created by 吴子鸿 on 2017/2/3.
//  Copyright © 2017年 吴子鸿. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //点击屏幕任何地方隐藏键盘
        let tap = UITapGestureRecognizer(target: self, action: #selector(tap(G:)));
        self.view.addGestureRecognizer(tap);
        
        let closeButton=UIBarButtonItem(title: "关闭", style: UIBarButtonItemStyle.plain, target: self, action: #selector(close))
        self.navigationItem.leftBarButtonItem=closeButton
        self.navigationItem.title = "登陆"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //隐藏键盘
    func tap(G:UITapGestureRecognizer) {
        self.view.endEditing(true);
    }
    
    func close()
    {
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func loginButtonClick(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func registerButtonClick(_ sender: UIButton) {
        self.navigationController?.pushViewController(RegisterVC1(), animated: true)
    }

}
