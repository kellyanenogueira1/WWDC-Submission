import  UIKit

public class DarkMode : UIViewController {
    var imageDarkMode  = UIImageView()
    var informations = UITextView()
    var buttonDarkMode = CustomButton()
    
    override public func loadView() {
        let viewDarkMode = UIView()
        self.view = viewDarkMode
        
        formattingViewDarkMode()
        self.view.addSubview(informations)
    }
    
    public func imageConstraints(_ image: UIImage){
        view.addSubview(imageDarkMode)
        imageDarkMode.image = image
        imageDarkMode.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageDarkMode.widthAnchor.constraint(equalToConstant: 400),
            imageDarkMode.heightAnchor.constraint(equalToConstant: 300),
            imageDarkMode.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 350),
            imageDarkMode.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ])
    }
    
    public func formattingView(){
        self.view.backgroundColor = #colorLiteral(red: 0.9764705882352941, green: 0.8509803921568627, blue: 0.5490196078431373, alpha: 1.0)
        formattingText()
        imageConstraints(#imageLiteral(resourceName: "Computer Work.png"))
        informations.backgroundColor = #colorLiteral(red: 0.9764705882352941, green: 0.8509803921568627, blue: 0.5490196078431373, alpha: 1.0)
        informations.textColor = .black
    }
    public func formattingViewDarkMode(){
        self.view.backgroundColor = .black
        formattingText()
        imageConstraints(#imageLiteral(resourceName: "Computer Work-Dark.png"))
        informations.backgroundColor = .black
        informations.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    public func formattingText(){
        informations.frame = CGRect(x: 80, y: 80, width: 430, height: 200)
        informations.isEditable = false
        informations.isSelectable = false
        informations.textAlignment = NSTextAlignment.center
        informations.font =  UIFont(name: "SF Compact Rounded", size: 17)
        informations.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    }
}
