
import Foundation
import SwiftUI

struct Frbi: View {
    let title: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(title, action: action)
            .font(.custom("", size: 14))
            .padding(.horizontal, 20)
            .padding(.vertical, 12)
            .background(buttonBackground)
            .foregroundColor(ttiuk)
            .cornerRadius(20)
            .shadow(color: Color.pink.opacity(0.2), radius: 3, x: 0, y: 2)
    }
    
    private var buttonBackground: some View {
        Group {
            if isSelected {
                LinearGradient(
                    colors: [Color( "FF6B9D"), Color( "FF85A2")],
                    startPoint: .top,
                    endPoint: .bottom
                )
            } else {
                Color( "FFE4EC")
            }
        }
    }
    
    private var ttiuk: Color {
        isSelected ? .white : Color( "D44D7A")
    }
}



