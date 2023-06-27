import SwiftUI

struct NotificationView: View {
    var size: CGSize
    @State var isExpanded: Bool = false
    @State var notification: NotificationModel?
    
    var body: some View {
        HStack {
            Image(systemName: "globe")
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
            VStack {
                if let notification = notification {
                    Text(notification.title)
                        .font(.title)
                        .foregroundColor(.white)
                    Text(notification.content)
                        .font(.system(size: 18))
                        .foregroundColor(.white)
                }
            }
        }
        .frame(width: isExpanded ? size.width - 22 : 126, height: isExpanded ? 120 : 37.33)
        .blur(radius: isExpanded ? 0 : 30)
        .opacity(isExpanded ? 1:0)
        .scaleEffect(isExpanded ? 1 : 0.5, anchor: .top)
        .background {
            RoundedRectangle(cornerRadius: isExpanded ? 50 : 63, style: .continuous)
                .fill(.black)
        }
        .clipped()
        .offset(y: 11)
        .onReceive(NotificationCenter.default.publisher(for: .init("Notify"))) { output in
            guard let notification = output.object as? NotificationModel else { return}
            self.notification = notification
            withAnimation(.interactiveSpring(response:0.7, dampingFraction: 0.7, blendDuration: 0.7)) {
                isExpanded = true
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.2) {
                    withAnimation(.interactiveSpring(response:0.7, dampingFraction: 0.7, blendDuration: 0.7)) {
                        isExpanded = false
                        self.notification = nil
                    }
                }
            }
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView(size: CGSize(width: 300, height: 400))
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

