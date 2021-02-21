import SwiftUI

struct CircleImageView: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(
                Circle()
                    .stroke(Color.white, lineWidth: 5))
            .shadow(radius: 8)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
