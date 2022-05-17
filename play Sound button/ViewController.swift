//
//  ViewController.swift
//  play Sound button
//
//  Created by Apple Esprit on 17/5/2022.
//

import UIKit
import AVFoundation



class ViewController: UIViewController {

    
    var audioPlayer: AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func playsound(_ sender: Any) {
        
        let pathToSound = Bundle.main.path(forResource: "sound", ofType: "mp3")!
        let url = URL(fileURLWithPath: pathToSound)
        
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        }catch {
            print(error)
        }
    }
    
    
    
    
}

