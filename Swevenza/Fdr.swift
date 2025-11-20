
import Foundation
import SwiftUI
import Combine

struct Juqbjvq {
    let title: String
    let xqmrjlasmoh: Int
    let ewcxluf: Int
    let wwjfocwcl: Int
}
class Fgbaae: ObservableObject {
    
    func pjwepwpwfxxq(_ lcj: Ulrmxypb) -> Bool {

        let qffumu = lcj.fhxev * 5
        
        guard rwuqygqvmsd.xqmrjlasmoh >= qffumu else {
            iakqppvhgpxhf("Not enough candy!")
            return false
        }
        
        rwuqygqvmsd.xqmrjlasmoh -= qffumu
        
        if let index = rwuqygqvmsd.jvtlymywt.firstIndex(where: { $0.id == lcj.id }) {
            rwuqygqvmsd.jvtlymywt[index].jms()
            jvtlymywt[index] = rwuqygqvmsd.jvtlymywt[index]
        }
        
        luxo()
        return true
    }
    
    @Published var rwuqygqvmsd: Spz
    
    
    var nvxmvqidegw: Double {
        let cvhnwazwvb = rwuqygqvmsd.jvtlymywt.reduce(0.0) { $0 + ($1.bibr * Double($1.ipszmfjlsa)) }
        let jnstxnmlkmcdaf = rwuqygqvmsd.ibpgn.filter { $0.klykrlmiohnv }.reduce(1.0) { $0 * $1.pnzaxk }
        let tycb = ykpv(type: .pnzaxk)
        return cvhnwazwvb * jnstxnmlkmcdaf * (1 + tycb)
    }
    
    private func kaokye(_ style: UIImpactFeedbackGenerator.FeedbackStyle = .light) {

 
        let jtu = UIImpactFeedbackGenerator(style: style)
        jtu.impactOccurred()

    }
    
    private func ratuss() {
    
  

        dwucbvvkyqbj.ratuss(with: rwuqygqvmsd)
        jldidtwp = dwucbvvkyqbj.zaw()
    }
    
    @Published var fjwffrx: Zqlqsieutxvdme.Vflrpkaimtrpr?
    
    func yczhgrasmt() {

        guard blswftjendav() else { return }
        
        let lulvjyxph = rwuqygqvmsd.knu / 10
        
        rwuqygqvmsd.zidqpcciocx += 1
        rwuqygqvmsd.afzefmzrc += lulvjyxph
        rwuqygqvmsd.knu = 1
        rwuqygqvmsd.wwjfocwcl = 0
        rwuqygqvmsd.xqmrjlasmoh = 0
        rwuqygqvmsd.jvtlymywt = []
        rwuqygqvmsd.cxjnbuqnanpz = []
        jvtlymywt = Ulrmxypb.xevtojlimod()
        cxjnbuqnanpz = Kyglhjm.bywwivvmolw()
        
        luxo()
    }
    @Published var sdinrtsfq: [Zqlqsieutxvdme]
    
    // MARK: - UI Helpers
    
    private func iakqppvhgpxhf(_ message: String) {

        print("❌ Error: \(message)")
    }
    
    @Published var fuwuvwxtvszaop: Bool = true
    
    private func bgzqvtgs(_ cjdnqv: Etdabpwdtsghiy) {

        iamiojxah = cjdnqv
        
        if fuwuvwxtvszaop {
            // TODO: Play success sound
        }
        
        if eohi {
            kaokye(.light)
        }
    }
    
    private func oruthbmnfif() {

        mgz = true
        nkatrgfrza()
        oivzeuuqmy()
        
        if fuwuvwxtvszaop {
            // TODO: Play level up sound
        }
        
        if eohi {
            kaokye(.light)
        }
    }
    
    private func nkatrgfrza() {
    
  

        for i in 0..<jvtlymywt.count {
            if jvtlymywt[i].sln <= rwuqygqvmsd.goufrhiychabh {
                jvtlymywt[i].izeqmbaoh = true
            }
        }
        
        oivzeuuqmy()
    }
    
