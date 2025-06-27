package com.example.claims;

import org.springframework.stereotype.Component;

@Component
public class ClaimRiskAssessment {

    public ReviewDecision assessAutoClaimRisk(Claim claim, Policy policy, Customer customer) {
        if (claim.getType() == ClaimType.AUTO && claim.getDamageAmount() > 25000) {
            if (policy.getYearsActive() < 3) {
                return ReviewDecision.HIGH_RISK_REVIEW;
            } else if (customer.getClaimCount() > 2) {
                return ReviewDecision.FRAUD_CHECK;
            }
        }
        return ReviewDecision.STANDARD_PROCESSING;
    }
}
