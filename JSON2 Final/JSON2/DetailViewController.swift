//
//  DetailViewController.swift
//  JSON2
//
//  Created by Kole Peoples on 3/19/19.
//  Copyright © 2019 Kole Peoples. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var episodeLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var summaryTextView: UITextView!
    @IBOutlet weak var mediaRuntime: UILabel!
    @IBOutlet weak var mediaProducer: UILabel!
    @IBOutlet weak var mediaClassification: UILabel!
    @IBAction func castList(_ sender: UIButton) {
    }
    
    


    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = titleLabel {
                label.text = detail.name
            }
            
            if let label = mediaRuntime {
                if let ended = detail.yearEnd {
                    label.text = "\(detail.yearStart) - \(ended)"
                } else {
                    label.text = detail.yearStart
                }
            }
            if let label = mediaClassification {
                label.text = detail.format
            }
            if let label = episodeLabel {
                if let countEpisodes = detail.episodes {
                    if countEpisodes > 1 {
                        label.text = "\(countEpisodes) Episodes"
                    } else {
                        label.text = "\(countEpisodes) Episode"
                    }
                } else {
                    label.text = ""
                }
            }
            if let label = mediaProducer {
                if let network = detail.network {
                    label.text = network
                } else if let studio = detail.studio {
                    label.text = studio
                }
            }
            if let label = detailDescriptionLabel {
                label.text = detail.description
            }
            if let textview = summaryTextView {
                textview.text = detail.summary
            }
            if let imageView = posterImageView {
                let url = URL(string: detail.imageURL)
                let data = try? Data(contentsOf: url!)
                imageView.image = UIImage(data: data!)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var detailItem: MovieDataModel.Entries? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

