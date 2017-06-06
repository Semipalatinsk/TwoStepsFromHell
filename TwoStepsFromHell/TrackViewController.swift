//
//  MusiclistViewController.swift
//  TwoStepsFromHell
//
//  Created by mac011 on 2017/6/6.
//  Copyright © 2017年 NQU. All rights reserved.
//

import UIKit



class TrackViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var AlbumImageView: UIImageView!
    @IBOutlet var AlbumNameLabel: UILabel!
    @IBOutlet var AlbumDescriptionLabel: UILabel!
    
    var album: Album!
    var track: Track!

    override func viewDidLoad() {
        super.viewDidLoad()

        AlbumNameLabel.text = album.name
        AlbumDescriptionLabel.text = album.description
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return track.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        cell.textLabel?.text = track[indexPath.row].name
        
        return cell
    }


}
