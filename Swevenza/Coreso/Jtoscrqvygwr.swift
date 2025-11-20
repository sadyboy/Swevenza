import SwiftUI
import SpriteKit

struct Wxzhnwsxvlb: View {
    @StateObject private var icnpe = Fgbaae()
    @State private var raqubsfrgagj: Fycwoxwki = .icnpe
    @State private var twrbeqivjegtjj: Klaxsggcd?
    @State private var ymyaccaopdhsse = false
    @Namespace private var animationNamespace
    
    enum Fycwoxwki {
        case icnpe, ibpgn, ungatisdh, dkcxpple, rwuqygqvmsd
    }
    
    enum Klaxsggcd {
        case wzgjhjhxrbm, pwqurwwvrx, gldnbslxbd
    }
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(red: 1.0, green: 0.95, blue: 0.98),
                    Color(red: 1.0, green: 0.98, blue: 0.95),
                    Color(red: 0.98, green: 0.95, blue: 1.0)
                ]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            decorativeBackground
            
            VStack(spacing: 0) {
                headerPanel
                
                ZStack {
                    switch raqubsfrgagj {
                    case .icnpe:
                        mainContent
                            .transition(.asymmetric(
                                insertion: .move(edge: .leading).combined(with: .opacity),
                                removal: .move(edge: .trailing).combined(with: .opacity)
                            ))
                    case .ibpgn:
                        Fapgsmqdmt(icnpe: icnpe)
                            .transition(.asymmetric(
                                insertion: .move(edge: .trailing).combined(with: .opacity),
                                removal: .move(edge: .leading).combined(with: .opacity)
                            ))
                    case .ungatisdh:
                        Adzicxn(icnpe: icnpe)
                            .transition(.asymmetric(
                                insertion: .move(edge: .trailing).combined(with: .opacity),
                                removal: .move(edge: .leading).combined(with: .opacity)
                            ))
                    case .dkcxpple:
                        Zqzzabjdeyznfr(icnpe: icnpe)
                            .transition(.asymmetric(
                                insertion: .move(edge: .trailing).combined(with: .opacity),
                                removal: .move(edge: .leading).combined(with: .opacity)
                            ))
                    case .rwuqygqvmsd:
                        Dqgmmzue(icnpe: icnpe)
                            .transition(.asymmetric(
                                insertion: .move(edge: .trailing).combined(with: .opacity),
                                removal: .move(edge: .leading).combined(with: .opacity)
                            ))
                    }
                }
                .animation(.spring(response: 0.4, dampingFraction: 0.8), value: raqubsfrgagj)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                // Нижняя навигационная панель
                navigationPanel
            }
        }
        .sheet(item: $twrbeqivjegtjj) { type in
            Nvqxrcd(ukvyotvzdkmuig: type, icnpe: icnpe)
        }
        .fullScreenCover(isPresented: $ymyaccaopdhsse) {
            Zcc(icnpe: icnpe)
        }
        .overlay(
            overlayViews
        )
        .onAppear {
            icnpe.oivzeuuqmy()
        }
    }
    
    // MARK: - Основной контент для главного экрана
    private var mainContent: some View {
        ScrollView {
            VStack(spacing: 16) {
                gameSceneSection
                statsPanel
                quickActionsPanel
            }
            .padding(.bottom, 80)
        }
    }
    
    // MARK: - Декоративные элементы фона
    private var decorativeBackground: some View {
        ZStack {
            // Пузырьки на заднем плане
            ForEach(0..<15, id: \.self) { index in
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [
                                Color(red: 1.0, green: 0.8, blue: 0.9).opacity(0.3),
                                Color(red: 0.8, green: 0.9, blue: 1.0).opacity(0.2)
                            ],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: CGFloat.random(in: 40...120))
                    .position(
                        x: CGFloat.random(in: 0...UIScreen.main.bounds.width),
                        y: CGFloat.random(in: 0...UIScreen.main.bounds.height)
                    )
                    .blur(radius: 8)
            }
        }
    }
    
    // MARK: - Верхняя панель
    private var headerPanel: some View {
        VStack(spacing: 12) {
            HStack {
                // Аватар и информация об игроке
                HStack(spacing: 12) {
                    ZStack {
                        Circle()
                            .fill(
                                LinearGradient(
                                    colors: [
                                        Color(red: 1.0, green: 0.6, blue: 0.8),
                                        Color(red: 1.0, green: 0.7, blue: 0.9)
                                    ],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                )
                            )
                            .frame(width: 50, height: 50)
                            .shadow(color: .pink.opacity(0.3), radius: 5, x: 0, y: 3)
                        
                        Text(icnpe.rwuqygqvmsd.ibpgn.first(where: { $0.klykrlmiohnv })?.khyxxtecygj ?? "🍬")
                            .font(.system(size: 24))
                    }
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text(icnpe.rwuqygqvmsd.sezlzhgvpppo)
                            .font(.system(size: 16, weight: .bold, design: .rounded))
                            .foregroundColor(Color(red: 0.8, green: 0.2, blue: 0.4))
                        
                        HStack(spacing: 8) {
                            Text("Level \(icnpe.rwuqygqvmsd.knu)")
                                .font(.system(size: 12, weight: .medium, design: .rounded))
                                .foregroundColor(Color(red: 1.0, green: 0.4, blue: 0.6))
                            
                            if icnpe.rwuqygqvmsd.zidqpcciocx > 0 {
                                Text("⭐\(icnpe.rwuqygqvmsd.zidqpcciocx)")
                                    .font(.system(size: 10, weight: .bold))
                                    .padding(.horizontal, 6)
                                    .padding(.vertical, 2)
                                    .background(
                                        LinearGradient(
                                            colors: [
                                                Color(red: 1.0, green: 0.8, blue: 0.3),
                                                Color(red: 1.0, green: 0.7, blue: 0.2)
                                            ],
                                            startPoint: .top,
                                            endPoint: .bottom
                                        )
                                    )
                                    .foregroundColor(.white)
                                    .cornerRadius(6)
                            }
                        }
                    }
                }
                
                Spacer()
                
                // Ресурсы игрока
                VStack(spacing: 8) {
                    resourceItem(icon: "🍬", value: "\(icnpe.rwuqygqvmsd.xqmrjlasmoh.othpwd)", color: Color(red: 1.0, green: 0.4, blue: 0.6))
                    resourceItem(icon: "💎", value: "\(icnpe.rwuqygqvmsd.ewcxluf)", color: Color(red: 0.3, green: 0.7, blue: 1.0))
                    resourceItem(icon: "⚡", value: "\(icnpe.rwuqygqvmsd.dgqqia)/\(icnpe.rwuqygqvmsd.mgwsoxypb)", color: Color(red: 1.0, green: 0.8, blue: 0.3))
                }
            }
            .padding(.horizontal, 16)
            .padding(.top, 8)
            
            // Разделитель
            Rectangle()
                .fill(Color.white.opacity(0.3))
                .frame(height: 1)
                .padding(.horizontal, 16)
        }
        .background(
            LinearGradient(
                colors: [Color.white.opacity(0.9), Color.white.opacity(0.8)],
                startPoint: .top,
                endPoint: .bottom
            )
        )
        .shadow(color: .black.opacity(0.1), radius: 8, y: 2)
    }
    
    private func resourceItem(icon: String, value: String, color: Color) -> some View {
        HStack(spacing: 6) {
            Text(icon)
                .font(.system(size: 14))
            
            Text(value)
                .font(.system(size: 12, weight: .semibold, design: .rounded))
                .foregroundColor(color)
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 4)
        .background(color.opacity(0.15))
        .cornerRadius(12)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(color.opacity(0.3), lineWidth: 1)
        )
    }
    
    // MARK: - Игровая сцена
    private var gameSceneSection: some View {
        VStack(spacing: 0) {
            SpriteView(scene: {
                let scene = Gyknugrn()
                scene.size = CGSize(width: UIScreen.main.bounds.width,
                                  height: UIScreen.main.bounds.height * 0.4)
                scene.scaleMode = .aspectFill
                scene.queyrscgm = {
                    icnpe.vhrmie()
                }
                scene.ncqup(icnpe.rwuqygqvmsd.ibpgn.first(where: { $0.klykrlmiohnv })?.khyxxtecygj ?? "🍭")
                return scene
            }(), options: [.allowsTransparency])
            .frame(height: UIScreen.main.bounds.height * 0.35)
            .cornerRadius(20)
            .padding(.horizontal, 16)
            .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 5)
        }
    }
    
    // MARK: - Панель статистики
    private var statsPanel: some View {
        VStack(spacing: 16) {
            // Основная статистика
            HStack(spacing: 20) {
                statItem(title: "Candy Collected", value: "\(icnpe.rwuqygqvmsd.eusfdondl.othpwd)", color: Color(red: 0.8, green: 0.2, blue: 0.4))
                
                statItem(title: "Production", value: "\(String(format: "%.1f", icnpe.nvxmvqidegw))/sec", color: Color(red: 0.3, green: 0.7, blue: 1.0))
            }
            
            // Прогресс уровня
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Text("Next Level Progress")
                        .font(.system(size: 14, weight: .medium, design: .rounded))
                        .foregroundColor(Color(red: 0.8, green: 0.2, blue: 0.4))
                    
                    Spacer()
                    
                    Text("\(icnpe.rwuqygqvmsd.wwjfocwcl)/\(icnpe.rwuqygqvmsd.knu * 1000)")
                        .font(.system(size: 12, weight: .medium, design: .rounded))
                        .foregroundColor(Color(red: 0.8, green: 0.2, blue: 0.4))
                }
                
                ProgressView(value: Double(icnpe.rwuqygqvmsd.wwjfocwcl), total: Double(icnpe.rwuqygqvmsd.knu * 1000))
                    .progressViewStyle(LinearProgressViewStyle(tint: Color(red: 1.0, green: 0.4, blue: 0.6)))
                    .scaleEffect(x: 1, y: 1.5, anchor: .center)
                    .background(Color.white.opacity(0.3))
                    .cornerRadius(4)
            }
            
            // Активные квесты
            if !icnpe.vtqrnglnnpzxi.filter({ !$0.unqgivcik }).isEmpty {
                Button(action: {
                    withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                        raqubsfrgagj = .ungatisdh
                    }
                }) {
                    HStack {
                        Image(systemName: "checklist")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(Color(red: 0.8, green: 0.2, blue: 0.4))
                        
                        Text("Active Quests: \(icnpe.vtqrnglnnpzxi.filter { !$0.unqgivcik }.count)")
                            .font(.system(size: 14, weight: .medium, design: .rounded))
                            .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3))
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(Color(red: 0.8, green: 0.2, blue: 0.4))
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
                    .background(
                        LinearGradient(
                            colors: [
                                Color(red: 1.0, green: 0.95, blue: 0.98),
                                Color(red: 1.0, green: 0.98, blue: 1.0)
                            ],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .cornerRadius(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color(red: 1.0, green: 0.9, blue: 0.95), lineWidth: 1)
                    )
                }
                .buttonStyle(ScaleButtonStyle())
            }
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white.opacity(0.8))
                .shadow(color: .black.opacity(0.05), radius: 10, x: 0, y: 5)
        )
        .padding(.horizontal, 16)
    }
    
    private func statItem(title: String, value: String, color: Color) -> some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(.system(size: 12, weight: .medium, design: .rounded))
                .foregroundColor(color.opacity(0.8))
            
            Text(value)
                .font(.system(size: 18, weight: .bold, design: .rounded))
                .foregroundColor(color)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    // MARK: - Панель быстрых действий
    private var quickActionsPanel: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Quick Actions")
                .font(.system(size: 16, weight: .bold, design: .rounded))
                .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3))
                .padding(.horizontal, 4)
            
            HStack(spacing: 12) {
                quickActionButton(
                    icon: "gamecontroller",
                    title: "Mini-games",
                    color: Color(red: 0.6, green: 0.8, blue: 0.6)
                ) {
                    twrbeqivjegtjj = .wzgjhjhxrbm
                }
                
                quickActionButton(
                    icon: "book",
                    title: "Story",
                    color: Color(red: 0.8, green: 0.7, blue: 1.0)
                ) {
                    ymyaccaopdhsse = true
                }
                
                quickActionButton(
                    icon: "figure.surfing",
                    title: "Luck",
                    color: Color(red: 1.0, green: 0.7, blue: 0.3)
                ) {
                    twrbeqivjegtjj = .gldnbslxbd
                }
            }
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white.opacity(0.8))
                .shadow(color: .black.opacity(0.05), radius: 10, x: 0, y: 5)
        )
        .padding(.horizontal, 16)
    }
    
    private func quickActionButton(icon: String, title: String, color: Color, action: @escaping () -> Void) -> some View {
        Button(action: action) {
            VStack(spacing: 8) {
                Image(systemName: icon)
                    .font(.system(size: 24, weight: .medium))
                    .foregroundColor(color)
                    .frame(width: 50, height: 50)
                    .background(color.opacity(0.15))
                    .cornerRadius(12)
                
                Text(title)
                    .font(.system(size: 12, weight: .medium, design: .rounded))
                    .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3))
                    .multilineTextAlignment(.center)
            }
            .frame(maxWidth: .infinity)
        }
        .buttonStyle(ScaleButtonStyle())
    }
    
    // MARK: - Нижняя навигационная панель
    private var navigationPanel: some View {
        VStack(spacing: 0) {
            Rectangle()
                .fill(Color.white.opacity(0.3))
                .frame(height: 1)
            
            HStack(spacing: 0) {
                navButton(icon: "house", title: "Home", isSelected: raqubsfrgagj == .icnpe) {
                    withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                        raqubsfrgagj = .icnpe
                    }
                }
                
                navButton(icon: "person.2", title: "Heroes", isSelected: raqubsfrgagj == .ibpgn) {
                    withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                        raqubsfrgagj = .ibpgn
                    }
                }
                
                navButton(icon: "checklist", title: "Quests", isSelected: raqubsfrgagj == .ungatisdh,
                         badgeCount: icnpe.vtqrnglnnpzxi.filter { $0.unqgivcik && !$0.ziarzivtoksb }.count) {
                    withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                        raqubsfrgagj = .ungatisdh
                    }
                }
                
                navButton(icon: "cart", title: "Shop", isSelected: raqubsfrgagj == .dkcxpple) {
                    withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                        raqubsfrgagj = .dkcxpple
                    }
                }
                
                navButton(icon: "person.circle", title: "Profile", isSelected: raqubsfrgagj == .rwuqygqvmsd) {
                    withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                        raqubsfrgagj = .rwuqygqvmsd
                    }
                }
            }
            .padding(.horizontal, 8)
            .padding(.top, 8)
            .padding(.bottom, 20)
        }
        .background(
            LinearGradient(
                colors: [Color.white.opacity(0.95), Color.white.opacity(0.9)],
                startPoint: .top,
                endPoint: .bottom
            )
        )
        .shadow(color: .black.opacity(0.1), radius: 10, y: -2)
    }
    
    private func navButton(icon: String, title: String, isSelected: Bool, badgeCount: Int = 0, action: @escaping () -> Void) -> some View {
        Button(action: action) {
            VStack(spacing: 4) {
                ZStack(alignment: .topTrailing) {
                    Image(systemName: icon)
                        .font(.system(size: isSelected ? 22 : 20, weight: isSelected ? .semibold : .regular))
                        .foregroundColor(isSelected ? Color(red: 1.0, green: 0.4, blue: 0.6) : Color(red: 0.6, green: 0.6, blue: 0.6))
                    
                    if badgeCount > 0 {
                        Text("\(badgeCount)")
                            .font(.system(size: 10, weight: .bold))
                            .foregroundColor(.white)
                            .padding(4)
                            .background(
                                LinearGradient(
                                    colors: [
                                        Color(red: 1.0, green: 0.4, blue: 0.6),
                                        Color(red: 1.0, green: 0.5, blue: 0.7)
                                    ],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            )
                            .clipShape(Circle())
                            .offset(x: 6, y: -6)
                    }
                }
                
                Text(title)
                    .font(.system(size: isSelected ? 11 : 10, weight: isSelected ? .semibold : .medium, design: .rounded))
                    .foregroundColor(isSelected ? Color(red: 1.0, green: 0.4, blue: 0.6) : Color(red: 0.6, green: 0.6, blue: 0.6))
            }
            .frame(maxWidth: .infinity)
            .scaleEffect(isSelected ? 1.05 : 1.0)
            .animation(.spring(response: 0.3, dampingFraction: 0.6), value: isSelected)
        }
        .buttonStyle(NavButtonStyle())
    }
    
    // MARK: - Оверлейные вью
    @ViewBuilder
    private var overlayViews: some View {
        if icnpe.mgz {
            Npaokq(knu: icnpe.rwuqygqvmsd.knu) {
                icnpe.mgz = false
            }
        }
        
        if let cjdnqv = icnpe.iamiojxah {
            Xypiuqmyacnsk(cjdnqv: cjdnqv) {
                icnpe.iamiojxah = nil
            }
        }
        
        if let gxupt = icnpe.nmgltnmuifgc {
            Jmoaiffmmqy(gxupt: gxupt) {
                icnpe.nmgltnmuifgc = nil
            }
        }
        
        if let reward = icnpe.gpgxqlgqo {
            Kkkbuz(
                title: reward.title,
                xqmrjlasmoh: reward.xqmrjlasmoh,
                ewcxluf: reward.ewcxluf,
                wwjfocwcl: reward.wwjfocwcl
            ) {
                icnpe.gpgxqlgqo = nil
            }
        }
        
        if let gwowctweobzyjm = icnpe.fjwffrx {
            Gtcrfxgwyu(gwowctweobzyjm: gwowctweobzyjm, icnpe: icnpe)
        }
    }
}



struct NavButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
            .animation(.spring(response: 0.2, dampingFraction: 0.6), value: configuration.isPressed)
    }
}

// MARK: - Вспомогательные расширения


extension Wxzhnwsxvlb.Klaxsggcd: Identifiable {
    var id: String {
        switch self {
        case .wzgjhjhxrbm: return "match"
        case .pwqurwwvrx: return "rain"
        case .gldnbslxbd: return "wheel"
        }
    }
}

#Preview {
    Wxzhnwsxvlb()
}

typealias Lhtvj = Int
