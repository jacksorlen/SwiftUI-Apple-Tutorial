import SwiftUI

struct LandmarkView: View {
    
    var landmark: Landmark
    
    init(_ landmark: Landmark) {
        self.landmark = landmark
    }
    
    var body: some View {
        ScrollView {
            
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            CircleImageView(image: landmark.image)
                .offset(y: -140)
                .padding(.bottom, -140)
            
            VStack {
                VStack(alignment: .leading) {
                    
                    Text(landmark.name)
                        .font(.title)
                    
                    HStack {
                        Text(landmark.park)
                            
                        Spacer()
                        Text(landmark.state)
                            .font(.subheadline)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    Divider()
                    
                    Text("About \(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
                }
                
            }
            .padding()
        }
        .ignoresSafeArea(edges: .top)
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkView(landmarks[1])
    }
}
