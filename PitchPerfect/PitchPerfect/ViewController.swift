//
//  ViewController.swift
//  PitchPerfect
//
//  Created by juan ocampo on 1/15/20.
//  Copyright © 2020 juan ocampo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        stopRecordingButton?.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewDidAppear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }

    @IBAction func stopRecordingAction(_ sender: Any) {
        print("record buttom was pressed")
        recordingLabel.text = "Tap Recording"
        stopRecordingButton?.isEnabled = false
        recordButton?.isEnabled = true
    }
    
    @IBAction func recordAudio(_ sender: Any) {
        print("record buttom was pressed")
        recordingLabel.text = "Recording in progress"
        stopRecordingButton?.isEnabled = true
        recordButton?.isEnabled = false
    }
    
}

