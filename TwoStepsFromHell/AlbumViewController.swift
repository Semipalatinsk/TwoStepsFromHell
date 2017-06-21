//
//  AlbumViewController.swift
//  TwoStepsFromHell
//
//  Created by mac011 on 2017/6/6.
//  Copyright © 2017 NQU. All rights reserved.
//

import UIKit

//*************************** TableViewCell Outlet Declaration ****************************
class TableViewCell: UITableViewCell {
    @IBOutlet var AlbumImageView: UIImageView!
    @IBOutlet var AlbumNameLabel: UILabel!
    @IBOutlet var AlbumYear: UILabel!
}

//*************************** AlbumViewController ****************************
class AlbumViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var ProducerImageView: UIImageView!
    @IBOutlet var ProducerDescriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = producer.name
        ProducerDescriptionLabel.text = producer.description
    }
    
    override func viewWillAppear(_ animated: Bool) {
        UIApplication.shared.statusBarStyle = .lightContent
        
        if let indexPath = tableView.indexPathForSelectedRow {
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.default
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AlbumList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TableViewCell
        
        cell.AlbumImageView.image = AlbumList[indexPath.row].image
        cell.AlbumNameLabel.text = AlbumList[indexPath.row].name
        cell.AlbumYear.text = AlbumList[indexPath.row].year
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showTrack" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! TrackViewController
                destinationController.album = AlbumList[indexPath.row]
            }
        }
    }

}
