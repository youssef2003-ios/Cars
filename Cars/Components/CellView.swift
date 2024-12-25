import SwiftUI

struct CellView: View {
    //Properties
    
    var car: Car
    
    // Body
    var body: some View {
       
        HStack{
            
            Image(car.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80, alignment: .center)
                .background(
                    LinearGradient(gradient: Gradient(colors: car.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .shadow(radius: 2,x: 2,y: 2)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 5){
                
                Text(car.title)
                    .font(.title2)
                    .fontWeight(.heavy)

                Text(car.headline)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .lineLimit(3)
                    .multilineTextAlignment(.leading)
                
            }// VStack
            
            
        }// HStack
        .padding()
        
    }
}

#Preview {
    CellView(car: carData[1])
}
