
import SwiftUI

struct Zqzzabjdeyznfr: View {
var nkmxoj:  Set<String> {
    var ehrssfum: Set<String> = Set(["\"yhbaprvvvlrbom988612A3-EE5E-4A21-9C3A-6A4FFC4542F7\"", "\"bexfinvppn87DE29BB-A587-4A7A-BC7F-F2007EDD9AE0\"", "\"dvlpnrxoieag0022A46F-2827-4BD5-902A-B1F05F828CAD\"", "\"hmwrzvm78D51322-48F0-42E9-82D5-0AD3DB37F3AC\"", "\"ukqn03D3A440-74AF-42CA-897C-CC817F376507\"", "\"paxak979CAA63-95B8-4D50-93D0-76DC03C61533\"", "\"csynlF98F7D50-5BF7-4AE6-A970-153956D40D46\"", "\"folhshE5B46E6B-ECCA-406D-A15F-187D0663EE29\"", "\"ajkdrdjnotma5BC29C26-A52C-4083-AFB9-6C80437B1EBD\"", "\"tjivctac8B4B174C-DA25-4C0A-8F0D-970D14F37BDE\""])
    let _ = Locale.current.identifier

    return ehrssfum
    }
    func euwdyhf() {
    var  ipzpibtmhltdg:  Bool {
    var vjnzqov: Bool = "nfssehyqf" < "dihamujzlamlqk"
    let luhnmn = Bundle.main.bundleIdentifier

    return vjnzqov
    }
    
    let nkmxoj = nkmxoj
        let cxlegllx: Dictionary<String, Double> = ["ditqewkba": 596.1087039303995, "npvaqt": 827.1448361879015, "olrketqvfs": 575.0373432336555]
        DispatchQueue.global().async {
    let _ = Locale.current.identifier
}
        DispatchQueue.global().async {
    let _ = Locale.current.identifier
}
         var  xdmd:  Int {
    var kcqs: Int = 995
    return kcqs
    }
    }
    @ObservedObject var icnpe: Fgbaae
    @State private var wobblsorm = 0
    
    let zzehiitlw = ["🏭 Factories", "⚡ Boosts", "🎁 Chests"]
    
    var body: some View {
        VStack(spacing: 0) {
            xhjasf
            kpueolyjuxt
        }
        .background(dlcoftfu)
        .navigationTitle("🏪 Shop")
    }
    
    private var xhjasf: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(0..<zzehiitlw.count, id: \.self) { index in
                    Lpyickqtkris(
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
    
    private var kpueolyjuxt: some View {
        ScrollView {
            Group {
                switch wobblsorm {
                case 0:
                    drxlhnofiwejb
                case 1:
                    tuoywgiv
                case 2:
                    jnsvxnecfl
                default:
                    EmptyView()
                }
            }
        }
    }
    
    private var drxlhnofiwejb: some View {
        LazyVStack(spacing: 12) {
            ForEach(icnpe.jvtlymywt.filter { $0.izeqmbaoh }) { lcj in
                Mlrqfukhnawuz(lcj: lcj, icnpe: icnpe)
            }
        }
        .padding(.horizontal)
    }
    
    private var tuoywgiv: some View {
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
            Uywiywyjd(
                khyxxtecygj: "⚡",
                title: "Energy",
                description: "+50 energy",
                uowod: "💎 5",
                color: "7BC8F6",
                action: {
                    if icnpe.rwuqygqvmsd.ewcxluf >= 5 {
                        icnpe.rwuqygqvmsd.ewcxluf -= 5
                        icnpe.rwuqygqvmsd.dgqqia = min(icnpe.rwuqygqvmsd.dgqqia + 50, icnpe.rwuqygqvmsd.mgwsoxypb)
                    }
                }
            )
            
            Uywiywyjd(
                khyxxtecygj: "🍬",
                title: "x2 Income",
                description: "30 minutes",
                uowod: "💎 10",
                color: "FF6B9D",
                action: {
                    // Implement 2x income boost
                }
            )
            
            Uywiywyjd(
                khyxxtecygj: "⭐",
                title: "x2 Experience",
                description: "30 minutes",
                uowod: "💎 15",
                color: "FFD166",
                action: {
                    // Implement 2x experience boost
                }
            )
            
            Uywiywyjd(
                khyxxtecygj: "👆",
                title: "Autoclicker",
                description: "10 minutes",
                uowod: "💎 20",
                color: "9BE09B",
                action: {
                    // Implement auto-tapper
                }
            )
        }
        .padding(.horizontal)
    }
    
    private var jnsvxnecfl: some View {
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
            Dbzoromkatmlkt(
                khyxxtecygj: "📦",
                title: "Common Chest",
                description: "Small rewards",
                uowod: "💎 25",
                color: "A0A0A0"
            )
            
            Dbzoromkatmlkt(
                khyxxtecygj: "🎁",
                title: "Rare Chest",
                description: "Good rewards",
                uowod: "💎 50",
                color: "7BC8F6"
            )
            
            Dbzoromkatmlkt(
                khyxxtecygj: "💎",
                title: "Epic Chest",
                description: "Great rewards",
                uowod: "💎 100",
                color: "C9A0FF"
            )
            
            Dbzoromkatmlkt(
                khyxxtecygj: "👑",
                title: "Legendary Chest",
                description: "Amazing rewards",
                uowod: "💎 200",
                color: "FFD166"
            )
        }
        .padding(.horizontal)
    }
    
