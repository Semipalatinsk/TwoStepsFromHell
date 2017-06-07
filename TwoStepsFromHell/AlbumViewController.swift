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
    Track(name: "Archangel", url: "https://youtu.be/mLUguXpUIb0"),
    Track(name: "Everlasting", url: "https://www.youtube.com/watch?v=KFcwvsc522Y&index=6&list=PLEB32169AC91318A2"),
    Track(name: "United We Stand, Divided We Fall", url: "https://www.youtube.com/watch?v=6O6Q1OiF6LI&list=PLEB32169AC91318A2&index=7"),
    Track(name: "Love & Loss", url: "https://www.youtube.com/watch?v=4ctj97FAylQ&list=PLEB32169AC91318A2&index=8"),
    Track(name: "The Last Stand", url: "https://www.youtube.com/watch?v=H7qOJrT_lUg&list=PLEB32169AC91318A2&index=9"),
    Track(name: "Nero", url: "https://www.youtube.com/watch?v=7LtnLVRvypw&index=10&list=PLEB32169AC91318A2"),
    Track(name: "Destructo", url: "https://www.youtube.com/watch?v=Nc4hQsRpD6E&index=11&list=PLEB32169AC91318A2"),
    Track(name: "Atlantis", url: "https://www.youtube.com/watch?v=XB8k7LhoIV0&list=PLEB32169AC91318A2&index=12"),
    Track(name: "Strength of a Thousand Men", url: "https://www.youtube.com/watch?v=jIxas0a-KgM&list=PLEB32169AC91318A2&index=1"),
    Track(name: "Unexplained Forces", url: "https://www.youtube.com/watch?v=0TwP8aN-IIc&list=PLEB32169AC91318A2&index=15"),
    Track(name: "Magic of Love", url: "https://www.youtube.com/watch?v=t62B1EzTmDg&list=PLEB32169AC91318A2&index=16"),
    Track(name: "Norwegian Pirate", url: "https://www.youtube.com/watch?v=7S3DDr-TiDQ&list=PLEB32169AC91318A2&index=17"),
    Track(name: "Dark Harbor", url: "https://www.youtube.com/watch?v=PgroHfKeZ3s&index=18&list=PLEB32169AC91318A2"),
    Track(name: "Dragon Rider", url: "https://www.youtube.com/watch?v=pKv_wua6kFE&index=20&list=PLEB32169AC91318A2"),
    Track(name: "Mountains From Water", url: "https://www.youtube.com/watch?v=Z_0Ta-m_-hU&list=PLEB32169AC91318A2&index=21"),
    Track(name: "Titan Dune", url: "https://www.youtube.com/watch?v=EYkOpm0ZxNI&list=PLEB32169AC91318A2&index=22"),
    Track(name: "Ironwing", url: "https://www.youtube.com/watch?v=xwBLoEfxlAA&list=PLEB32169AC91318A2&index=23"),
    Track(name: "Army of Justice", url: "https://www.youtube.com/watch?v=y2e3pXPHt60&list=PLEB32169AC91318A2&index=24"),
    Track(name: "Immortal Avenger", url: "https://www.youtube.com/watch?v=5STVoaxz8-Y&index=26&list=PLEB32169AC91318A2"),
    Track(name: "He Who Brings the Night", url: "https://www.youtube.com/watch?v=dxNwZ0_xvP8&list=PLEB32169AC91318A2&index=27"),
    Track(name: "Caradhras", url: "https://www.youtube.com/watch?v=ZDci1jlOMQI&index=28&list=PLEB32169AC91318A2"),
    Track(name: "Sanctuary Is Lost", url: "https://www.youtube.com/watch?v=NraFTvSu1lg&index=29&list=PLEB32169AC91318A2"),
    Track(name: "What's Happening to Me", url: "https://www.youtube.com/watch?v=kDtuUgigtQE&index=30&list=PLEB32169AC91318A2"),
    Track(name: "Aesir", url: "https://www.youtube.com/watch?v=dlIHGrTlGRo&list=PLEB32169AC91318A2&index=31"),
    Track(name: "Friendship to Last", url: "https://www.youtube.com/watch?v=Iu74pVYkhNI&list=PLEB32169AC91318A2&index=32")
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
    @IBOutlet var ProducerDescriptionLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = producer.name
        ProducerDescriptionLabel.text = producer.description
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
