//
//  MusiclistViewController.swift
//  TwoStepsFromHell
//
//  Created by mac011 on 2017/6/6.
//  Copyright © 2017年 NQU. All rights reserved.
//

import UIKit
import SafariServices

class TrackTableViewCell: UITableViewCell{
    @IBOutlet var TrackNameLabel: UILabel!

}

class TrackViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var TrackTableView: UITableView!
    @IBOutlet var AlbumImageView: UIImageView!
    @IBOutlet var AlbumDescriptionLabel: UILabel!
    
    var album: Album!
    var tracks: [Track]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = album.name
        AlbumImageView.image = UIImage(named: album.image)
        AlbumDescriptionLabel.text = album.description
        tracks = album.tracks
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TrackTableViewCell
        
        cell.TrackNameLabel.text = tracks[indexPath.row].name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let url = URL(string: tracks[indexPath.row].url) {
            let safariController = SFSafariViewController(url: url)
            present(safariController, animated: true, completion: nil)
        }
    }

}
