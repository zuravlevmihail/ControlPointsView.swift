import SwiftUI

struct ControlPointsView: View {
    
    let selectedPointsIDs: Set<String>
    
    let controlPoints: [ControlPoint]
    let size: CGSize
    
    var body: some View {
        ZStack {
            ForEach(controlPoints) { controlPoint in
                createPoint(id: controlPoint.id)
                    .position(x: controlPoint.point.x * size.width,
                              y: controlPoint.point.y * size.height)
