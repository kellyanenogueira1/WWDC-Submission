
import UIKit

public class EnlargeTextViewController: UIViewController {
    
    var textExample = UITextView()
    var buttonCustomButton = CustomButton()
    
    
    override public func loadView() {
        let myView = UIView()
        self.view = myView
        let category: UIContentSizeCategory =  .accessibilityExtraLarge

        myView.backgroundColor = #colorLiteral(red: 0.9764705882352941, green: 0.8509803921568627, blue: 0.5490196078431373, alpha: 1.0)
        
        myView.addSubview(textExample)
        myView.addSubview(buttonCustomButton)
        //customText(textExample)
        
        
        
        setupButtonConstraints()
        
        textExample.font = UIFont.systemFont(ofSize: category.scale*5)
        
        
    }
    
    func setupButtonConstraints(){
        buttonCustomButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonCustomButton.widthAnchor.constraint(equalToConstant: 200),
            buttonCustomButton.heightAnchor.constraint(equalToConstant: 100),
            buttonCustomButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 20),
            buttonCustomButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ])
        buttonCustomButton.setTitle("Maximize", for: .normal)
        buttonCustomButton.backgroundColor = .black
    }
    
    func customText(_ textCustom: UITextView){
        textCustom.frame = CGRect(x: 100, y: 300, width: 400, height: 400)
        textCustom.layer.cornerRadius = 10
        textCustom.backgroundColor = .white
        textCustom.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        textCustom.textColor = .black
    }

}
extension UIContentSizeCategory{
    var scale: CGFloat {
        switch self {
        case .accessibilityExtraExtraExtraLarge:
            return 5
        case .accessibilityExtraExtraLarge:
            return 4
        case .accessibilityExtraLarge:
            return 3
        case .accessibilityLarge:
            return 2
        default:
            return 1
        }
    }
}
