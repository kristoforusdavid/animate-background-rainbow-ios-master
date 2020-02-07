//
//  ViewController.swift
//  BackgroundRainbow
//
//  Created by Kristoforus David on 07/01/20.
//  Copyright © 2020 Kristoforus David. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var superView: UIView!
    
    let arrColour: [UIColor] = [#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1), #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1), #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)]
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(changeBackground), userInfo: nil, repeats: true)
        // Do any additional setup after loading the view.
    }
    
    @objc func changeBackground() {
        
        UIView.animate(withDuration: 0.3) {
            self.superView.backgroundColor = self.arrColour[self.index]
        }
        
        self.index = self.index + 1
        
        if self.index >= arrColour.count {
            self.index = 0
        }
    }

}

