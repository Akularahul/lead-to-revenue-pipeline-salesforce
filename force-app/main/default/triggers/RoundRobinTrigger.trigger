trigger RoundRobinTrigger on Lead_Master__c (before update) {

    if (Trigger.isBefore && Trigger.isUpdate) {
        RoundRobinAssignment.assignOwnersForMql(Trigger.new, Trigger.oldMap);
    }
}