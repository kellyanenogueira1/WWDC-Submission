

import UIKit

public class Conclusion : UIViewController {
    var imageView = UIImageView()
    
    override public func loadView() {
        let view = UIView()
        self.view = view
        
        imgConstraints()
    }
    func imgConstraints(){
        view.addSubview(imageView)
        imageView.image = #imageLiteral(resourceName: "backgroundPng.png")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
            imageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0),
            imageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            imageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0)
        ])
    }
}
