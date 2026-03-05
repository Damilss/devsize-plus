//
//  AppVIewModel.swift
//  devsize-plus
//
//  Created by emilio on 3/4/26.
//
import Foundation
import SwiftUI
import Combine


@MainActor
final class AppVIewModel: ObservableObject {
    //MARK: App State
    
    @Published var rootURL : URL?
    @Published var rootNode: FSNode?
    @Published var selectNodeID: FSNode.ID?
    
    @Published var isScanning: Bool = false
    @Published var statusText: String = "Choose a folder to begin."
    @Published var progressCurentPath: String = ""
    @Published var progressFilesScanned: Int = 0
    
    //MARK - Public API (UI calls)
    
    func chooseFolder() {
        panel.title = "Choose a Folder to Scan"
        panel.prompt = "Choose..."
        
    }
}

