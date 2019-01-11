//
//  AppleMusicViewController.swift
//  iTunesTopCharts
//
//  Created by NiKhil AroRa on 10/01/19.
//  Copyright © 2019 Nikhil Arora. All rights reserved.
//

import UIKit

class AppleMusicViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        getAppleMusic(success: {
            log.verbose("Hello")
        }) { (error) in
            log.verbose("error")
        }
        
        getiTunesSongs(success: {
            log.verbose("Hey")
        }) { (error) in
            log.verbose("error")
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
