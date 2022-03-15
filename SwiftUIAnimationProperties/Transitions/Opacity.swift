import SwiftUI

struct Opacity: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            Color("DarkShade2")
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                TitleText("Transitions").foregroundColor(Color("LightShade2"))
                SubtitleText("Opacity").foregroundColor(Color("LightAccent2"))
                BannerText("Use opacity to fade a view in and out.",
                           backColor: Color("DarkAccent2"), textColor: Color("LightShade2"))
                
                Button("Change") {
                    change.toggle()
                }
                Spacer()
                
                if change {
                    Image("driving")
                        .transition(.opacity.animation(.easeInOut(duration: 1)))
                }
                
                Spacer()
            }
            .font(.title)
            .accentColor(Color("Accent2"))
        }
    }
}

struct Opacity_Previews: PreviewProvider {
    static var previews: some View {
        Opacity()
    }
}
