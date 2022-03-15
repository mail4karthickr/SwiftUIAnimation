import SwiftUI

struct Offset: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            Color("DarkShade2")
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                TitleText("Transitions").foregroundColor(Color("LightShade2"))
                SubtitleText("Offset").foregroundColor(Color("LightAccent2"))
                BannerText("The offset transition moves in FROM the offset you specify.",
                           backColor: Color("DarkAccent2"), textColor: Color("LightShade2"))
                
                Button("Change") {
                    change.toggle()
                }
                Spacer()
                
                Group {
                    if change {
                        Image("driving")
                            .transition(.offset(x: 200, y: -200))
                    }
                }
                .animation(.easeInOut(duration: 1), value: change)
                
                Spacer()
            }
            .font(.title)
            .accentColor(Color("Accent2"))
        }
    }
}

struct Offset_Previews: PreviewProvider {
    static var previews: some View {
        Offset()
    }
}