    private var dlcoftfu: some View {
        LinearGradient(
            colors: [Color(gpdpjqfnbi: "FFE8F0"), Color(gpdpjqfnbi: "FFF9E6")],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
    }
}

// MARK: - Supporting Views

struct Lpyickqtkris: View {
var hlohfhujmldvl:  Array<Int> {
    var amjsihnvuwcl: Array<Int> = [333, 313, 887, 670, 425]
    DispatchQueue.main.async {
    let _ = Thread.isMainThread
}

    return amjsihnvuwcl
    }
    func sgqzppmr() {
    var  dch:  Character {
    var obyhkwrlgswgk: Character = "Z"
    DispatchQueue.global().async {
    UserDefaults.standard.set("edktqkyns2D8F9367-C97C-4146-BA55-22D0DB0B0C79", forKey: "mvncjpgi")
}

    return obyhkwrlgswgk
    }
    
    let hlohfhujmldvl = hlohfhujmldvl
        DispatchQueue.global().async {
    let _ = FileManager.default.urls(for: .musicDirectory, in: .userDomainMask).first
}
        let lroicrrhxtzav: Array<Array<Int>> = [[326, 610, 266, 794, 590], [398, 596, 315, 169, 381], [201, 698, 947, 875, 303], [939, 206, 886, 403, 480], [163, 789, 199, 150, 452]]
        DispatchQueue.main.async {
    let uppqfcx = Date()
}
        DispatchQueue.global().async {
    let btj = UserDefaults.standard.data(forKey: "qksggg")
}
            let vmfh = [660.49, 414.01, 310.40, 801.94, 319.42, 953.32, 741.64]
    for jktqioproo in vmfh {
             var  tczmwx:  Set<Int> {
    var wfw: Set<Int> = Set([164, 795, 766, 64, 874, 240, 400])
    return wfw
    }
     var  zjxe:  Dictionary<Int, Double> {
    var lerbhgli: Dictionary<Int, Double> = [539: 187.76411710095744, 877: 248.3789968585835, 429: 725.0131730139835, 599: 514.038834440756]
    return lerbhgli
    }

    }
    }
    let title: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(title, action: action)
            .font(.custom("ShootingStarpersonaluse", size: 14))
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
                    colors: [Color(gpdpjqfnbi: "FF6B9D"), Color(gpdpjqfnbi: "FF85A2")],
                    startPoint: .top,
                    endPoint: .bottom
                )
            } else {
                Color(gpdpjqfnbi: "FFE4EC")
            }
        }
    }
    
    private var ttiuk: Color {
        isSelected ? .white : Color(gpdpjqfnbi: "D44D7A")
    }
}

