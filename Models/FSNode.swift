//
//  FSNode.swift
//  devsize-plus
//
//  Created by emilio on 3/3/26.
//
import Foundation


public struct FSNode: Identifiable, Hashable {
    //Using URL as a stable identity works well for filesystem models
    var id: URL { url }
    
    let url: URL
    let isDirectory: Bool
    
    //placeholder fields for file values. it'll get updated during scanning
    var sizeBytes: Int64 = 0
    var children: [FSNode] = []
    
    var name: String {
        let last = url.lastPathComponent
        return last.isEmpty ? url.path : last
    }
}

