
import Foundation
import SwiftUI

struct Fvvmog: View {
    let title: String
    @Binding var isOn: Bool
    let color: String
    
    var body: some View {
        Toggle(isOn: $isOn) {
            Text(title)
                .font(.custom("", size: 15))
                .foregroundColor(Color( "5A5A5A"))
        }
        .padding(.horizontal)
        .padding(.vertical, 12)
        .tint(Color( color))
    }
}
