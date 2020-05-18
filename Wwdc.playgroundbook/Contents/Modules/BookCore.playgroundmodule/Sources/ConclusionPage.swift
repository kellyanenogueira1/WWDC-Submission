

import UIKit

public class Conclusion : UIViewController {
    var imageView = UIImageView()
    var textConclusion = UITextView()
    
    override public func loadView() {
        let view = UIView()
        self.view = view
        
        imgConstraints()
        formattingText()
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
    public func formattingText(){
        view.addSubview(textConclusion)
        textConclusion.frame = CGRect(x: 80, y: 150, width: 430, height: 400)
        textConclusion.isEditable = false
        textConclusion.isSelectable = false
        textConclusion.textAlignment = NSTextAlignment.center
        textConclusion.font =  UIFont(name: "SF Compact Rounded", size: 22)
        textConclusion.text = "Congratulations! I am happy that we have learned so much together. If you liked and want to know more about the topic, you can learn about the four categories of approach covered by the Human Interface Guidelines, which are: Vision, Hearing, Physics and Motor, Literacy and Learning. This was one of my references to carry out this project. I used some Shape.so icons that made the interface more beautiful."
        textConclusion.backgroundColor = #colorLiteral(red: 0.9764705882352941, green: 0.8509803921568627, blue: 0.5490196078431373, alpha: 1.0)
        textConclusion.layer.cornerRadius = 10
        textConclusion.textColor = .black
    }
}
