trigger AccountsTriggers on Account (before delete) {
	switch on Trigger.operationType {
    	when BEFORE_DELETE {
            AccountHelper.notDeleteAccountsWithContacts(Trigger.old);
    	}
    	when AFTER_UPDATE {
    	}
    }
}