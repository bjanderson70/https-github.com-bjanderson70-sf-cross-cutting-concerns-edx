/**
 * @description if the site is configured to use accc_ApexPublishEventLogger,
 * log events are published and caught by this trigger. Upon arrival, the
 * accc_Log__e object is translated to a Application__c and inserted. Note, the
 * insert does not provide a UoW (Unit of Work Pattern) TBD.
 *
 * @param handle insert of accc_Log__e events
 */
trigger accc_LogPlatformEventTrigger on accc_Log__e (after insert) {
	accc_ApexPlatformEventDispatcher.run(new accc_LogPlatformEventHandler());
} // end of accc_LogPlatformEventTrigger