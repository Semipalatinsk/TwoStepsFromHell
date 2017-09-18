//
//  MoreAboutViewController.swift
//  TwoStepsFromHell
//
//  Created by mac011 on 2017/6/6.
//  Copyright © 2017 NQU. All rights reserved.
//

import UIKit
import SafariServices

class MoreAboutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        UIApplication.shared.statusBarStyle = .lightContent
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.default
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func SFSafariViewOpen(_ _url: String) {
        if let url = URL(string: _url) {
            let safariController = SFSafariViewController(url: url)
            present(safariController, animated: true, completion: nil)
        }
    }
    
    @IBAction func TSFHWebSiteLinkTapped(_ sender: UIButton) {
        SFSafariViewOpen("http://www.twostepsfromhell.com/")
    }
    
    @IBAction func TSFHYoutubeLinkTapped(_ sender: UIButton) {
        
        let YoutubeID =  "user/TwoStepsFromTheMusic"
        let appURL = URL(string: "youtube://www.youtube.com/\(YoutubeID)")!
        let webURL = "https://www.youtube.com/\(YoutubeID)"
        let application = UIApplication.shared
        
        if application.canOpenURL(appURL as URL) {
            application.open(appURL as URL)
        } else {
            SFSafariViewOpen(webURL)
        }
    }
    
    @IBAction func jason19956779Tapped(_ sender: UIButton){
        SFSafariViewOpen("https://github.com/jason19956779")
    }

    @IBAction func dggg123567Tapped(_ sender: UIButton){
        SFSafariViewOpen("https://github.com/dggg123567")
    }
}
