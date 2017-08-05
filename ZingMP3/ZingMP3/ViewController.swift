//
//  ViewController.swift
//  ZingMP3
//
//  Created by Hung CIE on 8/5/17.
//  Copyright © 2017 Hung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblZingMp3: UILabel!
    @IBOutlet weak var lblMyName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lblZingMp3.alpha = 0
        lblMyName.alpha = 0
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        UIView.animate(withDuration: 4, animations: {
            self.lblZingMp3.alpha = 1
        }) { (finished) in
            UIView.animate(withDuration: 3, animations: {
                self.lblZingMp3.center = CGPoint(x: self.lblZingMp3.center.x, y: 100
                )
            }, completion: { (finished) in
                //hiển thị tên và chạy xuống dưới
                UIView.animate(withDuration: 3, animations: { 
                    self.lblMyName.alpha = 1
                    self.lblMyName.center = CGPoint(x: self.view.center.x, y: self.view.bounds.size.height - 30)
                }, completion: { (finished) in
                    print("Chạy xong")
                })
            })
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

