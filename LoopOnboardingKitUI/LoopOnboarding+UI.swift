//
//  LoopOnboarding+UI.swift
//  LoopOnboardingKitUI
//
//  Created by Darin Krauss on 1/23/21.
//  Copyright © 2021 LoopKit Authors. All rights reserved.
//

import SwiftUI
import HealthKit
import LoopKit
import LoopKitUI
import LoopOnboardingKit

extension LoopOnboarding: OnboardingUI {
    public func onboardingViewController(preferredGlucoseUnit: HKUnit, cgmManagerProvider: CGMManagerProvider, pumpManagerProvider: PumpManagerProvider, serviceProvider: ServiceProvider, colorPalette: LoopUIColorPalette) -> (UIViewController & OnboardingNotifying & CGMManagerCreateNotifying & CGMManagerOnboardNotifying & PumpManagerCreateNotifying & PumpManagerOnboardNotifying & ServiceCreateNotifying & ServiceOnboardNotifying & CompletionNotifying) {
        return OnboardingUICoordinator(initialTherapySettings: .mockTherapySettings, preferredGlucoseUnit: preferredGlucoseUnit, cgmManagerProvider: cgmManagerProvider, pumpManagerProvider: pumpManagerProvider, serviceProvider: serviceProvider, colorPalette: colorPalette)
    }
}