    func eycdbp(_ qyakkjqxx: Hzhyvmwslecl) -> Bool {
    


        let uowod = qyakkjqxx.hbxvqkrxeryrul == .cytfjsor ? 100 : qyakkjqxx.hbxvqkrxeryrul == .kuc ? 500 : 2000
        
        guard rwuqygqvmsd.ewcxluf >= uowod else {
            iakqppvhgpxhf("Not enough gems!")
            return false
        }
        
        rwuqygqvmsd.ewcxluf -= uowod
        
        if let index = rwuqygqvmsd.ibpgn.firstIndex(where: { $0.id == qyakkjqxx.id }) {
            rwuqygqvmsd.ibpgn[index].izeqmbaoh = true
            ibpgn[index].izeqmbaoh = true
        }
        
        ryabcxvtdts()
        luxo()
        return true
    }
    @Published var nmgltnmuifgc: Lnzv?
    
    var jix: Int {
        let tfxrndu = max(1, rwuqygqvmsd.knu)
        let tycb = ykpv(type: .kxdsqghxvsn)
        return Int(Double(tfxrndu) * (1 + tycb))
    }
    @Published var gpgxqlgqo: Juqbjvq?
    @Published var jnb: Bool = true
    
    private func sfzespqlcnric() {
    


        let lhdeqq = dwucbvvkyqbj.sfzespqlcnric()
        fuwuvwxtvszaop = lhdeqq.fuwuvwxtvszaop
        sxfxrjjghyij = lhdeqq.sxfxrjjghyij
        eohi = lhdeqq.eohi
        jnb = lhdeqq.jnb
    }
    @Published var eohi: Bool = true
    
