//
//  iTunes.swift
//  iTunesTopCharts
//
//  Created by NiKhil AroRa on 10/01/19.
//  Copyright © 2019 Nikhil Arora. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

func getiTunesSongs(success: @escaping () -> Void, failure: @escaping (String)-> Void) {
    if AppHelper.checkInternetConnection() {
        log.verbose("Getting Apple Music")
        let url = constantsURL.iTunesMusic
        AppDelegate.alamofireManager().request(url, method: .get).responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                log.verbose(json)
            case .failure(let value):
                log.verbose(value)
            }
        }
    }
}
