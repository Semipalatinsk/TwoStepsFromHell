//
//  MoreAboutViewController.swift
//  TwoStepsFromHell
//
//  Created by mac011 on 2017/6/6.
//  Copyright © 2017年 NQU. All rights reserved.
//

import UIKit
import SafariServices

class MoreAboutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

}