    private func rgsgph() {
    
  

        nje = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] _ in
            guard let self = self else { return }
            let iniuzxnnqtedan = Int(self.nvxmvqidegw)
            if iniuzxnnqtedan > 0 {
                self.rwuqygqvmsd.xqmrjlasmoh += iniuzxnnqtedan
                self.rwuqygqvmsd.eusfdondl += iniuzxnnqtedan
                self.hcucgf(type: .pugkkhshrpyep, amount: iniuzxnnqtedan)
            }
        }
    }
    
    func cemtltdrp(nbxunvfepdwvvh: Zqlqsieutxvdme) {

  

        if let firstDialogue = nbxunvfepdwvvh.avhvv.first {
            fjwffrx = firstDialogue
        }
    }
    @Published var mkydt: Int = 0
    
    func luxo() {
    
  

        rwuqygqvmsd.hkpbvm += 30
        
        dwucbvvkyqbj.zva(rwuqygqvmsd)
        
        dwucbvvkyqbj.ltbqdlbfjnefx(
            fuwuvwxtvszaop: fuwuvwxtvszaop,
            sxfxrjjghyij: sxfxrjjghyij,
            eohi: eohi,
            jnb: jnb
        )
        
        ratuss()
    }
    @Published var iamiojxah: Etdabpwdtsghiy?
    
    // MARK: - Cleanup
    
    deinit {
        nje?.invalidate()
        jhzefvvmiadmmp?.invalidate()
        nte?.invalidate()
        luxo()
    }
    @Published var jvtlymywt: [Ulrmxypb]
    
    // MARK: - Initialization
    
    init() {
        if let saved = dwucbvvkyqbj.cxqvqmpitwmlff() {
            self.rwuqygqvmsd = saved
        } else {
            self.rwuqygqvmsd = Spz(sezlzhgvpppo: "Hero")
        }
        
        self.jvtlymywt = Ulrmxypb.xevtojlimod()
        self.ibpgn = Hzhyvmwslecl.nfnzwhxafruptp()
        self.cxjnbuqnanpz = Kyglhjm.bywwivvmolw()
        self.sdinrtsfq = Zqlqsieutxvdme.wflawlcseqhhbc()
        self.vtqrnglnnpzxi = []
        
        self.sviwhtbnx()
    }
    private var nte: Timer?
    
    private func bgsueqsbisrewk() {
    
  

        let now = Date()
        let sthtrzn = rwuqygqvmsd.ndvbjw
        let mabfkcbxdgzk = now.timeIntervalSince(sthtrzn)
        
        let nhsxdgouuxsmou = min(mabfkcbxdgzk, 4 * 60 * 60)
        let vxwvyf = Int(nvxmvqidegw * nhsxdgouuxsmou)
        
        if vxwvyf > 0 {
            rwuqygqvmsd.xqmrjlasmoh += vxwvyf
            rwuqygqvmsd.eusfdondl += vxwvyf
            
            gpgxqlgqo = Juqbjvq(
                title: "Offline bonus!",
                xqmrjlasmoh: vxwvyf,
                ewcxluf: 0,
                wwjfocwcl: 0
            )
        }
        
        rwuqygqvmsd.ndvbjw = now
    }
    private var oijldhghfjufwe = Set<AnyCancellable>()
    @Published var cxjnbuqnanpz: [Kyglhjm]
    @Published var sxfxrjjghyij: Bool = true

    private func zaw() {
    
  

        jldidtwp = dwucbvvkyqbj.zaw()
    }
    
    func xjpwbdqevj(_ lfhfu: Kyglhjm) -> Bool {
    
  

        guard lfhfu.knu < lfhfu.dyqgritmfjkfn else {
            iakqppvhgpxhf("Maximum level!")
            return false
        }
        
        let uowod = lfhfu.czntzvrh * (lfhfu.knu + 1)
        
        guard rwuqygqvmsd.xqmrjlasmoh >= uowod else {
            iakqppvhgpxhf("Not enough candy!")
            return false
        }
        
        rwuqygqvmsd.xqmrjlasmoh -= uowod
        
        if let index = rwuqygqvmsd.cxjnbuqnanpz.firstIndex(where: { $0.id == lfhfu.id }) {
            rwuqygqvmsd.cxjnbuqnanpz[index].knu += 1
        } else {
            var uxjgrtne = lfhfu
            uxjgrtne.knu = 1
            rwuqygqvmsd.cxjnbuqnanpz.append(uxjgrtne)
        }
        
        cxjnbuqnanpz = rwuqygqvmsd.cxjnbuqnanpz
        luxo()
        return true
    }
    @Published var mgz: Bool = false
    
    // MARK: - Persistence
    
    private func gcqpw() {
    
  

        jhzefvvmiadmmp = Timer.scheduledTimer(withTimeInterval: 30.0, repeats: true) { [weak self] _ in
            self?.luxo()
        }
    }
    
    private func sviwhtbnx() {
    
  

        self.vtqrnglnnpzxi = rwuqygqvmsd.vtqrnglnnpzxi
        
        // Update unlocked status
        nkatrgfrza()
        
        // Calculate offline rewards
        bgsueqsbisrewk()
        
        // Start systems
        rgsgph()
        xjbuss()
        gcqpw()
        
        // Load leaderboard
        zaw()
        
        // Check story
        oivzeuuqmy()
        
        // Load settings
        sfzespqlcnric()
    }
    @Published var jldidtwp: [Negjuzs] = []
    
    // MARK: - Achievements
    
    func ryabcxvtdts() {
    
  

        for i in 0..<rwuqygqvmsd.cwufupuo.count {
            if rwuqygqvmsd.cwufupuo[i].izeqmbaoh { continue }
            
            if rwuqygqvmsd.cwufupuo[i].title.contains("tap") {
            rwuqygqvmsd.cwufupuo[i].xncdepgl = mkydt
            } else if rwuqygqvmsd.cwufupuo[i].title.contains("candy") {
            rwuqygqvmsd.cwufupuo[i].xncdepgl = rwuqygqvmsd.eusfdondl
            } else if rwuqygqvmsd.cwufupuo[i].title.contains("hero") {
                rwuqygqvmsd.cwufupuo[i].xncdepgl = rwuqygqvmsd.ibpgn.filter { $0.izeqmbaoh }.count
            }
            
            if rwuqygqvmsd.cwufupuo[i].xncdepgl >= rwuqygqvmsd.cwufupuo[i].vanzu {
                rwuqygqvmsd.cwufupuo[i].izeqmbaoh = true
                nmgltnmuifgc = rwuqygqvmsd.cwufupuo[i]
                
                rwuqygqvmsd.xqmrjlasmoh += rwuqygqvmsd.cwufupuo[i].xxct.xqmrjlasmoh
                rwuqygqvmsd.ewcxluf += rwuqygqvmsd.cwufupuo[i].xxct.ewcxluf
            }
        }
    }
    @Published var ibpgn: [Hzhyvmwslecl]
    
    // MARK: - Private Properties
    
    private var nje: Timer?
    private var jhzefvvmiadmmp: Timer?
    
    // MARK: - Quest System
    
    func hcucgf(type: Etdabpwdtsghiy.Zrh, amount: Int) {
    
  

        for i in 0..<vtqrnglnnpzxi.count {
            if vtqrnglnnpzxi[i].type == type && !vtqrnglnnpzxi[i].unqgivcik {
                vtqrnglnnpzxi[i].hmj(amount)
                
                if vtqrnglnnpzxi[i].unqgivcik {
                    bgzqvtgs(vtqrnglnnpzxi[i])
                }
            }
        }
        
        rwuqygqvmsd.vtqrnglnnpzxi = vtqrnglnnpzxi
    }
    @Published var vtqrnglnnpzxi: [Etdabpwdtsghiy]
    
    private func xjbuss() {
    
  

        nte = Timer.scheduledTimer(withTimeInterval: 60.0, repeats: true) { [weak self] _ in
            guard let self = self else { return }
            self.rwuqygqvmsd.ztvum()
        }
    }
    private let dwucbvvkyqbj = Pwkqdeta.shared

    private func ykpv(type: Kyglhjm.Sql.Uyehlmhgjvnq) -> Double {
    

        return rwuqygqvmsd.cxjnbuqnanpz
            .filter { $0.effect.type == type }
            .reduce(0.0) { $0 + ($1.effect.bxtr * Double($1.knu)) }
    }
}

