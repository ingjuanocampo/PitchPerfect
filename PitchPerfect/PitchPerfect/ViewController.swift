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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        // Do any additional setup after loading the view.
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

    @IBAction func stopRecording(_ sender: Any) {
        print("record buttom was pressed")
        recordingLabel.text = "Start Recording"
    }
    
    @IBAction func recordAudio(_ sender: Any) {
        print("record buttom was pressed")
        recordingLabel.text = "Recording in progress"
    }
    
}

