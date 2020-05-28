//
//  ViewController.swift
//  IdleTimerTest
//
//  Created by Tim Ekl on 5/27/20.
//  Copyright © 2020 Tim Ekl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var runningTimeLabel: UILabel!
    
    private var launchDateTimer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let formatter = MeasurementFormatter()
        formatter.unitOptions = [.naturalScale]
        launchDateTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { [weak self] (_) in
            let interval = Date().timeIntervalSince(AppDelegate.shared.launchDate)
            let measurement = Measurement(value: interval, unit: UnitDuration.seconds)
            self?.runningTimeLabel.text = formatter.string(from: measurement)
        })
    }

}

