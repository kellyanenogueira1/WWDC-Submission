
import UIKit

public class EnlargeTextViewController: UIViewController {
    var textExample = UITextView()
    var buttonCustomButton = CustomButton()
    var size = 0
    
    override public func loadView() {
        let myView = UIView()
        self.view = myView
        //let category = UIContentSizeCategory =  .accessibilityExtraExtraExtraLarge

        myView.backgroundColor = #colorLiteral(red: 0.9764705882352941, green: 0.8509803921568627, blue: 0.5490196078431373, alpha: 1.0)
        addActionMax()
        myView.addSubview(textExample)
        customText(textExample)
        setupButtonConstraints()
        
    }

    func sizeText()->UIContentSizeCategory{
        switch size {
        case 1:
            return .accessibilityLarge
        case 2:
            return .accessibilityExtraLarge
        case 3:
            return .accessibilityExtraExtraLarge
        default:
            //size = 0
         return .accessibilityExtraExtraExtraLarge
        }
    }
    @objc func change() {
        size += 1
        var category = sizeText()
        textExample.font = UIFont.systemFont(ofSize: category.scale*5)
    }
    
    func addActionMax(){
        buttonCustomButton.addTarget(self, action: #selector(change), for: .touchUpInside)
    }
    func setupButtonConstraints(){
        view.addSubview(buttonCustomButton)
        buttonCustomButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonCustomButton.widthAnchor.constraint(equalToConstant: 50),
            buttonCustomButton.heightAnchor.constraint(equalToConstant: 50),
            buttonCustomButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100),
            buttonCustomButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ])
        buttonCustomButton.backgroundColor = .white
        buttonCustomButton.setImage(#imageLiteral(resourceName: "lupa.png"), for: .normal)
    }
    
    func customText(_ textCustom: UITextView){
        textCustom.frame = CGRect(x: 100, y: 100, width: 410, height: 500)
        textCustom.isEditable = false
        textCustom.isSelectable = false
        textCustom.textAlignment = NSTextAlignment.center
        //textCustom.layer.cornerRadius = 10
        textCustom.backgroundColor = #colorLiteral(red: 0.9764705882352941, green: 0.8509803921568627, blue: 0.5490196078431373, alpha: 1.0)
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
