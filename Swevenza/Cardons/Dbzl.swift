
import Foundation
import SwiftUI

struct Zrnjqs: View {
    let khyxxtecygj: String
    let value: Int
    let color: String
    
    var body: some View {
        HStack(spacing: 4) {
            Text(khyxxtecygj)
            Text("\(value)")
                .font(.custom("", size: 12))
                .fontWeight(.semibold)
        }
        .padding(.horizontal, 8)
        .padding(.vertical, 4)
        .background(Color(color).opacity(0.2))
        .cornerRadius(8)
    }
}
