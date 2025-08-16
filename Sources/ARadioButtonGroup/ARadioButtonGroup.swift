//
//  ARadioButton.swift
//  ARadioButtonGroup
//
//  Created by Antonio081014 on 2025-08-14.
//

import SwiftUI

public struct ARadioButtonGroup<T: Hashable>: View {
    private let optionCandidates: [T]
    @Binding private var selectedOption: T?

    public init(optionCandidates: [T], selectedOption: Binding<T?>) {
        self.optionCandidates = optionCandidates
        self._selectedOption = selectedOption
    }

    public var body: some View {
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
    @Previewable @State var selectedOption: String? = "C"
    VStack {
        ARadioButtonGroup(optionCandidates: ["A", "B", "C", "D"], selectedOption: $selectedOption)
            .font(.largeTitle)
            .tint(Color.red)
    }
}
