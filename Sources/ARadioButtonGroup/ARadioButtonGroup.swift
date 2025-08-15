//
//  ARadioButton.swift
//  ARadioButtonGroup
//
//  Created by Antonio081014 on 2025-08-14.
//

import SwiftUI

struct ARadioButtonGroup<T: Hashable>: View {
    let optionCandidates: [T]
    @Binding var selectedOption: T?
    var body: some View {
        Group {
            ForEach(optionCandidates, id: \.self) { option in
                ARadioButton(
                    isSelected:
                        Binding(
                            get: {
                                return selectedOption == option
                            },
                            set: { _ in
                                selectedOption = option
                            }
                        ),
                    titleText: "\(option)"
                )
            }
        }
    }
}

#Preview(traits: .fixedLayout(width: 200, height: 250)) {
    VStack {
        ARadioButtonGroup(optionCandidates: ["A", "B", "C", "D"], selectedOption: .constant("C"))
            .font(.largeTitle)
            .tint(Color.red)
    }
}