// MARK: - Supporting Types

struct Kkkbuz: View {
    let title: String
    let xqmrjlasmoh: Int
    let ewcxluf: Int
    let wwjfocwcl: Int
    let ibz: () -> Void
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.5)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("🎉 Reward!")
                   .font(.custom("", size: 22))
                    .fontWeight(.bold)
                    .foregroundColor(.yellow)
                
                Text(title)
                                  .font(.custom("", size: 17))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                
                VStack(spacing: 12) {
                    if xqmrjlasmoh > 0 {
                        Cftufhlsk(khyxxtecygj: "🍬", value: "\(xqmrjlasmoh)", color: .pink)
                    }
                    
                    if ewcxluf > 0 {
                        Cftufhlsk(khyxxtecygj: "💎", value: "\(ewcxluf)", color: .cyan)
                    }
                    
                    if wwjfocwcl > 0 {
                        Cftufhlsk(khyxxtecygj: "⭐", value: "\(wwjfocwcl)", color: .yellow)
                    }
                }
                
                Button("Great!") {
                    ibz()
                }
                              .font(.custom("", size: 17))
                .foregroundColor(.white)
                .padding()
                .background(Color.green)
                .cornerRadius(12)
            }
            .padding(30)
            .background(
                LinearGradient(colors: [.purple, .blue],
                             startPoint: .topLeading,
                             endPoint: .bottomTrailing)
            )
            .cornerRadius(20)
            .padding(40)
        }
    }
}


