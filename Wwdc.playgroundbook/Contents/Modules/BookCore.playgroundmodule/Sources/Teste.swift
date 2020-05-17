
// Code inside modules can be shared between pages and other source files.
import UIKit

var imageAnimation = UIImageView()
var images: [UIImage] = []

public class AccessibilityViewController : UIViewController {
    override public func loadView() {
        let view = UIView()
        self.view = view
        view.backgroundColor = .white
        addImageInArray()
        animation()
    }
    
    public func imageConstraints(_ img: UIImage){
        view.addSubview(imageAnimation)
        imageAnimation.image = img
        imageAnimation.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageAnimation.widthAnchor.constraint(equalToConstant: 400),
            imageAnimation.heightAnchor.constraint(equalToConstant: 300),
            imageAnimation.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100),
            imageAnimation.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ])
    }
    
    public func addImageInArray(){
        for count in 0...10{
            let strImageName = "img\(count).png"
            let img = UIImage(named: strImageName)
            images.append(img!)
            imageConstraints(img!)
        }
    }
    
    public func animation(){
        imageAnimation.animationImages = images
        imageAnimation.animationDuration = 2.0
        imageAnimation.animationRepeatCount = 1
        imageAnimation.startAnimating()
    }
}


