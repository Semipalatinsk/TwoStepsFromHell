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
    
    @IBAction func TSFHWebSiteLinkTapped(_ sender: UIButton) {
        if let url = URL(string: "http://www.twostepsfromhell.com/") {
            let safariController = SFSafariViewController(url: url)
            present(safariController, animated: true, completion: nil)
        }
    }
    
    @IBAction func TSFHYoutubeLinkTapped(_ sender: UIButton) {
        if let url = URL(string: "https://www.youtube.com/user/TwoStepsFromTheMusic") {
            let safariController = SFSafariViewController(url: url)
            present(safariController, animated: true, completion: nil)
        }
    }
    
    @IBAction func jason19956779Tapped(_ sender: UIButton){
        if let url = URL(string: "https://github.com/jason19956779") {
            let safariController = SFSafariViewController(url: url)
            present(safariController, animated: true, completion: nil)
        }
    }

    @IBAction func dggg123567Tapped(_ sender: UIButton){
        if let url = URL(string: "https://github.com/dggg123567") {
            let safariController = SFSafariViewController(url: url)
            present(safariController, animated: true, completion: nil)
        }
    }
}
