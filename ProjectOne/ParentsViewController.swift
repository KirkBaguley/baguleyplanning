//
//  ParentsViewController.swift
//  ProjectOne
//
//  Created by Kirk S. Baguley on 9/23/20.
//  Copyright © 2020 Kirk S. Baguley. All rights reserved.
//

import UIKit

class ParentsViewController: UIViewController {
    
    @IBOutlet var aaliyahLabel: UILabel!
    @IBOutlet var bryantLabel: UILabel!
    
    let aaliyah: [String] = ["Take out the dog", "Fold the laundry", "School", "Homework", "Tell stories", "Play with the babies"]
    let bryant: [String] = ["Go to timeout", "Tss tss", "Take pictures of feet", "Tss tss", "Eat dinner", "TSS TSS"]
    var currentAIndex: Int = 0
    var currentBIndex: Int = 0
    
    @IBAction func showAaliyah(_ sender: UIButton){
        currentAIndex += 1
        if currentAIndex == aaliyah.count{
            currentAIndex = 0
        }
        let aaliya: String = aaliyah[currentAIndex]
        aaliyahLabel.text = aaliya
    }
    
    @IBAction func showBryant(_ sender: UIButton){
        currentBIndex += 1
        if currentBIndex == bryant.count{
            currentBIndex = 0
        }
        let bry: String = bryant[currentBIndex]
        bryantLabel.text = bry
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("ParentsViewController loaded its view")
        aaliyahLabel.text = ""
        bryantLabel.text = ""
    }
}
