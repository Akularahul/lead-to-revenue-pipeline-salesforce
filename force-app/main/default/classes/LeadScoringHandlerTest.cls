@IsTest
private class LeadScoringHandlerTest {

    @IsTest
    static void testLeadScoringSetsMql() {
        Lead_Master__c lm = new Lead_Master__c(
            Company__c = 'Big Company Pvt Ltd',
            Email__c = 'test@example.com',
            Lead_Source__c = 'Referral',
            Status__c = 'New'
        );

        Test.startTest();
        insert lm;
        Test.stopTest();

        Lead_Master__c insertedLead = [
            SELECT Lead_Score__c, Status__c
            FROM Lead_Master__c
            WHERE Id = :lm.Id
        ];

        System.assert(insertedLead.Lead_Score__c >= 70, 'Score should be >= 70 for Referral + Email + Company');
        System.assertEquals('MQL', insertedLead.Status__c, 'Status should become MQL');
    }

    @IsTest
    static void testLeadScoringDoesNotOverrideQualified() {
        Lead_Master__c lm = new Lead_Master__c(
            Company__c = 'Small',
            Email__c = 'q@example.com',
            Lead_Source__c = 'Website',
            Status__c = 'Qualified'
        );

        Test.startTest();
        insert lm;
        Test.stopTest();

        Lead_Master__c insertedLead = [
            SELECT Lead_Score__c, Status__c
            FROM Lead_Master__c
            WHERE Id = :lm.Id
        ];

        System.assertEquals('Qualified', insertedLead.Status__c, 'Should not override Qualified status');
    }
}
