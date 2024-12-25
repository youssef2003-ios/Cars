import SwiftUI

struct HeaderView: View {
    
    var car: Car
    
    @State var isScaling: Bool = false
    
    var body: some View {
        ZStack{
            Image(car.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .scaleEffect(isScaling ? 1 : 0.6)
                .animation(.easeInOut(duration: 0.7), value: isScaling)
            
        }// ZStack
//        .frame(height: 440, alignment: .center)
        .frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, minHeight: 440, idealHeight: 440, maxHeight: .infinity, alignment: .center)
        .background(
            LinearGradient(gradient: Gradient(colors: car.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
        )
        .onAppear {
            isScaling = true
        }
        
        
    }
}


#Preview {
    HeaderView(car: carData[2])
}
