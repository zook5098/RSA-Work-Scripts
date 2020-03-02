echo

net start RSAArcherConfigurationService
net start RSAArcherJobEngine
net start RSAArcherLDAPSynchronizationService
net start RSAArcherQueuingService
net start RSAArcherWorkflowService

iisreset /start