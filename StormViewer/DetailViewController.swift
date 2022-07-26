//
//  DetailViewController.swift
//  StormViewer
//
//  Created by newbie on 28.07.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!

    var selectedImage: String?
    var totalImages: Int?
    var currentPossition: Int?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let currentPossition = currentPossition, let totalImages = totalImages {
            title = "Picture \(currentPossition) of \(totalImages)"
        } else {
            title = selectedImage
        }

        navigationItem.largeTitleDisplayMode = .never
        
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

}
