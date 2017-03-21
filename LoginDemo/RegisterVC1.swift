//
//  RegisterVC1.swift
//  LoginDemo
//
//  Created by 吴子鸿 on 2017/2/3.
//  Copyright © 2017年 吴子鸿. All rights reserved.
//

import UIKit

class RegisterVC1: UIViewController {

    @IBOutlet weak var getRegisterKeyButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //点击屏幕任何地方隐藏键盘
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
    
    @IBAction func getRegisterKeyBtnClick(_ sender: UIButton) {
        //后台线程计数
        let keydispatch = DispatchQueue.global()
        keydispatch.async {
            self.getRegisterKeyButton.isEnabled = false
            for i in 1...30
            {
                //调用主线程修改button文字
                DispatchQueue.main.async {
                    self.getRegisterKeyButton.setTitle("剩余\(30-i+1)秒", for: .normal)
                }
                sleep(1)
            }
            self.getRegisterKeyButton.isEnabled = true
        }
    }
    @IBAction func nextButtonClick(_ sender: UIButton) {
        self.navigationController?.pushViewController(RegisterVC2(), animated: true)
    }

}
