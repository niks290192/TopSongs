//
//  TopSongsCache.swift
//  TopSongs
//
//  Created by NiKhil AroRa on 18/09/18.
//  Copyright © 2018 Nikhil Arora. All rights reserved.
//

import Foundation

typealias SQLite3Function = @convention(c) (OpaquePointer?, Int32, UnsafeMutablePointer<OpaquePointer?>?) -> Void

public enum CacheError {
    case NoError
    case NoSuchSong
    case SQLError(String)
}

let RETRY_LIMIT:Int = 10

class TopSongsCache: NSObject {
    
    var dbIsOpen:Bool = false
    var lastError:Error? = nil
    var versions:[String] = [
        "1.0",
        "1.1",
        "1.2"
    ]
    
    var cachePath:String = ""
    
    static let sharedCache = TopSongsCache()
    
    private override init() {
        let fileURL = try! FileManager.default.url(for: .cachesDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("TopSongs.db")
        self.cachePath = fileURL.path
    }
    
    
    
    
}
