//
//  PlaySoundViewController.swift
//  PitchPerfect
//
//  Created by juan ocampo on 1/21/20.
//  Copyright © 2020 juan ocampo. All rights reserved.
//

import UIKit

class PlaySoundViewController: UIViewController {
    
    var recordedAudioURL: URL!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "stopRecording" {
            let playSoundsVC = segue.destination as! PlaySoundViewController
            let recorderdAudioURL = sender as! URL
            playSoundsVC.recordedAudioURL = recorderdAudioURL
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