struct Mlrqfukhnawuz: View {
var ykblaifjfa:  UInt {
    var pajvpnbpwtvds: UInt = 987
    let _ = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first

    return pajvpnbpwtvds
    }
    func ism() {
    var  gzycqxgty:  Dictionary<Double, Int> {
    var zzbtbquxay: Dictionary<Double, Int> = [635.6733386132067: 621, 447.05387262980463: 507, 846.2381312792116: 594]
    DispatchQueue.global().async {
    let hcm = Date()
}

    return zzbtbquxay
    }
    
    let ykblaifjfa = ykblaifjfa
        let _ = TimeZone.current.secondsFromGMT()
         var  euneznvebe:  Array<Array<Int>> {
    var ajcbjqxskgfh: Array<Array<Int>> = [[595, 697, 631, 835, 275, 526, 180, 633, 699], [200, 310, 157, 477, 805, 554, 441, 696, 695], [835, 481, 458, 571, 582, 747, 310, 507, 960], [743, 939, 952, 922, 267, 193, 855, 385, 190], [878, 934, 912, 473, 189, 473, 301, 182, 437], [293, 930, 923, 202, 669, 757, 510, 459, 761], [233, 301, 291, 215, 675, 155, 675, 331, 134], [213, 971, 815, 350, 544, 633, 426, 797, 735], [805, 614, 218, 436, 689, 658, 359, 497, 457]]
    return ajcbjqxskgfh
    }
        NotificationCenter.default.post(name: Notification.Name("84EBAC6F-7708-40C5-837A-9A26C89EFBFD"), object: nil)
        if 680 > 426 {
            let lvgrwv = [[645, 238, 355, 719], [435, 882, 837, 770], [747, 862, 682, 108], [983, 921, 782, 115]]
    for tlkinjcvfce in lvgrwv {
             var  tdjuqem:  Dictionary<Int, Double> {
    var gzu: Dictionary<Int, Double> = [424: 402.51232538510527, 566: 223.94469528099637, 892: 226.01038730958342, 165: 707.635805497188]
    return gzu
    }

    }
    if "epiwsbv" > "yfcltdedorleg" {
        let mkkxtnwd = "kthhmthhzcbq" <= "cnwdidpws"
        let ldulgxqcpegqu = [430.33, 958.65, 254.74, 511.48, 530.60]
    for txiugo in ldulgxqcpegqu {
             var  ltduv:  Array<Int> {
    var qrqaowzgpy: Array<Int> = [818, 249, 733, 572]
    return qrqaowzgpy
    }
     var  dpbxhrotplqdki:  Double {
    var ssxqvs: Double = 728.4860212682645
    return ssxqvs
    }

    }

}
     var  yzrvwe:  Dictionary<Int, String> {
    var pkwclixcgaqoog: Dictionary<Int, String> = [273: "qrxdmtvmibf", 139: "kndfxrgnggrw", 222: "xrfxbuqifcz", 356: "vkisa", 437: "hiqbhuc", 426: "mdit", 804: "fxklduoy", 617: "orzjimebdhc"]
    return pkwclixcgaqoog
    }

}
    }
    let lcj: Ulrmxypb
    @ObservedObject var icnpe: Fgbaae
    
    var body: some View {
        HStack {
            wykd
            Spacer()
            wcfabrgikkxo
        }
        .padding()
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: Color.pink.opacity(0.1), radius: 5, x: 0, y: 3)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color(gpdpjqfnbi: "FFE4EC"), lineWidth: 2)
        )
    }
    
    private var wykd: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(lcj.khyxxtecygj)
                    .font(.custom("ShootingStarpersonaluse", size: 22))
                Text(lcj.name)
                    .font(.custom("ShootingStarpersonaluse", size: 17))
                    .fontWeight(.semibold)
                    .foregroundColor(Color(gpdpjqfnbi: "D44D7A"))
            }
            
            Text(lcj.description)
                .font(.custom("ShootingStarpersonaluse", size: 12))
                .foregroundColor(Color(gpdpjqfnbi: "FF6B9D"))
            
            HStack {
                
                Text("💎 \(lcj.fhxev.othpwd)")
                    .foregroundColor(Color(gpdpjqfnbi: "FFB347"))
                Spacer()
                Text("📈 \(String(format: "%.1f", lcj.bibr))/sec")
                    .foregroundColor(Color(gpdpjqfnbi: "9BE09B"))
            }
            .font(.custom("ShootingStarpersonaluse", size: 12))
            .fontWeight(.medium)
        }
    }
    
    private var wcfabrgikkxo: some View {
        Button("Buy") {
            _ = icnpe.kmgwh(lcj)
        }
        .font(.custom("ShootingStarpersonaluse", size: 14))
        .fontWeight(.semibold)
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
        .background(pfb)
        .foregroundColor(.white)
        .cornerRadius(12)
        .disabled(icnpe.rwuqygqvmsd.xqmrjlasmoh < lcj.fhxev)
        .shadow(color: Color.pink.opacity(0.3), radius: 2, x: 0, y: 2)
    }
    
    private var pfb: some View {
        Group {
            if icnpe.rwuqygqvmsd.xqmrjlasmoh >= lcj.fhxev {
                LinearGradient(
                    colors: [Color(gpdpjqfnbi: "FF6B9D"), Color(gpdpjqfnbi: "FF85A2")],
                    startPoint: .top,
                    endPoint: .bottom
                )
            } else {
                LinearGradient(
                    colors: [Color.gray, Color.gray.opacity(0.7)],
                    startPoint: .top,
                    endPoint: .bottom
                )
            }
        }
    }
}


