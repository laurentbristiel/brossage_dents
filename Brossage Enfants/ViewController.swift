//
//  ViewController.swift
//  Brossage Enfants
//
//  Created by Laurent bristiel on 29/11/15.
//  Copyright © 2015 Laurent bristiel. All rights reserved.
//

// This is very bascis/bad code
// Just exploring Xcode, Swift, and iOS development

import UIKit

class ViewController: UIViewController {
    
    var timerLeft = NSTimer()
    var timerCenter = NSTimer()
    var timerRight = NSTimer()

    var timeLeft = 180
    var timeCenter = 180
    var timeRight = 180

    func decreaseTimerLeft(){
        if(timeLeft >= 0) {
            timerLabelLeft.text = String(timeLeft--)
        }
    }

    func decreaseTimerCenter(){
        if(timeLeft >= 0) {
            timerLabelCenter.text = String(timeCenter--)
        }
    }

    func decreaseTimerRight(){
        if(timeRight >= 0) {
            timerLabelRight.text = String(timeRight--)
        }
    }
    
    @IBOutlet weak var timerLabelLeft: UILabel!
    @IBOutlet weak var timerLabelCenter: UILabel!
    @IBOutlet weak var timerLabelRight: UILabel!
    
    @IBAction func startButtonLeft(sender: AnyObject) {
        timeLeft = 180
        timerLabelLeft.text = String(timeLeft)
        timerLeft.invalidate()
        timerLeft = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("decreaseTimerLeft"), userInfo: nil, repeats: true)
    }
    
    @IBAction func startButtonCenter(sender: AnyObject) {
        timeCenter = 180
        timerLabelCenter.text = String(timeCenter)
        timerCenter.invalidate()
        timerCenter = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("decreaseTimerCenter"), userInfo: nil, repeats: true)
    }
    
    @IBAction func startButtonRight(sender: AnyObject) {
        timeRight = 180
        timerLabelRight.text = String(timeRight)
        timerRight.invalidate()
        timerRight = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("decreaseTimerRight"), userInfo: nil, repeats: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

