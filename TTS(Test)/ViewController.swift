//
//  ViewController.swift
//  TTS(Test)
//
//  Created by 정창규 on 2021/03/15.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func TTS(_ sender: Any) {
        // 텍스트를 음성으로 만들어주는 객체
        let synthesizer = AVSpeechSynthesizer()
        // 텍스트를 갖고 속도, 볼륨, 옥타브 컨트롤
        let utterance = AVSpeechUtterance(string: textView.text)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        utterance.rate = 0.5
        synthesizer.speak(utterance)
    }
    
}

