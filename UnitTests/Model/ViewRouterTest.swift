//
//  ViewRouterTest.swift
//  UnitTests
//
//  Created by Yaroslav Stanislavyk on 08.05.2020.
//  Copyright © 2020 Yaroslav Stanislavyk. All rights reserved.
//

import XCTest

@testable import Contacts

class ViewRouterTest: XCTestCase {
    private var viewRouter: ViewRouter!

    override func setUp() {
        viewRouter = ViewRouter(viewsDataHolder: RealViewsDataHolder())
    }
    
    func test_viewRouter_peopleViewIsDefaultView() throws {
        XCTAssertEqual(viewRouter.currentView, ViewRouter.View.peopleView)
    }
    
    func test_viewRouter_routingBetweenViews() throws {
        viewRouter.routeTo(view: .detailedInfoView)
        
        XCTAssertEqual(viewRouter.currentView, ViewRouter.View.detailedInfoView)
        
        viewRouter.routeTo(view: .peopleView)
        
        XCTAssertEqual(viewRouter.currentView, ViewRouter.View.peopleView)
    }

}
