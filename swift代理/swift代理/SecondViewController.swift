//
//  SecondViewController.swift
//  swift代理
//
//  Created by wyf on 2017/8/17.
//  Copyright © 2017年 FanFanKJ. All rights reserved.
//

import UIKit

protocol Mydelegate {
    
    func acceptSomeThing(someThing:String)
}

class SecondViewController: UIViewController {
    
    var delegate:Mydelegate?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.purple

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        navigationController?.popViewController(animated: true)
        delegate?.acceptSomeThing(someThing: "你好")
        
    }


}
