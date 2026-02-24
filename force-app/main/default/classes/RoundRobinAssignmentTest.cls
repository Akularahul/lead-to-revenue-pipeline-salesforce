@isTest
public class RoundRobinAssignmentTest {

    @isTest
    static void testRoundRobinAssignsOwnerOnMql() {

        // Ensure Assignment Control record exists
        if ([SELECT COUNT() FROM Assignment_Control__c] == 0) {
            insert new Assignment_Control__c(Last_Assigned_Index__c = 0);
        }

        // Create 2 leads (DON'T set Name because it's auto-number in your org)
        Lead_Master__c l1 = new Lead_Master__c(
            Email__c='a@test.com',
            Company__c='Company A',
            Status__c='New'
        );

        Lead_Master__c l2 = new Lead_Master__c(
            Email__c='b@test.com',
            Company__c='Company B',
            Status__c='New'
        );

        insert new List<Lead_Master__c>{ l1, l2 };

        // Update status to MQL (fires your round-robin logic)
        l1.Status__c = 'MQL';
        l2.Status__c = 'MQL';
        update new List<Lead_Master__c>{ l1, l2 };

        // Validate owners assigned (not null)
        List<Lead_Master__c> res = [
            SELECT OwnerId, Status__c
            FROM Lead_Master__c
            WHERE Id IN :new List<Id>{ l1.Id, l2.Id }
        ];

        System.assertEquals('MQL', res[0].Status__c);
        System.assertEquals('MQL', res[1].Status__c);

        System.assertNotEquals(null, res[0].OwnerId, 'Owner should be assigned for Lead 1');
        System.assertNotEquals(null, res[1].OwnerId, 'Owner should be assigned for Lead 2');
    }
}