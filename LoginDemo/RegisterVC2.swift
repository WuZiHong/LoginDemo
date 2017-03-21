//
//  RegisterVC2.swift
//  LoginDemo
//
//  Created by 吴子鸿 on 2017/2/3.
//  Copyright © 2017年 吴子鸿. All rights reserved.
//

import UIKit

class RegisterVC2: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var surePasswordText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(tap(G:)));
        self.view.addGestureRecognizer(tap);
        
        self.navigationItem.title = "注册"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //隐藏键盘
    func tap(G:UITapGestureRecognizer) {
        self.view.endEditing(true);
    }
    
    @IBAction func finishButtonClick(_ sender: UIButton) {
        if (surePasswordText.text == "" || passwordText.text == "")
        {
            let Alert = UIAlertController(title: "提示", message: "请输入密码", preferredStyle: .alert);
            let myOkAction = UIAlertAction(title: "确定", style: .default, handler: nil);
            Alert.addAction(myOkAction);
            present(Alert, animated: true, completion: nil);
            return
        }
        if (surePasswordText.text == passwordText.text)
        {
            self.view.endEditing(true);   //关闭键盘，不然会弹出提示
            let Alert = UIAlertController(title: "提示", message: "注册成功", preferredStyle: .alert);
            let myOkAction = UIAlertAction(title: "确定", style: .default, handler: {
                (alert) -> Void in
                print("按下确认了")
                _ = self.navigationController?.popToRootViewController(animated: true)
            });
            Alert.addAction(myOkAction);
            present(Alert, animated: true, completion: nil);
        }
        else
        {
            let Alert = UIAlertController(title: "提示", message: "请确认密码是否相同", preferredStyle: .alert);
            let myOkAction = UIAlertAction(title: "确定", style: .default, handler: nil);
            Alert.addAction(myOkAction);
            present(Alert, animated: true, completion: nil);
        }
    }

}
