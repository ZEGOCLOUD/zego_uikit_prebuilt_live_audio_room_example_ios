//
//  ViewController.swift
//  ZegoUIKitPrebuiltLiveAudioRoomDemo
//
//  Created by zego on 2022/12/12.
//

import UIKit
import ZegoUIKitPrebuiltLiveAudioRoom

class ViewController: UIViewController {
    
    let appID: UInt32 = <#YourAppID#>
    let appSign: String = <#YourAppSign#>
    var userID: String = String(format: "%d", arc4random() % 999999)
    var userName: String = String(format: "n_%d", arc4random() % 999999)
    var roomID: String = "99999"

    @IBAction func startLiveAudio(_ sender: Any) {
        let config: ZegoUIKitPrebuiltLiveAudioRoomConfig = ZegoUIKitPrebuiltLiveAudioRoomConfig.host()
        let liveAudioVC: ZegoUIKitPrebuiltLiveAudioRoomVC = ZegoUIKitPrebuiltLiveAudioRoomVC(appID, appSign: appSign, userID: userID, userName: userName, roomID: roomID, config: config)
        liveAudioVC.modalPresentationStyle = .fullScreen
        self.present(liveAudioVC, animated: true, completion: nil)
    }
    
    @IBAction func joinLiveAudio(_ sender: Any) {
        let config: ZegoUIKitPrebuiltLiveAudioRoomConfig = ZegoUIKitPrebuiltLiveAudioRoomConfig.audience()
        let liveAudioVC: ZegoUIKitPrebuiltLiveAudioRoomVC = ZegoUIKitPrebuiltLiveAudioRoomVC(appID, appSign: appSign, userID: userID, userName: userName, roomID: roomID, config: config)
        liveAudioVC.modalPresentationStyle = .fullScreen
        self.present(liveAudioVC, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    

}

