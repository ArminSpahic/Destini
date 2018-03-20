//
//  ViewController.swift
//  Magic8
//
//  Created by Armin Spahic on 09/03/2018.
//  Copyright © 2018 Armin Spahic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
@IBOutlet weak var imageView: UIImageView!
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askBtnPressed(_ sender: UIButton) {
        
        randomPicture()
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomPicture()
    }
    
    func randomPicture () {
        randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
}

