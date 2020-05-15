import  UIKit

public class DarkMode : UIViewController {
    var img  = UIImageView()
    var informations = UITextView()
    
    override public func loadView() {
        let viewDarkMode = UIView()
        self.view = viewDarkMode
        
        formattingView()
        self.view.addSubview(informations)
    }
    
    /*public func imageConstraints(_ img: UIimageView){
        img.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            img.widthAnchor.constraint(equalToConstant: 300),
            img.heightAnchor.constraint(equalToConstant: 300),
            img.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 200),
            img.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ])
    }*/
    
    public func formattingView(){
        self.view.backgroundColor = #colorLiteral(red: 0.9764705882352941, green: 0.8509803921568627, blue: 0.5490196078431373, alpha: 1.0)
        formattingText()
        //imageConstraints(#imageLiteral(resourceName: "Computer Work.png"))
        informations.backgroundColor = #colorLiteral(red: 0.9764705882352941, green: 0.8509803921568627, blue: 0.5490196078431373, alpha: 1.0)
        informations.textColor = .black
    }
    public func formattingViewDarkMode(){
        self.view.backgroundColor = .black
        formattingText()
        //imageConstraints(#imageLiteral(resourceName: "Computer Work-Dark.png"))
        informations.backgroundColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        informations.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    public func formattingText(){
        informations.frame = CGRect(x: 80, y: 80, width: 430, height: 200)
        informations.font =  UIFont(name: "SF Compact Rounded", size: 17)
        informations.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    }
}
