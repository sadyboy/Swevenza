
import Foundation
import SwiftUI

struct Vwajwa: View {
    let khyxxtecygj: String
    let value: String
    let color: String
    
    var body: some View {
        HStack(spacing: 4) {
            Text(khyxxtecygj)
                .font(.system(size: 14))
            Text(value)
                .font(.custom("", size: 12))
                .fontWeight(.medium)
                .foregroundColor(Color(  color))
        }
        .padding(.horizontal, 8)
        .padding(.vertical, 4)
        .background(Color(  color).opacity(0.15))
        .cornerRadius(8)
        .background(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color(  color).opacity(0.3), lineWidth: 1)
        )
    }
}
