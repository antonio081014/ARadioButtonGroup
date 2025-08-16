# ARadioButtonGroup

A lightweight, customizable **radio button group UI** for SwiftUI that works seamlessly on **macOS**, **iOS**, and **tvOS**.

`ARadioButtonGroup` makes it easy to present a group of mutually exclusive choices with a clean, platform-consistent look — while giving you full control over styling and behavior.

---

## ✨ Features

- 🎯 **Cross-platform** — Supports macOS, iOS, and tvOS.
- 🎨 **Customizable** — Easily change colors, fonts, spacing, and selection style.
- 🛠 **SwiftUI-native** — Built entirely in SwiftUI, no UIKit/AppKit bridging required.
- ⚡ **Lightweight** — No external dependencies.
- 📦 **Swift Package Manager** support.

---

## 📦 Installation

### Swift Package Manager (SPM)
You can add **ARadioButtonGroup** to your project using Swift Package Manager:

1. In Xcode, go to **File > Add Packages...**
2. Paste the package URL: https://github.com/antonio081014/ARadioButtonGroup
3. Select the version and add it to your target.

Or add it manually to `Package.swift`:

```swift
dependencies: [
 .package(url: "https://github.com/antonio081014/ARadioButtonGroup.git", from: "1.0.0")
]
```

## 🚀 Usage

### Basic Example

```swift
import SwiftUI
import ARadioButtonGroup

struct ContentView: View {
    @State private var selectedOption = "Option 1"
    
    let options = ["Option 1", "Option 2", "Option 3"]
    
    var body: some View {
        ARadioButtonGroup(
            items: options,
            selected: $selectedOption
        )
        .padding()
    }
}
```

## 🛡 License

This project is licensed under the MIT License.

## 🤝 Contributing

Pull requests are welcome!
If you find bugs or have feature requests, please open an issue.
