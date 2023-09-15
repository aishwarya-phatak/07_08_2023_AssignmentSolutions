//
//  ViewController.swift
//  07_08_2023_AssignmentSolutions
//
//  Created by Vishal Jagtap on 15/09/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var avPlayer : AVPlayer?
    var btnPlay : UIButton?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnPlay = UIButton(frame: CGRect(x: 50, y: 50, width: 200, height: 50))
        btnPlay?.backgroundColor = .lightGray
        btnPlay?.setTitle("Play", for: .normal)
        btnPlay?.addTarget(
            self,
            action: #selector(btnPlayClick),
            for: UIControl.Event.touchUpInside)
        self.view.addSubview(btnPlay!)
    }
    
    @objc func btnPlayClick(){
        playAudio(nameOfAudioFile: "audio_file")
    }
    
    @IBAction func btnPlayAudio(_ sender: UIButton) {
        print("The title is \(sender.currentTitle)")
        print("The tag is \(sender.tag)")
        
        switch sender.tag{
        case 1:
            playAudio(nameOfAudioFile: "audio_file")
        case 2:
            playAudio(nameOfAudioFile: "Chaand Taare Yes Boss 320 Kbps")
        case 3 :
            playAudio(nameOfAudioFile: "Chaand Taare Yes Boss 320 Kbps")
        default:
            print("No cases have matched")
        }
//        if sender.tag == 1{
//            playAudio(nameOfAudioFile: "audio_file")
//        } else if sender.tag == 2{
//            playAudio(nameOfAudioFile: "Chaand Taare Yes Boss 320 Kbps")
//        } else{
//            playAudio(nameOfAudioFile: "Chaand Taare Yes Boss 320 Kbps")
//        }
    }
    
    func playAudio(nameOfAudioFile : String){
        let audioUrl = Bundle.main.url(forResource: nameOfAudioFile, withExtension: ".mp3")
        avPlayer = try! AVPlayer(url: audioUrl!)
        avPlayer?.play()
    }
}
