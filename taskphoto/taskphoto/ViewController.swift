//
//  ViewController.swift
//  taskphoto
//
//  Created by mohm on 24/10/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var imageDescription: UILabel!
    
    let album = [
        Album(name: "1", description:"the first image of 2022"),
        Album(name: "2", description: "the second image of 2022"),
        Album(name: "3", description: "the thrid image of 2022")
    ]
    
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayImage(index: currentIndex)
        
    }

    func displayImage( index :Int){
        if index >= 0 && index < album.count{
    let list = album[index]
            ImageView.image = UIImage(named: list.name)
            imageDescription.text = list.description
        }
    }
    @IBAction func nextImage(_ sender: Any) {
        currentIndex = (currentIndex+1) % album.count
        displayImage(index: currentIndex)
    }
    
    
    @IBAction func previousImage(_ sender: Any) {
        currentIndex = (currentIndex - 1 + album.count) % album.count
        displayImage(index: currentIndex)    }
    

}

struct Album {
   
    var name : String
    var description : String
    
}

