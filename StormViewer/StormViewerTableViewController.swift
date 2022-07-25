//
//  ViewController.swift
//  StormViewer
//
//  Created by newbie on 25.07.2022.
//

import UIKit

class StormViewerTableViewController: UITableViewController {
    
    var pictures = [String]()
    
    private let identifier = "StormViewerCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        cell.textLabel?.text = pictures[indexPath.row]

        return cell
    }
    
}

