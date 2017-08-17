//
//  ViewController.swift
//  swift代理
//
//  Created by wyf on 2017/8/17.
//  Copyright © 2017年 FanFanKJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,Mydelegate,ThirdViewControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        let label = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        label.tag = 100
        label.backgroundColor = UIColor.red
        view.addSubview(label)
        
        let btn = UIButton(frame: CGRect(x: label.frame.origin.x, y:label.frame.maxY, width: label.frame.width, height: label.frame.width))
        btn.backgroundColor = UIColor.green
        
        view.addSubview(btn)
        
        btn.addTarget(self, action: #selector(btnclick), for: .touchUpInside)
    }
    @objc func btnclick(){
        
        let vc = SecondViewController()
        vc.delegate = self
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let vc = ThirdViewController()
        
        navigationController?.pushViewController(vc, animated: true)
        vc.delegate = self
        
    }
    // MARK: - ThirdViewControllerDelegate
    func acceptsome(_ name: String!) {
        
        print(name)
    }
    // MARK: - Mydelegate
    func acceptSomeThing(someThing:String){
        
        let label = view.viewWithTag(100) as? UILabel
        label?.text = someThing
        
        
    }

    
}

