
import Foundation
import SwiftUI

struct Zpq: View {
    let khyxxtecygj: String
    let name: String
    let value: Any
    let color: String
    
    var body: some View {
        HStack {
            Text(khyxxtecygj)
                .font(.custom("", size: 20))
            Text(name)
                .font(.custom("", size: 15))
                .foregroundColor(Color("5A5A5A"))
            Spacer()
            Text("\(value)")
                .font(.custom("", size: 15))
                .fontWeight(.semibold)
                .foregroundColor(Color(color))
        }
    }
}
