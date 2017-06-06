//
//  MusicDatas.swift
//  TwoStepsFromHell
//
//  Created by mac013 on 2017/6/6.
//  Copyright © 2017年 NQU. All rights reserved.
//

import Foundation


//*************************** Class Declaration ****************************
class producer {
    var image: String = ""
    var name: String = "Two Steps From Hell"
    var description: String = "Two Steps from Hell is an American production music company based in Los Angeles, California, founded by Thomas J. Bergersen and Nick Phoenix in 2006. The company focuses predominantly on movie and trailer music, and has supplied tracks to films such as Interstellar, Harry Potter, Pirates of the Caribbean, and X-Men."
    
    init(image: String, name: String, description: String) {
        self.image = image
        self.name = name
        self.description = description
    }
}

class discography {
    var name: String = ""
    var year: String = ""
    
    init(name: String, year: String) {
        self.name = name
        self.year = year
    }
}

class track {
    var name: String = ""
    var url: String = ""
    
    init(name: String, url: String) {
        self.name = name
        self.url = url
    }
}

class album {
    var name: String = ""
    var year: String = ""
    var description:String = ""
    var tracks: [track] = []
    
    init(name: String, year: String, description: String, tracks: [track]) {
        self.name = name
        self.year = year
        self.description = description
        self.tracks = tracks
    }
}

//*************************** Track Data ****************************

var ArchangelTrack: [track] = [
    track(name: "Mercy in Darkness", url: "https://youtu.be/D9TtYbt7mCg"),
    track(name: "Archangel", url: "https://youtu.be/mLUguXpUIb0")
]

var SkyWorldTrack: [track] = [
    track(name: "All Is Hell That Ends Well", url: "https://youtu.be/NLUj9lFPU6s"),
    track(name: "Titan Dream", url: "https://youtu.be/xwX84DOz2XQ")
]

//*************************** Album Data ****************************

var AlbumList: [album] = [
    album(name: "Archangel", year: "2011", description: "Archangel is the second public album by the group Two Steps from Hell. It consists of 26 tracks written by composers Thomas J. Bergersen and Nick Phoenix. The album contains 14 tracks from the album Nero.", tracks: ArchangelTrack),
    album(name: "SkyWorld", year: "2012", description: "SkyWorld is the fourth public album by the group Two Steps from Hell. The album contains 22 tracks written by composers Thomas J. Bergersen and Nick Phoenix. All tracks, except for Dark Ages, are brand new original tracks. The cover and sleeve are designed by Steven R. Gilmore, with the futuristic city illustration by Sergey Vorontsov.", tracks: SkyWorldTrack)
]

