//
//  ViewController.swift
//  Leaders12th_CheckApp
//
//  Created by 大林拓実 on 2020/05/16.
//  Copyright © 2020 Obayashi Takumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var contentArray: [String] = ["ジャック", "ジュン", "ブーケ", "ビンタ", "ロボ"]
    var index: Int = 0
    
    @IBOutlet var indexLabel: UILabel!
    @IBOutlet var contentLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        contentLabel.text = contentArray[index]
        indexLabel.text = "\(index+1)番目"
    }
    
    @IBAction func first() {
        index = 0
        contentLabel.text = contentArray[index]
        indexLabel.text = "\(index+1)番目"
    }
    
    @IBAction func second() {
        index = 1
        contentLabel.text = contentArray[index]
        indexLabel.text = "\(index+1)番目"
    }
    
    @IBAction func third() {
        index = 2
        contentLabel.text = contentArray[index]
        indexLabel.text = "\(index+1)番目"
    }

    @IBAction func next() {
        if index == contentArray.count-1 {
            index = 0
        }
        else {
            index += 1
        }
        contentLabel.text = contentArray[index]
        indexLabel.text = "\(index+1)番目"
    }
    
    @IBAction func back(){
        if index == 0 {
            index = contentArray.count - 1
        }
        else {
            index -= 1
        }
        contentLabel.text = contentArray[index]
        indexLabel.text = "\(index+1)番目"
    }

}

