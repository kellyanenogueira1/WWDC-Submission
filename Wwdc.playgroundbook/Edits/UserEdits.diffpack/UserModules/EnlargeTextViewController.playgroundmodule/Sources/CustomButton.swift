import UIKit

public class CustomButton: UIButton{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        setupButton()
    }
    func setupButton(){
        setShadow()
        setTitleColor(.white, for: .normal)
        backgroundColor = #colorLiteral(red: 0.4392156862745098, green: 0.011764705882352941, blue: 0.19215686274509805, alpha: 1.0)
        titleLabel?.font = UIFont(name: "AvenirNext-DemiBold", size: 18)
        layer.cornerRadius = 25
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.darkGray.cgColor
    }
    private func setShadow(){
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        layer.shadowRadius = 8
        layer.shadowOpacity = 0.5
        clipsToBounds = true
        layer.masksToBounds = false
    }
    
}
