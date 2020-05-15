// Code inside modules can be shared between pages and other source files.
import UIKit

public class AccessibilityViewController : UIViewController {
    override public func loadView() {
        let view = UIView()
        self.view = view
        
        view.backgroundColor = .white
        
    }
}


