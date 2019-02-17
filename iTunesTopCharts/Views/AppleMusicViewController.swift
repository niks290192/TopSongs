//
//  AppleMusicViewController.swift
//  iTunesTopCharts
//
//  Created by NiKhil AroRa on 10/01/19.
//  Copyright © 2019 Nikhil Arora. All rights reserved.
//

import UIKit

class AppleMusicViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var appleMusicTableView: UITableView!
    
    var appleMusic: [AppleMusic] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        getAppleMusic(success: { (songs) in
            self.appleMusic = songs
            self.appleMusicTableView.reloadData()
        }) { (error) in
            log.verbose("Hello")
        }
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "appleMusicCell", for: indexPath)
        cell.textLabel?.text = appleMusic[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appleMusic.count
    }
    

}
