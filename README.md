# EFJailbreak
My simple jailbreak detection using DTTJailbreak classes

## USE

```swift
 protocol JailBreakDetectable
```

```swift
import UIKit

class ViewController: UIViewController, JailBreakDetectable {

    override func viewDidLoad() {
        super.viewDidLoad()
        let (jailbreak, deviceID) = self.trackJailBreak()
        
        if jailbreak {
            print("Jailbreak detected, device:")
            print(deviceID)
        }
    }
}
```
