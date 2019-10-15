//
//  ViewController.swift
//  DarkModeCode
//
//  Created by Steven Lipton on 9/30/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLayoutSubviews() {
        let colorMode = traitCollection.userInterfaceStyle
        label.text = colorMode == .dark ? "Dark Mode" : "Light Mode"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.cornerRadius = 20
        
        
        button.setTitleColor(.secondaryLabel, for: .normal)
        button.backgroundColor = .secondarySystemFill
        label.textColor = .label
        segmentedControl.tintColor = .blue
        segmentedControl.backgroundColor = .systemRed
        segmentedControl.selectedSegmentTintColor = .systemGreen
        
    }


}

