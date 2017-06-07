//
//  AlbumViewController.swift
//  TwoStepsFromHell
//
//  Created by mac011 on 2017/6/6.
//  Copyright © 2017年 NQU. All rights reserved.
//

import UIKit

//*************************** Data Class Declaration ****************************
class Producer {
    var image: String = ""
    var name: String = "Two Steps From Hell"
    var description: String = "Two Steps from Hell is an American production music company based in Los Angeles, California, founded by Thomas J. Bergersen and Nick Phoenix in 2006. The company focuses predominantly on movie and trailer music, and has supplied tracks to films such as Interstellar, Harry Potter, Pirates of the Caribbean, and X-Men."
}

class Track {
    var name: String = ""
    var url: String = ""
    
    init(name: String, url: String) {
        self.name = name
        self.url = url
    }
}

class Album {
    var image: String = ""
    var name: String = ""
    var year: String = ""
    var description:String = ""
    var tracks: [Track] = []
    
    init(image: String, name: String, year: String, description: String, tracks: [Track]) {
        self.image = image
        self.name = name
        self.year = year
        self.description = description
        self.tracks = tracks
    }
}

//*************************** Data Initialization ****************************
var producer: Producer = Producer.init()

var ArchangelTrack: [Track] = [
    Track(name: "Mercy in Darkness", url: "https://youtu.be/D9TtYbt7mCg"),
    Track(name: "Archangel", url: "https://youtu.be/mLUguXpUIb0")
]

var SkyWorldTrack: [Track] = [
    Track(name: "All Is Hell That Ends Well", url: "https://youtu.be/NLUj9lFPU6s"),
    Track(name: "Titan Dream", url: "https://youtu.be/xwX84DOz2XQ")
]

var AlbumList: [Album] = [
    Album(image: "Archangel", name: "Archangel", year: "2011", description: "Archangel is the second public album by the group Two Steps from Hell. It consists of 26 tracks written by composers Thomas J. Bergersen and Nick Phoenix. The album contains 14 tracks from the album Nero.", tracks: ArchangelTrack),
    Album(image: "SkyWorld", name: "SkyWorld", year: "2012", description: "SkyWorld is the fourth public album by the group Two Steps from Hell. The album contains 22 tracks written by composers Thomas J. Bergersen and Nick Phoenix. All tracks, except for Dark Ages, are brand new original tracks. The cover and sleeve are designed by Steven R. Gilmore, with the futuristic city illustration by Sergey Vorontsov.", tracks: SkyWorldTrack)
]

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
    //@IBOutlet var ProducerNameLabel: UILabel!
    @IBOutlet var ProducerDescriptionLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //ProducerImageView.image = UIImage(named: producer.image)
        //ProducerNameLabel.text = producer.name
        ProducerDescriptionLabel.text = producer.description
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AlbumList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TableViewCell
        
        cell.AlbumImageView.image = UIImage(named: AlbumList[indexPath.row].image)
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