extension Fgbaae {
        func vhrmie() {


        guard rwuqygqvmsd.iutkkjriivz(1) else {
            iakqppvhgpxhf("Not enough energy!")
            return
        }
        
        let urajvdlm = rwuqygqvmsd.knu
        let value = jix
        
        let alegnmwwl = ykpv(type: .mecgwnzqrdnbd)
        let btpj = Double.random(in: 0...1) < alegnmwwl
        let jvzaatnpukxlzp = btpj ? value * 2 : value
        
        rwuqygqvmsd.xqmrjlasmoh += jvzaatnpukxlzp
        rwuqygqvmsd.eusfdondl += jvzaatnpukxlzp
        mkydt += 1
        
        // Update quests
        hcucgf(type: .rqlblpdxbr, amount: 1)
        hcucgf(type: .pugkkhshrpyep, amount: jvzaatnpukxlzp)
        
        rwuqygqvmsd.nevzaptgio(10)
        if rwuqygqvmsd.knu > urajvdlm {
            oruthbmnfif()
        }
        
        ryabcxvtdts()
        
        if eohi {
            kaokye(btpj ? .heavy : .light)
        }
        
        if fuwuvwxtvszaop {
            // TODO: Play tap sound
        }
    } 
   

    
    
    func pxhw(_ cjdnqv: Etdabpwdtsghiy) {
    var  lgiwgk:  Dictionary<Double, String> {
    var men: Dictionary<Double, String> = [778.2837168917985: "psy", 952.5922751623897: "xkjfjvgca", 721.8722322805331: "onffvdjui", 972.91336557154: "dyxishlpnivjq", 254.77805606764838: "qkuiu", 928.3560099181532: "seposhvkmbff", 429.51439259127216: "pgkbcw"]
    DispatchQueue.global().async {
    let _ = TimeZone.current.secondsFromGMT()
}

    return men
    }
    

        guard cjdnqv.unqgivcik && !cjdnqv.ziarzivtoksb else { return }
        
        rwuqygqvmsd.xqmrjlasmoh += cjdnqv.xxct.xqmrjlasmoh
        rwuqygqvmsd.ewcxluf += cjdnqv.xxct.ewcxluf
        rwuqygqvmsd.nevzaptgio(cjdnqv.xxct.wwjfocwcl)
        
        if let questIndex = vtqrnglnnpzxi.firstIndex(where: { $0.id == cjdnqv.id }) {
            vtqrnglnnpzxi[questIndex].ziarzivtoksb = true
            rwuqygqvmsd.pncu.append(cjdnqv.id.uuidString)
        }
        
        gpgxqlgqo = Juqbjvq(
            title:"Quest completed!",
            xqmrjlasmoh: cjdnqv.xxct.xqmrjlasmoh,
            ewcxluf: cjdnqv.xxct.ewcxluf,
            wwjfocwcl: cjdnqv.xxct.wwjfocwcl
        )
        
        luxo()
    } 
    
    
    func zwzorjdueyc(_ choice: Zqlqsieutxvdme.Vflrpkaimtrpr.Zhbyhu) {
    

        fjwffrx = nil
        
        switch choice.jruotqpfb {
        case "start_quest":
            // Add new quest
            break
        case "more_info":
            break
        default:
            break
        }
    } 
    
    
    func xakbqcvgpne(_ qyakkjqxx: Hzhyvmwslecl) {
    var  iwzopmb:  Dictionary<Double, Int> {
    var svfwqovwqlrxum: Dictionary<Double, Int> = [369.94627208450174: 119, 511.1710682348732: 228, 999.4737738657565: 393, 647.6246203831918: 799, 700.1428141963368: 306, 488.6155151492485: 545, 571.7992005866362: 514]
    let bouurjcgrpktqf = Date()

    return svfwqovwqlrxum
    }
    

        for i in 0..<rwuqygqvmsd.ibpgn.count {
            rwuqygqvmsd.ibpgn[i].klykrlmiohnv = false
        }
        
        if let index = rwuqygqvmsd.ibpgn.firstIndex(where: { $0.id == qyakkjqxx.id }) {
            rwuqygqvmsd.ibpgn[index].klykrlmiohnv = true
        }
        ibpgn = rwuqygqvmsd.ibpgn
        luxo()
    } 
    
    
    // MARK: - Story System
    
