//
//  LocalFileManager.swift
//  CryptoApp
//
//  Created by Prathamesh Araikar on 02/07/22.
//

import Foundation
import SwiftUI

class LocalFileManager {
    
    static let instance = LocalFileManager()
    private init() { }
    
    func saveImage(image: UIImage, folderName: String, imageName: String) {
        
        // create a folder
        createFolderIfNeeded(folderName: folderName)
        
        // get path for image
        guard
            let data = image.pngData(),
            let url = getURLForImage(folderName: folderName, imageName: imageName)
        else { return }
        
        // save the image
        do {
            try data.write(to: url)
        } catch let error {
            print("Error saving data, ImageName: \(imageName), \(error)")
        }
    }
    
    func getImage(folderName: String, imageName: String) -> UIImage? {
        guard
            let imageURL = getURLForImage(folderName: folderName, imageName: imageName),
            FileManager.default.fileExists(atPath: imageURL.path) else { return nil}
        
        return UIImage(contentsOfFile: imageURL.path)
    }
    
    private func createFolderIfNeeded(folderName: String) {
        guard let folderURL = getURLForFolder(folderName: folderName) else { return }
        if !FileManager.default.fileExists(atPath: folderURL.path) {
            do {
                try FileManager.default.createDirectory(at: folderURL, withIntermediateDirectories: true, attributes: nil)
            } catch let error {
                print("Error creating directory, DirectoryName: \(folderName), \(error)")
            }
        }
    }
   
    private func getURLForImage(folderName: String, imageName: String) -> URL? {
        guard let folderURL = getURLForFolder(folderName: folderName) else { return nil }
        return folderURL.appendingPathComponent(imageName + ".png")
    }
    
    private func getURLForFolder(folderName: String) -> URL? {
        guard let directoryURL = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first else { return nil }
        return directoryURL.appendingPathComponent(folderName)
    }
}
