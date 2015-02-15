//
//  FileManager.swift
//  Made Me Smile
//
//  Created by Jake Williams on 25/01/2015.
//  Copyright (c) 2015 EJDeveloper. All rights reserved.
//

import UIKit
import Foundation

var error: NSError?
let filemgr = NSFileManager.defaultManager()
let dirPaths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)
let docsDir = dirPaths[0] as String
let filelist = filemgr.contentsOfDirectoryAtPath("\(docsDir)", error: &error)

class FileManager {
    func dirContents() -> Array<String> {
        var list: Array<String> = []
        for filename in filelist! {
            list.append("\(filename)")
        }
        return list
    }
    
    func makeDir(name: String) -> Bool {
        let newDir = docsDir.stringByAppendingPathComponent(name)
        if !filemgr.createDirectoryAtPath(newDir, withIntermediateDirectories: true, attributes: nil, error: &error) {
            return false
        } else {
            return true
        }
    }
    
    func delDir(name: String) -> Bool {
        let newDir = docsDir.stringByAppendingPathComponent(name)
        if !filemgr.removeItemAtPath(newDir, error: &error) {
            return false
        } else {
            return true
        }
    }
}