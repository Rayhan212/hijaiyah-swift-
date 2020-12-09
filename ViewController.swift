//
//  ViewController.swift
//  Hijaiyah
//
//  Created by Edi Sunardi on 19/11/20.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnHijaiyah(_ sender: Any) {
        playSound(Sound: (sender as AnyObject).currentTitle!)
    }
    
    func playSound(Sound: String) {
        let url = Bundle.main.url(forResource: Sound, withExtension: "mp3" )
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
    }
    

}

