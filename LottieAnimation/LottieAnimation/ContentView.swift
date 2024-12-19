

import SwiftUI
import Lottie

struct ContentView: View {
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    
    var body: some View {
        VStack {
            LottieView(lottieFile: "UseAnimation").frame(width: width - 10, height: height / 2)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


struct LottieView: UIViewRepresentable {
    let lottieFile: String
    let animationView = LottieAnimationView()
    
    func makeUIView(context: Context) -> some UIView {
        let view = UIView(frame: .zero)
        
        animationView.animation = LottieAnimation.named(lottieFile)
        animationView.play()
        animationView.loopMode = .loop
        animationView.backgroundBehavior = .pauseAndRestore
        view.addSubview(animationView)
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        animationView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        animationView.animationSpeed = 1
        
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
}
