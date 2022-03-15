import SwiftUI

struct Move: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            Color("DarkShade2")
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                TitleText("Transitions").foregroundColor(Color("LightShade2"))
                SubtitleText("Move").foregroundColor(Color("LightAccent2"))
                BannerText("Move the view into view from the edge specified.",
                           backColor: Color("DarkAccent2"), textColor: Color("LightShade2"))
                
                Button("Change") {
                    change.toggle()
                }
                Spacer()
                
                Group {
                    if change {
                        Image("driving")
                            .transition(.move(edge: .bottom))
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

struct Move_Previews: PreviewProvider {
    static var previews: some View {
        Move()
    }
}
