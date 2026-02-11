public class LeadScoringHandler {

    // Call this from trigger for before insert/before update
    public static void applyScoreAndStatus(List<Lead_Master__c> newList, Map<Id, Lead_Master__c> oldMap) {

        for (Lead_Master__c lm : newList) {

            // Skip if record is null
            if (lm == null) continue;

            Integer score = 0;

            // 1) Lead source scoring
            if (lm.Lead_Source__c != null) {
                if (lm.Lead_Source__c == 'Referral') score += 30;
                else if (lm.Lead_Source__c == 'LinkedIn') score += 25;
                else if (lm.Lead_Source__c == 'Website') score += 20;
                else if (lm.Lead_Source__c == 'Event') score += 15;
                else score += 10;
            }

            // 2) Company scoring (simple, realistic)
            if (lm.Company__c != null) {
                Integer len = lm.Company__c.trim().length();
                if (len >= 10) score += 20;
                else if (len >= 5) score += 10;
                else score += 5;
            }

            // 3) Email present
            if (lm.Email__c != null) {
                score += 20;
            }

            // Cap score at 100
            if (score > 100) score = 100;

            lm.Lead_Score__c = score;

            // Auto-set status to MQL if score >= 70 (but don't override Qualified/Disqualified)
            if (lm.Status__c == null || (lm.Status__c != 'Qualified' && lm.Status__c != 'Disqualified')) {
                if (score >= 70) lm.Status__c = 'MQL';
                else if (lm.Status__c == null) lm.Status__c = 'New';
            }
        }
    }
}
