trigger LeadMasterTrigger on Lead_Master__c (before insert, before update) {
    LeadScoringHandler.applyScoreAndStatus(Trigger.new, Trigger.isUpdate ? Trigger.oldMap : null);
}
