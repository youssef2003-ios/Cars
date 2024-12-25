import SwiftUI

struct CardView: View {
    //Properties
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var car: Car
    @State var isScaling: Bool = false
    @State var isSliding: Bool = false
    
    // Body
    var body: some View {
        
        VStack(alignment: .center) {
                        
            Image(car.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
                .scaleEffect(isScaling ? 1 : 0.6)
                .animation(.easeInOut(duration: 0.7), value: isScaling)
                    
            Text(car.title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.white)
            
            Text(car.headline)
                .font(.title3)
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .padding()
            
            
            Button {
                // action
                isOnboarding = false
            } label: {
                
                Image(systemName: "arrow.right.circle")
                Text ("Start")
            }// Button
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
            .background(Capsule().stroke(Color.white, lineWidth: 1.5))
            .offset(y: isSliding ? 0 : 50)
            .animation(.easeInOut(duration: 0.7), value: isSliding)
           
            
        } // VStack
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(
            LinearGradient(gradient: Gradient(colors: car.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
        )
        .shadow(radius: 2, x: 2, y: 2)
        .onAppear {
            isScaling = true
            isSliding = true
        }
        

        
    }
}

#Preview {
    CardView(car: carData[2])
}
