public class RoundRobinAssignment {

    // IMPORTANT:
    // This method assigns OwnerId when a Lead becomes MQL.
    public static void assignOwnersForMql(List<Lead_Master__c> newList, Map<Id, Lead_Master__c> oldMap) {

        // 1) Identify only records that JUST became MQL
        List<Lead_Master__c> toAssign = new List<Lead_Master__c>();
        for (Lead_Master__c lm : newList) {
            String oldStatus = (oldMap != null && oldMap.containsKey(lm.Id))
                ? oldMap.get(lm.Id).Status__c
                : null;

            if (lm.Status__c == 'MQL' && oldStatus != 'MQL') {
                toAssign.add(lm);
            }
        }

        if (toAssign.isEmpty()) return;

        // 2) Get your active Standard Users (the reps you created)
        // This keeps it dynamic so you don’t hardcode userIds.
        List<User> reps = [
            SELECT Id, Name
            FROM User
            WHERE IsActive = true
              AND Profile.Name = 'Standard User'
            ORDER BY CreatedDate ASC
            LIMIT 10
        ];

        if (reps.isEmpty()) return;

        // 3) Read the Assignment Control record (persistent round robin state)
        Assignment_Control__c ctrl = [
            SELECT Id, Last_Assigned_Index__c
            FROM Assignment_Control__c
            ORDER BY CreatedDate ASC
            LIMIT 1
        ];

        Integer lastIndex = (ctrl.Last_Assigned_Index__c == null) ? -1 : Integer.valueOf(ctrl.Last_Assigned_Index__c);

        // 4) Assign in round-robin order, updating the stored index
        Integer nextIndex = lastIndex;

        for (Lead_Master__c lm : toAssign) {
            nextIndex++;
            if (nextIndex >= reps.size()) nextIndex = 0;

            lm.OwnerId = reps[nextIndex].Id;
        }

        // 5) Persist the new last index
        ctrl.Last_Assigned_Index__c = nextIndex;
        update ctrl;
    }
}