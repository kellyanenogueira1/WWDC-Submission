// Code inside modules can be shared between pages and other source files.
import UIKit

public class AccessibilityViewController : UIViewController {
    override public func loadView() {
        let view = UIView()
        
        view.backgroundColor = #colorLiteral(red: 0.9764705882352941, green: 0.8509803921568627, blue: 0.5490196078431373, alpha: 1.0)
        self.view = view
    }
}


