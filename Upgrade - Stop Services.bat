echo

net stop RSAArcherIndexingService
net stop Enterprise Library Semantic Logging Service
net stop RSAArcherJobEngine
net stop RSAArcherLDAPSynchronizationService
net stop RSAArcherQueuingService
net stop RSAArcherWorkflowService
net stop RSAArcherCachingService

iisreset /stop