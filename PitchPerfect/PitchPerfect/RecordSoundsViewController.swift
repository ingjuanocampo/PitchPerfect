//
//  RecordSoundsViewController.swift
//  PitchPerfect
//
//  Created by juan ocampo on 1/15/20.
//  Copyright © 2020 juan ocampo. All rights reserved.
//

import UIKit
import AVFoundation

class RecordSoundsViewController: UIViewController, AVAudioRecorderDelegate {
    
    
    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    var audioRecorder: AVAudioRecorder!
    
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
        print("stop record buttom was pressed")
        recordingLabel.text = "Tap Recording"
        stopRecordingButton?.isEnabled = false
        recordButton?.isEnabled = true
        
        audioRecorder.stop()
        let audioSession = AVAudioSession.sharedInstance()
        try! audioSession.setActive(false)
    }
    
    @IBAction func recordAudio(_ sender: Any) {
        print("record buttom was pressed")
        recordingLabel.text = "Recording in progress"
        stopRecordingButton?.isEnabled = true
        recordButton?.isEnabled = false
        
        let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask, true)[0] as String
        let recordingName = "recordedVoice.wav"
        let pathArray = [dirPath, recordingName]
        let filePath = URL(string: pathArray.joined(separator: "/"))
        
        let session = AVAudioSession.sharedInstance()
        try! session.setCategory(AVAudioSession.Category.playAndRecord, mode: AVAudioSession.Mode.default, options: AVAudioSession.CategoryOptions.defaultToSpeaker)
        
        try! audioRecorder = AVAudioRecorder(url: filePath!, settings: [:])
        audioRecorder.delegate = self
        audioRecorder.isMeteringEnabled = true
        audioRecorder.prepareToRecord()
        audioRecorder.record()
    }
    
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        print("audioRecorderDidFinishRecording")
        if flag {
            performSegue(withIdentifier: "stopRecordingSe", sender: audioRecorder.url)
        } else {
            print("Error happened")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Prepare segue was called")

        if segue.identifier == "stopRecordingSe" {
            let playSoundsVC = segue.destination as! PlaySoundViewController
            let recorderdAudioURL = sender as! URL
            playSoundsVC.recordedAudioURL = recorderdAudioURL
        }
    }
    
}

