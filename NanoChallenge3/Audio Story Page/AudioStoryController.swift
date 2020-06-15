//
//  AudioStoryController.swift
//  NanoChallenge3
//
//  Created by Rafika Alifia Isti on 11/06/20.
//  Copyright © 2020 Intan Yoshana. All rights reserved.
//

import UIKit
import AVFoundation

class AudioStoryController: UIViewController, AVAudioPlayerDelegate {
    @IBOutlet weak var audioTitleLabel: UILabel!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var audioSlider: UISlider!
    
    var titleText: String?
    var player = AVAudioPlayer()
    var currentAudio = TimeInterval()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    do{
        let audioPlayer = Bundle.main.path (forResource: "audio-pendakian", ofType: "mp3" )
        try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPlayer!) as URL)
        
    }
    catch {
        //Error
    }
    
        audioSlider.maximumValue = Float(player.duration)
        Timer.scheduledTimer(timeInterval: 0.0, target: self, selector: #selector(self.updateSlider), userInfo: nil, repeats: true)
        
    }
    
    
    @IBAction func chevronDownTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func playAudio(_ sender: UIButton) {
        
        if sender.currentTitle == "Play" {
            player.play()
            sender.setImage(UIImage(named: "icon-pause-fin"), for: .normal)
            sender.setTitle("Pause", for: .normal)
        } else if sender.currentTitle == "Pause" {
            player.pause()
            sender.setImage(UIImage(named:"icon-play-fin"), for: .normal)
            sender.setTitle("Play", for: .normal)
        }

    }
    
    @IBAction func changeAudioTime(_ sender: UISlider) {
        player.stop()
        player.currentTime = TimeInterval(audioSlider.value)
      
       
    }
    
    
    @objc func updateSlider() {
        audioSlider.value =  Float(player.currentTime )
    }

}
