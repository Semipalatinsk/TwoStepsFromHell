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

var InvincibleTrack: [Track] = [
    Track(name: "Freedom Fighters", url: "https://youtu.be/YP1QHVNHMAE"),
    Track(name: "Heart of Courage", url: "https://youtu.be/8NGtL3HUPUo"),
    Track(name: "Master of Shadows", url: "https://youtu.be/-PqGc3qiXIs"),
    Track(name: "Moving Mountains", url: "https://youtu.be/WiST_CY8Zo4"),
    Track(name: "Am I Not Human?", url: "https://youtu.be/1Q2oExZFwtE"),
    Track(name: "Enigmatic Soul", url: "https://youtu.be/WbEa27qCEms"),
    Track(name: "Fire Nation", url: "https://youtu.be/BZpbn03kV2U"),
    Track(name: "Black Blade", url: "https://youtu.be/HPe4G9BiIc4"),
    Track(name: "Super Strength", url: "https://youtu.be/5qAMIVytZPw"),
    Track(name: "Invincible", url: "https://youtu.be/XPiWUq5DUjE"),
    Track(name: "False King", url: "https://youtu.be/-gkBmgpAb9U"),
    Track(name: "Hypnotica", url: "https://youtu.be/PGVTTgTY6QU"),
    Track(name: "Fill My Heart", url: "https://youtu.be/0T0LUh92sWs"),
    Track(name: "Protectors of the Earth", url: "https://youtu.be/x5Q_TSNk-p4"),
    Track(name: "Velocitron", url: "https://youtu.be/CsduPlcyUik"),
    Track(name: "Undying Love", url: "https://youtu.be/Rt_AfjkWV8A"),
    Track(name: "1000 Ships of the Underworld", url: "https://youtu.be/wZpAGjczdus"),
    Track(name: "Tristan", url: "https://youtu.be/mVbjhw0ZxC0"),
    Track(name: "Breath of Ran Gor", url: "https://youtu.be/8mJJzFAiKEY"),
    Track(name: "Infinite Legends", url: "https://youtu.be/MuoZeie2Czk"),
    Track(name: "To Glory", url: "https://youtu.be/abjE9Qx0O60"),
    Track(name: "After the Fall", url: "https://youtu.be/cj8ADt48oAE")
]

var IllusionsTrack: [Track] = [
    Track(name: "Aura", url: "https://youtu.be/JNOpKwnAQyw"),
    Track(name: "Starvation", url: "https://youtu.be/YnGaCAHhGfo"),
    Track(name: "Dreammaker", url: "https://youtu.be/k20NwCro8ig"),
    Track(name: "Hurt", url: "https://youtu.be/VbdTeKo14Jw"),
    Track(name: "Ocean Princess", url: "https://youtu.be/IwRPc2041Sc"),
    Track(name: "Gift of Life", url: "https://youtu.be/qgOoB4BeNso"),
    Track(name: "Rada", url: "https://youtu.be/u7j1Vn2TgLY"),
    Track(name: "A Place in Heaven", url: "https://youtu.be/8iHmWdbKp1w"),
    Track(name: "Merchant Prince", url: "https://youtu.be/ZgSCNS851Rg"),
    Track(name: "Promise", url: "https://youtu.be/edbuhwrKBXY"),
    Track(name: "Femme fatale", url: "https://youtu.be/suUtJxccoaU"),
    Track(name: "Homecoming", url: "https://youtu.be/0RVIgZRRlmk"),
    Track(name: "Immortal", url: "https://youtu.be/o65GSQPRhhw"),
    Track(name: "Remember Me", url: "https://youtu.be/YwMDL4tU-FE"),
    Track(name: "Sonera", url: "https://youtu.be/AC1w1FjAfqE"),
    Track(name: "Reborn", url: "https://youtu.be/sHDQAHOAAwY"),
    Track(name: "Age of Gods", url: "https://youtu.be/wxtnFs7lpA4"),
    Track(name: "Illusions", url: "https://youtu.be/Y1qzm3UUTrg"),
    Track(name: "Soulseeker", url: "https://youtu.be/0AIJEX7vQgg")
]

