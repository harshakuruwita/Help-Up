//
//  BottomLayer.swift
//  Help-Up
//
//  Created by Harsha Kuruwita on 4/23/20.
//  Copyright © 2020 Harsha Kuruwita. All rights reserved.
//

import SwiftUI

struct BottomLayer: View {
    @State private var insetAmount: CGFloat = 70
    @State private var startAnimation: Bool = false
    var body: some View {
     
        VStack{
          
            Trapezoid(insetAmount: insetAmount)
                .padding(.bottom).foregroundColor(Color(AppColor.Primary.Common))
                .frame(width: 380, height: 500.0)
            
            }.offset(y: 600).offset(y: self.startAnimation ? 0 - UIScreen.main.bounds.width + 150: 0).onAppear {
                
                
                return withAnimation(.easeInOut(duration: 4)) {
                     self.startAnimation.toggle()
                }
            }

}
}

struct BottomLayer_Previews: PreviewProvider {
    static var previews: some View {
        BottomLayer()
    }
}


struct Trapezoid: Shape {
    var insetAmount: CGFloat

    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: 0, y: rect.maxY))
        path.addLine(to: CGPoint(x: 0, y: insetAmount))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: 0, y: rect.maxY))

        return path
   }
}
