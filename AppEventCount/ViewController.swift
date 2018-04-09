//
//  ViewController.swift
//  AppEventCount
//
//  Created by Mikk Noorkõiv on 05/04/2018.
//  Copyright © 2018 Mikk Noorkõiv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var didFinishLaunching: UILabel!
    var launchCount = 0
    @IBOutlet weak var willResignActive: UILabel!
    var resignActiveCount = 0
    @IBOutlet weak var didEnterBackground: UILabel!
    var enterBgrCount = 0
    @IBOutlet weak var willEnterForeground: UILabel!
    var willEnterForegroundCount = 0
    @IBOutlet weak var didBecomeActive: UILabel!
    var didBecomeActiveCount = 0
    @IBOutlet weak var willTerminate: UILabel!
    var willTerminateCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func updateView() { // Function to update all labels with most recent data
//        This function is called in AppDelegate's method applicationDidBecomeActive()
        
        didFinishLaunching.text = "Application did finish launching \(launchCount) times."
        willResignActive.text = "Application will resign active \(resignActiveCount) times."
        didEnterBackground.text = "Application did enter background \(enterBgrCount) times."
        willEnterForeground.text = "Application will enter foreground \(willEnterForegroundCount) times."
        didBecomeActive.text = "Application did become active \(didBecomeActiveCount) times."
        willTerminate.text = "Application will terminate \(willTerminateCount) times."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