var ArchangelTrack: [Track] = [
    Track(name: "Mercy in Darkness", url: "https://youtu.be/D9TtYbt7mCg"),
    Track(name: "Archangel", url: "https://youtu.be/mLUguXpUIb0"),
    Track(name: "Everlasting", url: "https://youtu.be/KFcwvsc522Y"),
    Track(name: "United We Stand Divided We Fall", url: "https://youtu.be/Z9RfGPMf0BY"),
    Track(name: "Love & Loss", url: "https://youtu.be/4ctj97FAylQ"),
    Track(name: "The Last Stand", url: "https://youtu.be/H7qOJrT_lUg"),
    Track(name: "Nero", url: "https://youtu.be/7LtnLVRvypw"),
    Track(name: "Destructo", url: "https://youtu.be/Nc4hQsRpD6E"),
    Track(name: "Atlantis", url: "https://youtu.be/XB8k7LhoIV0"),
    Track(name: "Strength of a Thousand Men", url: "https://youtu.be/jIxas0a-KgM"),
    Track(name: "Unexplained Forces", url: "https://youtu.be/0TwP8aN-IIc"),
    Track(name: "Magic of Love", url: "https://youtu.be/t62B1EzTmDg"),
    Track(name: "Norwegian Pirate", url: "https://youtu.be/7S3DDr-TiDQ"),
    Track(name: "Dark Harbor", url: "https://youtu.be/PgroHfKeZ3s"),
    Track(name: "Dragon Rider", url: "https://youtu.be/pKv_wua6kFE"),
    Track(name: "Mountains From Water", url: "https://youtu.be/Z_0Ta-m_-hU"),
    Track(name: "Titan Dune", url: "https://youtu.be/EYkOpm0ZxNI"),
    Track(name: "Ironwing", url: "https://youtu.be/xwBLoEfxlAA"),
    Track(name: "Army of Justice", url: "https://youtu.be/y2e3pXPHt60"),
    Track(name: "Immortal Avenger", url: "https://youtu.be/5STVoaxz8-Y"),
    Track(name: "He Who Brings the Night", url: "https://youtu.be/dxNwZ0_xvP8"),
    Track(name: "Caradhras", url: "https://youtu.be/ZDci1jlOMQI"),
    Track(name: "Sanctuary Is Lost", url: "https://youtu.be/NraFTvSu1lg"),
    Track(name: "What's Happening to Me", url: "https://youtu.be/kDtuUgigtQE"),
    Track(name: "Aesir", url: "https://youtu.be/dlIHGrTlGRo"),
    Track(name: "Friendship to Last", url: "https://youtu.be/Iu74pVYkhNI")
]

var SkyWorldTrack: [Track] = [
    Track(name: "All Is Hell That Ends Well", url: "https://youtu.be/NLUj9lFPU6s"),
    Track(name: "Titan Dream", url: "https://youtu.be/xwX84DOz2XQ"),
    Track(name: "SkyWorld", url: "https://youtu.be/Lq2ANOkfsIA"),
    Track(name: "El Dorado", url: "https://youtu.be/qiB98Wbsdlo"),
    Track(name: "The End Is the Beginning", url: "https://youtu.be/9ooqgBi6j_k"),
    Track(name: "All the King's Horses", url: "https://youtu.be/H-DDh5NIZRg"),
    Track(name: "Realm of Power", url: "https://youtu.be/ZLncHqaW7fY"),
    Track(name: "Winterspell", url: "https://youtu.be/GLqiQWAXQh8"),
    Track(name: "Blackheart", url: "https://youtu.be/vbttZVTSJRU"),
    Track(name: "Juggernaut", url: "https://youtu.be/-SRpwqGh4Go"),
    Track(name: "Dark Ages", url: "https://youtu.be/rjagObe8-RY"),
    Track(name: "Our Last Hope", url: "https://youtu.be/4RIlLjutKSI"),
    Track(name: "Icarus", url: "https://youtu.be/qH8Kb8bRzBI"),
    Track(name: "For the Win", url: "https://youtu.be/rl_ndy61ON4"),
    Track(name: "Sun & Moon", url: "https://youtu.be/j-aWVg_pOrc"),
    Track(name: "Big Sky", url: "https://youtu.be/FkyPFhZHfhg"),
    Track(name: "Starfleet", url: "https://youtu.be/jeFT3Fh6KFM"),
    Track(name: "Queen of Crows", url: "https://youtu.be/OxLQvZT3KQc"),
    Track(name: "Blizzard", url: "https://youtu.be/FpU0FoPsaes"),
    Track(name: "Breathe", url: "https://youtu.be/_r2jqib5EXU"),
    Track(name: "Back to the Earth", url: "https://youtu.be/NEusiw3iouE"),
    Track(name: "Ocean Kingdom", url: "https://youtu.be/1LQKLYTxz44"),
    Track(name: "Freedom Fighters Remix", url: "https://youtu.be/Yp-QqkkXfcQ"),
    Track(name: "Identity Crime", url: "https://youtu.be/pt_9uxBkkgQ"),
    Track(name: "Beneath the Ice", url: "https://youtu.be/taVFwFdTZ4s"),
    Track(name: "The World Is Mind", url: "https://youtu.be/dNzrFKxyb60"),
    Track(name: "Children from the War", url: "https://youtu.be/lT1xg15Cf9s"),
    Track(name: "Requiem for Destruction", url: "https://youtu.be/osllhYsTD5A"),
    Track(name: "The Colonel", url: "https://youtu.be/0NFi8d1MZ5c"),
    Track(name: "Stormwatch", url: "https://youtu.be/FT0xQioJrDU")
]

var AlbumList: [Album] = [
    Album(image: "Invincible", name: "Invincible", year: "2010", description: "Invincible is the first public album by the group Two Steps From Hell. All the tracks, apart from \"Am I Not Human?\" and \"To Glory\" (both of which were later released on the album Nero), are from their previous releases. The album also features modified versions of \"Freedom Fighters\" and \"Undying Love\" from the Legend album.", tracks: InvincibleTrack),
    Album(image: "Illusions", name: "Illusions", year: "2011", description: "llusions (formerly called 'Nemesis II') is a stand-alone production album created by Thomas J. Bergersen from Two Steps From Hell, and was released in 2011.", tracks: IllusionsTrack),
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
