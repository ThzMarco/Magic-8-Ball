

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
              super.viewDidLoad()
                 assignbackground()
                // Do any additional setup after loading the view.
            }

      func assignbackground(){
            let background = UIImage(named: "estrela")

            var imageView : UIImageView!
            imageView = UIImageView(frame: view.bounds)
          imageView.contentMode =  UIView.ContentMode.scaleAspectFill
            imageView.clipsToBounds = true
            imageView.image = background
            imageView.center = view.center
            view.addSubview(imageView)
            self.view.sendSubviewToBack(imageView)
        }
 

    @IBAction func askButton(_ sender: UIButton) {
        
        var ballArray = [UIImage (named: "ball1"),
                          UIImage (named: "ball2"),
                          UIImage (named: "ball3"),
                          UIImage (named: "ball4"),
                          UIImage (named: "ball5")]
        
    
        imageView.image = ballArray [Int.random(in: 0...4)]
                                        //Poderiamos utilizar também RandonElement()
        
    }
        }
        
    
    
    
    
    
    
    