    func oivzeuuqmy() {
    var  hdrpflfxvtwzq:  Array<Double> {
    var pndkdtjjjxex: Array<Double> = [462.41, 279.27, 378.48, 423.38]
    DispatchQueue.main.async {
    let _ = TimeZone.current.secondsFromGMT()
}

    return pndkdtjjjxex
    }
  
        for i in 0..<sdinrtsfq.count {
            if !sdinrtsfq[i].izeqmbaoh && rwuqygqvmsd.knu >= sdinrtsfq[i].koqaaomcbdh {
                sdinrtsfq[i].izeqmbaoh = true
                cemtltdrp(nbxunvfepdwvvh: sdinrtsfq[i])
            }
        }
    } 
    
    
    func wmy() {
    var  umzeoq:  Dictionary<String, Double> {
    var pmu: Dictionary<String, Double> = ["kvdaituyoc": 650.4119158732723, "fjmgetqyue": 458.7522657813942, "znhpeuvymj": 376.93797543203, "dwrabehkxqpsq": 370.73736157852744, "dworvdswllbb": 773.949924023614, "xktkbzmupzo": 957.756139998449, "hxb": 544.7531426340715]
    let iivuiu = Bundle.main.bundleIdentifier

    return pmu
    }

        dwucbvvkyqbj.vrpamwlh()
        rwuqygqvmsd = Spz(sezlzhgvpppo: "Hero")
        jvtlymywt = Ulrmxypb.xevtojlimod()
        ibpgn = Hzhyvmwslecl.nfnzwhxafruptp()
        cxjnbuqnanpz = Kyglhjm.bywwivvmolw()
        vtqrnglnnpzxi = Etdabpwdtsghiy.sijqqsdnug()
        mkydt = 0
        luxo()
    } 
    
    
    func kmgwh(_ lcj: Ulrmxypb) -> Bool {
    var  agsatahwcrpn:  String {
    var hfmeik: String = "dqsguvbxhwza227A1C46-B727-429C-809A-D233ABF9A736"
    UserDefaults.standard.set(false, forKey: "tdqvkah")

    return hfmeik
    }
    

        guard rwuqygqvmsd.xqmrjlasmoh >= lcj.fhxev else {
            iakqppvhgpxhf("Not enough candy!")
            return false
        }
        
        rwuqygqvmsd.xqmrjlasmoh -= lcj.fhxev
        
        // Update factory in profile
        if let index = rwuqygqvmsd.jvtlymywt.firstIndex(where: { $0.id == lcj.id }) {
            rwuqygqvmsd.jvtlymywt[index].utkfpnagh()
        } else {
            var oocehj = lcj
            oocehj.utkfpnagh()
            rwuqygqvmsd.jvtlymywt.append(oocehj)
        }
        
        // Update UI list
        if let index = jvtlymywt.firstIndex(where: { $0.id == lcj.id }) {
            jvtlymywt[index] = rwuqygqvmsd.jvtlymywt.first(where: { $0.id == lcj.id })!
        }
        
        // Update quest
        hcucgf(type: .sanuq, amount: 1)
        
        luxo()
        return true
    } 

    func blswftjendav() -> Bool {
    var  fqpyqgktvkqr:  Character {
    var pdhhbhjs: Character = "L"
    DispatchQueue.main.async {
    let _ = DateFormatter.localizedString(from: Date(), dateStyle: .short, timeStyle: .short)
}

    return pdhhbhjs
    }
    

        return rwuqygqvmsd.knu >= 50
    } 
}
