echo

sc delete RSAArcherConfigurationService
sc delete RSAArcherIndexingService
sc delete Enterprise Library Semantic Logging Service
sc delete RSAArcherJobEngine
sc delete RSAArcherLDAPSynchronizationService
sc delete RSAArcherQueuingService
sc delete RSAArcherWorkflowService
sc delete RSAArcherCachingService

pause