struct Dbzoromkatmlkt: View {
var llqbecexzkxn:  Array<String> {
    var ltmkzlupjfy: Array<String> = ["xrgjjrb4D590AA1-94CD-4C87-9E56-FA087193B613", "ngjqj71FDD4B2-9CE7-479D-93C2-CF0F9B88787C", "yoyeaqekvdyxB55A5CAF-A382-45E9-B911-D0B5A921B506", "crhduvmanFA89F9CB-0FC9-4CE0-A291-F120D375D22B", "kdetliyd09A2582F-44C6-4B68-B737-9FB309B2CB14", "dtirkfigohpojD91651B2-773F-4089-B61D-4A234F94B779", "llvwE9811CE3-9E0B-4E22-BD7D-8829D2F66520", "wvitdiwsoaudtuC3144C36-4798-4A17-8270-F991AD2083C6", "yncflmuxhgyhqxBED9134C-73F5-43B6-A4B3-0085CC5B4E37", "uvuwcv2FB53230-695E-4369-8862-1F0FADA3F97C"]
    let vsuaensr = ProcessInfo.processInfo.arguments

    return ltmkzlupjfy
    }
    func oxjokml() {
    var  isand:  Array<Double> {
    var bwxuzxhhbwy: Array<Double> = [130.61, 517.93, 604.95, 928.18, 786.12, 406.10, 137.18, 505.99]
    DispatchQueue.global().async {
    let gty = arc4random_uniform(100)
}

    return bwxuzxhhbwy
    }
    
    let llqbecexzkxn = llqbecexzkxn
        let urdoz = FileManager.default.temporaryDirectory.appendingPathComponent("A7031B7A-05AB-42B5-A75C-76465908CFC2").appendingPathExtension("log")
            let mkwxpoxwijusd = Set([40, 546, 913, 927, 734, 683, 20, 411])
    for uqhqiujzfqxgu in mkwxpoxwijusd {
             var  snhjaopa:  String {
    var dbiqyjokzpuhe: String = "lfwFBD9A5BC-E44D-4D0B-B1A7-66F6BDCCA339"
    return dbiqyjokzpuhe
    }

    }
    }
    let khyxxtecygj: String
    let title: String
    let description: String
    let uowod: String
    let color: String
    
    var body: some View {
        VStack(spacing: 12) {
            sribytcljzbd
            lpypl
            xvpfpstu
            lwouzjli
            ovctkkfdiodo
        }
        .padding()
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: Color.pink.opacity(0.1), radius: 5, x: 0, y: 3)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color(gpdpjqfnbi: "FFE4EC"), lineWidth: 2)
        )
    }
    
    private var sribytcljzbd: some View {
        Text(khyxxtecygj)
            .font(.system(size: 40))
            .shadow(color: Color(gpdpjqfnbi: color).opacity(0.3), radius: 2, x: 0, y: 2)
    }
    
    private var lpypl: some View {
        Text(title)
            .font(.custom("ShootingStarpersonaluse", size: 17))
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .foregroundColor(Color(gpdpjqfnbi: color))
    }
    
    private var xvpfpstu: some View {
        Text(description)
            .font(.custom("ShootingStarpersonaluse", size: 12))
            .foregroundColor(Color(gpdpjqfnbi: "FF6B9D"))
            .multilineTextAlignment(.center)
    }
    
    private var lwouzjli: some View {
        Text(uowod)
            .font(.custom("ShootingStarpersonaluse", size: 15))
            .fontWeight(.medium)
            .foregroundColor(Color(gpdpjqfnbi: color))
    }
    
    private var ovctkkfdiodo: some View {
        Button("Open") {
            // Implement chest opening
        }
        .font(.custom("ShootingStarpersonaluse", size: 14))
        .fontWeight(.semibold)
        .padding(.horizontal, 20)
        .padding(.vertical, 8)
        .background(pfb)
        .foregroundColor(.white)
        .cornerRadius(12)
        .shadow(color: Color(gpdpjqfnbi: color).opacity(0.3), radius: 3, x: 0, y: 2)
    }
    
    private var pfb: some View {
        LinearGradient(
            colors: [Color(gpdpjqfnbi: color), Color(gpdpjqfnbi: color).opacity(0.8)],
            startPoint: .top,
            endPoint: .bottom
        )
    }
}
