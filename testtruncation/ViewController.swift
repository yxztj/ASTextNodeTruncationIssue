//
//  ViewController.swift
//  testtruncation
//
//  Created by Jason Yu on 3/1/16.
//  Copyright © 2016 Ruguo. All rights reserved.
//

import UIKit
import AsyncDisplayKit

class ViewController: UIViewController {

    var testLabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let testString = "1\n2\n3\n4\n5"
        let attributedString = NSAttributedString(string: testString)
        let maxLines = 3
        
        testLabel.text = testString
        testLabel.backgroundColor = UIColor.lightGrayColor()
        testLabel.numberOfLines = maxLines
        testLabel.frame = CGRect(x: 20, y: 60, width: 40, height: 100)
        testLabel.attributedText = attributedString
        self.view.addSubview(testLabel)
        
        let textNode = ASTextNode()
        textNode.maximumNumberOfLines = UInt(maxLines)
        textNode.backgroundColor = UIColor.lightGrayColor()
        textNode.attributedString = attributedString
        self.view.addSubnode(textNode)
        textNode.frame = CGRect(x: 70, y: 60, width: 40, height: 100)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

