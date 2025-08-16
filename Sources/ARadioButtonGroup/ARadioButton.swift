//
//  ARadioButton.swift
//  ARadioButtonGroup
//
//  Created by Antonio081014 on 2025-08-14.
//

import SwiftUI

struct ARadioButton: View {
    @Binding var isSelected: Bool
    let titleText: String
    @State private var textHeight: CGFloat = 0

    var body: some View {
        HStack {
            circleView
            textView
                .background(
                    GeometryReader { geometry in
                        Color.clear
                            .onAppear {
                                textHeight = geometry.size.height
                            }
                            .onChange(of: geometry.size.height) { _, newHeight in
                                textHeight = newHeight
                            }
                    }
                )
        }
        .contentShape(.rect)
        .onTapGesture {
            self.isSelected = true
        }
    }

    @ViewBuilder
    private var circleView: some View {
        Circle()
            .stroke(.tint, lineWidth: 2)
            .frame(width: textHeight, height: textHeight)
            .overlay {
                if isSelected {
                    Circle()
                        .fill(.tint)
                        .padding(4)
                }
            }
    }

    @ViewBuilder
    private var textView: some View {
        Text(titleText)
    }
}

#Preview(traits: .fixedLayout(width: 100, height: 60)) {
    ARadioButton(isSelected: .constant(true), titleText: "English")
}
