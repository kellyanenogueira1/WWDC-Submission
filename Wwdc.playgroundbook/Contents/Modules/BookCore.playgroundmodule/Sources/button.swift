

import UIKit

public class DarkModeButton: UIButton{
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    required public init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        setupButton()
    }
    public func setupButton(){
        setShadow()
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont(name: "SF Compact Rounded", size: 17)
        layer.cornerRadius = 25
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.darkGray.cgColor
    }
    public func setShadow(){
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        layer.shadowRadius = 8
        layer.shadowOpacity = 0.5
        clipsToBounds = true
        layer.masksToBounds = false
    }
    
}
