
import SwiftUI

struct Adzicxn: View {
    
    private func gqsfcolxi(title: String, message: String, khyxxtecygj: String) -> some View {

    return 
        VStack(spacing: 16) {
            Text(khyxxtecygj)
                .font(.system(size: 60))
            
            Text(title)
                .font(.custom("", size: 22))
                .fontWeight(.bold)
                .foregroundColor(Color("D44D7A"))
            
            Text(message)
                .font(.custom("", size: 16))
                .foregroundColor(Color("FF6B9D"))
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity)
        .padding(40)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: Color.pink.opacity(0.1), radius: 10, x: 0, y: 5)
    }
    @ObservedObject var icnpe: Fgbaae
    @State private var wobblsorm = 0
    
    let zzehiitlw = ["📋 Active", "✅ Completed"]
    
    var body: some View {
        VStack(spacing: 0) {
            // Category selector
            xhjasf
            
            // Quests content
            ScrollView {
                VStack(spacing: 16) {
                    vxxqibnmtevdbk
                }
                .padding(.horizontal)
            }
        }
        .background(dlcoftfu)
        .navigationTitle("📋 Quests")
    }
    
    private var xhjasf: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(0..<zzehiitlw.count, id: \.self) { index in
                    Frbi(
                        title: zzehiitlw[index],
                        isSelected: wobblsorm == index,
                        action: { wobblsorm = index }
                    )
                }
            }
            .padding(.horizontal)
        }
        .padding(.vertical)
    }
    
    @ViewBuilder
    private var vxxqibnmtevdbk: some View {
        switch wobblsorm {
        case 0:
            ezbvnbl
        case 1:
            ykaolo
        default:
            EmptyView()
        }
    }
    
    private var ezbvnbl: some View {
        LazyVStack(spacing: 12) {
            if icnpe.vtqrnglnnpzxi.filter({ !$0.unqgivcik }).isEmpty {
                gqsfcolxi(
                    title: "No Active Quests",
                    message: "Complete tasks to get new quests!",
                    khyxxtecygj: "📝"
                )
            } else {
                ForEach(icnpe.vtqrnglnnpzxi.filter { !$0.unqgivcik }) { cjdnqv in
                    Cxudehpzub(cjdnqv: cjdnqv, icnpe: icnpe)
                }
            }
        }
    }
    
    private var ykaolo: some View {
        LazyVStack(spacing: 12) {
            if icnpe.vtqrnglnnpzxi.filter({ $0.unqgivcik }).isEmpty {
                gqsfcolxi(
                    title: "No Completed Quests",
                    message: "Complete active quests to see them here!",
                    khyxxtecygj: "🏆"
                )
            } else {
                ForEach(icnpe.vtqrnglnnpzxi.filter { $0.unqgivcik }) { cjdnqv in
                    Syhz(cjdnqv: cjdnqv, icnpe: icnpe)
                }
            }
        }
    }
    
    private var dlcoftfu: some View {
        LinearGradient(
            colors: [Color( "FFE8F0"), Color("FFF9E6")],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
    }
}

