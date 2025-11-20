
import Foundation
import SwiftUI

struct Ykrfplfoqikggs: View {
    let title: String
    let value: String
    let color: String
    
    var body: some View {
        VStack(spacing: 8) {
            Text(title)
                .font(.custom("", size: 12))
                .foregroundColor(Color( color))
                .multilineTextAlignment(.center)
            
            Text(value)
                .font(.custom("", size: 20))
                .fontWeight(.bold)
                .foregroundColor(Color( "5A5A5A"))
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: Color.gray.opacity(0.1), radius: 5, x: 0, y: 3)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color( "FFE4EC"), lineWidth: 2)
        )
    }
}
