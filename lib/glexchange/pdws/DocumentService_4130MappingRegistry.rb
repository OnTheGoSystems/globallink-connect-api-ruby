require 'glexchange/pdws/DocumentService_4130.rb'
require 'soap/mapping'
module Glexchange
	module Pdws
		module DocumentMappingRegistry
		  DocumentEncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
		  DocumentLiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
		  NsImplServicesServiceWsProjectdirectorGs4trOrg = "http://impl.services.service.ws.projectdirector.gs4tr.org"
		  NsXmlmime = "http://www.w3.org/2005/05/xmlmime"
		  NsXsd = "http://dto.model.projectdirector.gs4tr.org/xsd"

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::Notification,
			:schema_type => XSD::QName.new(NsXsd, "Notification"),
			:schema_element => [
			  ["errorMessage", "SOAP::SOAPString"],
			  ["notificationDate", "Glexchange::Pdws::Date"],
			  ["notificationPriority", "Glexchange::Pdws::NotificationPriority"],
			  ["notificationText", "SOAP::SOAPString"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::NotificationPriority,
			:schema_type => XSD::QName.new(NsXsd, "NotificationPriority"),
			:schema_element => [
			  ["notificationPriorityName", "SOAP::SOAPString"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::Announcement,
			:schema_type => XSD::QName.new(NsXsd, "Announcement"),
			:schema_element => [
			  ["announcementText", "SOAP::SOAPString"],
			  ["date", "Glexchange::Pdws::Date"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::ContentMonitorPluginInfo,
			:schema_type => XSD::QName.new(NsXsd, "ContentMonitorPluginInfo"),
			:schema_element => [
			  ["pluginId", "SOAP::SOAPString"],
			  ["pluginName", "SOAP::SOAPString"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::Date,
			:schema_type => XSD::QName.new(NsXsd, "Date"),
			:schema_element => [
			  ["critical", "SOAP::SOAPBoolean"],
			  ["date", "SOAP::SOAPLong"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::Document,
			:schema_type => XSD::QName.new(NsXsd, "Document"),
			:schema_element => [
			  ["documentGroup", "Glexchange::Pdws::DocumentGroup"],
			  ["documentInfo", "Glexchange::Pdws::DocumentInfo"],
			  ["id", "SOAP::SOAPString"],
			  ["sourceLanguage", "Glexchange::Pdws::Language"],
			  ["sourceWordCount", "SOAP::SOAPInt"],
			  ["ticket", "SOAP::SOAPString"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::DocumentGroup,
			:schema_type => XSD::QName.new(NsXsd, "DocumentGroup"),
			:schema_element => [
			  ["classifier", "SOAP::SOAPString"],
			  ["documents", "Glexchange::Pdws::Document[]", [0, nil]],
			  ["mimeType", "SOAP::SOAPString"],
			  ["submission", "Glexchange::Pdws::Submission"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::DocumentInfo,
			:schema_type => XSD::QName.new(NsXsd, "DocumentInfo"),
			:schema_element => [
			  ["childDocumentInfos", "Glexchange::Pdws::DocumentInfo[]", [0, nil]],
			  ["clientIdentifier", "SOAP::SOAPString"],
			  ["dateRequested", "Glexchange::Pdws::Date"],
			  ["instructions", "SOAP::SOAPString"],
			  ["metadata", "Glexchange::Pdws::Metadata[]", [0, nil]],
			  ["name", "SOAP::SOAPString"],
			  ["projectTicket", "SOAP::SOAPString"],
			  ["sourceLocale", "SOAP::SOAPString"],
			  ["submissionTicket", "SOAP::SOAPString"],
			  ["targetInfos", "Glexchange::Pdws::TargetInfo[]", [0, nil]],
			  ["wordCount", "SOAP::SOAPInt"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::DocumentPagedList,
			:schema_type => XSD::QName.new(NsXsd, "DocumentPagedList"),
			:schema_element => [
			  ["elements", "Glexchange::Pdws::Document[]", [0, nil]],
			  ["pagedListInfo", "Glexchange::Pdws::PagedListInfo"],
			  ["tasks", "Glexchange::Pdws::Task[]", [0, nil]],
			  ["totalCount", "SOAP::SOAPLong"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::DocumentSearchRequest,
			:schema_type => XSD::QName.new(NsXsd, "DocumentSearchRequest"),
			:schema_element => [
			  ["projectTickets", "SOAP::SOAPString[]", [0, nil]],
			  ["sourceLocaleId", "SOAP::SOAPString"],
			  ["submissionTicket", "SOAP::SOAPString"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::DocumentTicket,
			:schema_type => XSD::QName.new(NsXsd, "DocumentTicket"),
			:schema_element => [
			  ["submissionTicket", "SOAP::SOAPString"],
			  ["ticketId", "SOAP::SOAPString"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::EntityTypeEnum,
			:schema_type => XSD::QName.new(NsXsd, "EntityTypeEnum"),
			:schema_element => [
			  ["name", "SOAP::SOAPString"],
			  ["value", "SOAP::SOAPInt"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::FileFormatProfile,
			:schema_type => XSD::QName.new(NsXsd, "FileFormatProfile"),
			:schema_element => [
			  ["configurable", "SOAP::SOAPBoolean"],
			  ["isDefault", "SOAP::SOAPBoolean"],
			  ["mimeType", "SOAP::SOAPString"],
			  ["pluginId", "SOAP::SOAPString"],
			  ["pluginName", "SOAP::SOAPString"],
			  ["profileName", "SOAP::SOAPString"],
			  ["targetWorkflowDefinition", "Glexchange::Pdws::WorkflowDefinition"],
			  ["ticket", "SOAP::SOAPString"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::FileFormatProgressData,
			:schema_type => XSD::QName.new(NsXsd, "FileFormatProgressData"),
			:schema_element => [
			  ["dateCompleted", "Glexchange::Pdws::Date"],
			  ["fileCount", "SOAP::SOAPLong"],
			  ["fileFormatName", "SOAP::SOAPString"],
			  ["fileProgressData", "Glexchange::Pdws::FileProgressData"],
			  ["jobTicket", "SOAP::SOAPString"],
			  ["workflowDueDate", "Glexchange::Pdws::Date"],
			  ["workflowStatus", "SOAP::SOAPString"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::FileProgressData,
			:schema_type => XSD::QName.new(NsXsd, "FileProgressData"),
			:schema_element => [
			  ["numberOfAvailableFiles", "SOAP::SOAPInt"],
			  ["numberOfCanceledFiles", "SOAP::SOAPInt"],
			  ["numberOfCompletedFiles", "SOAP::SOAPInt"],
			  ["numberOfDeliveredFiles", "SOAP::SOAPInt"],
			  ["numberOfFailedFiles", "SOAP::SOAPInt"],
			  ["numberOfInProcessFiles", "SOAP::SOAPInt"],
			  ["overallProgressPercent", "SOAP::SOAPInt"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::FuzzyTmStatistics,
			:schema_type => XSD::QName.new(NsXsd, "FuzzyTmStatistics"),
			:schema_element => [
			  ["fuzzyName", "SOAP::SOAPString"],
			  ["wordCount", "SOAP::SOAPInt"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::ItemFolderEnum,
			:schema_type => XSD::QName.new(NsXsd, "ItemFolderEnum"),
			:schema_element => [
			  ["value", "SOAP::SOAPInt"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::ItemStatusEnum,
			:schema_type => XSD::QName.new(NsXsd, "ItemStatusEnum"),
			:schema_element => [
			  ["name", "SOAP::SOAPString"],
			  ["value", "SOAP::SOAPInt"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::Metadata,
			:schema_type => XSD::QName.new(NsXsd, "Metadata"),
			:schema_element => [
			  ["key", "SOAP::SOAPString"],
			  ["value", "SOAP::SOAPString"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::Language,
			:schema_type => XSD::QName.new(NsXsd, "Language"),
			:schema_element => [
			  ["locale", "SOAP::SOAPString"],
			  ["value", "SOAP::SOAPString"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::LanguageDirection,
			:schema_type => XSD::QName.new(NsXsd, "LanguageDirection"),
			:schema_element => [
			  ["sourceLanguage", "Glexchange::Pdws::Language"],
			  ["targetLanguage", "Glexchange::Pdws::Language"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::LanguageDirectionModel,
			:schema_type => XSD::QName.new(NsXsd, "LanguageDirectionModel"),
			:schema_element => [
			  ["dateCompleted", "Glexchange::Pdws::Date"],
			  ["fileCount", "SOAP::SOAPLong"],
			  ["fileFormatProgressData", "Glexchange::Pdws::FileFormatProgressData[]", [0, nil]],
			  ["fileProgress", "Glexchange::Pdws::FileProgressData"],
			  ["sourceLanguage", "Glexchange::Pdws::Language"],
			  ["targetLanguage", "Glexchange::Pdws::Language"],
			  ["workflowDueDate", "Glexchange::Pdws::Date"],
			  ["workflowStatus", "SOAP::SOAPString"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::Organization,
			:schema_type => XSD::QName.new(NsXsd, "Organization"),
			:schema_element => [
			  ["availableTasks", "SOAP::SOAPInteger"],
			  ["parentOrganization", "Glexchange::Pdws::Organization"],
			  ["organizationInfo", "Glexchange::Pdws::OrganizationInfo"],
			  ["tasks", "Glexchange::Pdws::Task[]", [0, nil]],
			  ["ticket", "SOAP::SOAPString"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::OrganizationInfo,
			:schema_type => XSD::QName.new(NsXsd, "OrganizationInfo"),
			:schema_element => [
			  ["name", "SOAP::SOAPString"],
			  ["ticket", "SOAP::SOAPString"],
			  ["currencyCode", "SOAP::SOAPString"],
			  ["domain", "SOAP::SOAPString"],
			  ["theme", "SOAP::SOAPString"],
			  ["enabled", "SOAP::SOAPBoolean"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::PagedListInfo,
			:schema_type => XSD::QName.new(NsXsd, "PagedListInfo"),
			:schema_element => [
			  ["index", "SOAP::SOAPInt"],
			  ["indexesSize", "SOAP::SOAPInt"],
			  ["size", "SOAP::SOAPInt"],
			  ["sortDirection", "SOAP::SOAPString"],
			  ["sortProperty", "SOAP::SOAPString"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::Phase,
			:schema_type => XSD::QName.new(NsXsd, "Phase"),
			:schema_element => [
			  ["dateEnded", "Glexchange::Pdws::Date"],
			  ["dueDate", "Glexchange::Pdws::Date"],
			  ["name", "SOAP::SOAPString"],
			  ["status", "Glexchange::Pdws::ItemStatusEnum"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::PreviewResult,
			:schema_type => XSD::QName.new(NsXsd, "PreviewResult"),
			:schema_element => [
			  ["message", "SOAP::SOAPString"],
			  ["repositoryItem", "Glexchange::Pdws::RepositoryItem"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::Priority,
			:schema_type => XSD::QName.new(NsXsd, "Priority"),
			:schema_element => [
			  ["name", "SOAP::SOAPString"],
			  ["value", "SOAP::SOAPInt"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::Project,
			:schema_type => XSD::QName.new(NsXsd, "Project"),
			:schema_element => [
			  ["announcements", "Glexchange::Pdws::Announcement[]", [0, nil]],
			  ["contentMonitorPluginInfo", "Glexchange::Pdws::ContentMonitorPluginInfo"],
			  ["defaultTargetWorkflowDefinition", "Glexchange::Pdws::WorkflowDefinition"],
			  ["defaultTargetWorkflowDefinitionTicket", "SOAP::SOAPString"],
			  ["fileFormatProfiles", "Glexchange::Pdws::FileFormatProfile[]", [0, nil]],
			  ["includeSubmissionNameInLocalizationKit", "SOAP::SOAPBoolean[]", [0, nil]],
			  ["metadata", "Glexchange::Pdws::Metadata[]", [0, nil]],
			  ["organizationName", "SOAP::SOAPString"],
			  ["projectCustomFieldConfiguration", "Glexchange::Pdws::ProjectCustomFieldConfiguration[]", [0, nil]],
			  ["projectInfo", "Glexchange::Pdws::ProjectInfo"],
			  ["projectLanguageDirections", "Glexchange::Pdws::ProjectLanguageDirection[]", [0, nil]],
			  ["ticket", "SOAP::SOAPString"],
			  ["workflowDefinitions", "Glexchange::Pdws::WorkflowDefinition[]", [0, nil]]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::ProjectInfo,
			:schema_type => XSD::QName.new(NsXsd, "ProjectInfo"),
			:schema_element => [
			  ["clientIdentifier", "SOAP::SOAPString"],
			  ["defaultJobWorkflowDefinitionTicket", "SOAP::SOAPString"],
			  ["defaultSubmissionWorkflowDefinitionTicket", "SOAP::SOAPString"],
			  ["defaultTargetWorkflowDefinitionTicket", "SOAP::SOAPString"],
			  ["enabled", "SOAP::SOAPBoolean"],
			  ["name", "SOAP::SOAPString"],
			  ["shortCode", "SOAP::SOAPString"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::ProjectLanguage,
			:schema_type => XSD::QName.new(NsXsd, "ProjectLanguage"),
			:schema_element => [
			  ["customLocaleCode", "SOAP::SOAPString"],
			  ["localeCode", "SOAP::SOAPString"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::ProjectLanguageDirection,
			:schema_type => XSD::QName.new(NsXsd, "ProjectLanguageDirection"),
			:schema_element => [
			  ["sourceLanguage", "Glexchange::Pdws::Language"],
			  ["targetLanguage", "Glexchange::Pdws::Language"],
			  ["default", "SOAP::SOAPBoolean"],
			  ["frequent", "SOAP::SOAPBoolean"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::ProjectAClient,
			:schema_type => XSD::QName.new(NsXsd, "ProjectAClient"),
			:schema_element => [
			  ["enabled", "SOAP::SOAPBoolean"],
			  ["name", "SOAP::SOAPString"],
			  ["parentOrganization", "Glexchange::Pdws::Organization"],
			  ["ticket", "SOAP::SOAPString"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::RepositoryItem,
			:schema_type => XSD::QName.new(NsXsd, "RepositoryItem"),
			:schema_element => [
			  ["data", "Glexchange::Pdws::Base64Binary"],
			  ["resourceInfo", "Glexchange::Pdws::ResourceInfo"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::ResourceInfo,
			:schema_type => XSD::QName.new(NsXsd, "ResourceInfo"),
			:schema_element => [
			  ["classifier", "SOAP::SOAPString"],
			  ["clientIdentifier", "SOAP::SOAPString"],
			  ["description", "SOAP::SOAPString"],
			  ["encoding", "SOAP::SOAPString"],
			  ["md5Checksum", "SOAP::SOAPString"],
			  ["mimeType", "SOAP::SOAPString"],
			  ["name", "SOAP::SOAPString"],
			  ["path", "SOAP::SOAPString"],
			  ["resourceInfoId", "SOAP::SOAPLong"],
			  ["size", "SOAP::SOAPLong"],
			  ["type", "Glexchange::Pdws::ResourceType"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::ResourceType,
			:schema_type => XSD::QName.new(NsXsd, "ResourceType"),
			:schema_element => [
			  ["value", "SOAP::SOAPInt"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::Submission,
			:schema_type => XSD::QName.new(NsXsd, "Submission"),
			:schema_element => [
			  ["alerts", "Glexchange::Pdws::Notification[]", [0, nil]],
			  ["availableTasks", "SOAP::SOAPInt"],
			  ["dateArchived", "Glexchange::Pdws::Date"],
			  ["dateCompleted", "Glexchange::Pdws::Date"],
			  ["dateCreated", "Glexchange::Pdws::Date"],
			  ["dateEstimated", "Glexchange::Pdws::Date"],
			  ["documents", "Glexchange::Pdws::Document[]", [0, nil]],
			  ["dueDate", "Glexchange::Pdws::Date"],
			  ["id", "SOAP::SOAPString"],
			  ["owner", "SOAP::SOAPString"],
			  ["project", "Glexchange::Pdws::Project"],
			  ["status", "Glexchange::Pdws::ItemStatusEnum"],
			  ["submissionInfo", "Glexchange::Pdws::SubmissionInfo"],
			  ["submitterFullNames", "SOAP::SOAPString[]", [0, nil]],
			  ["ticket", "SOAP::SOAPString"],
			  ["workflowDefinition", "Glexchange::Pdws::WorkflowDefinition"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::SubmissionInfo,
			:schema_type => XSD::QName.new(NsXsd, "SubmissionInfo"),
			:schema_element => [
			  ["additionalCosts", "SOAP::SOAPString"],
			  ["autoStartChilds", "SOAP::SOAPBoolean"],
			  ["claimScope", "Glexchange::Pdws::ClaimScopeEnum"],
			  ["clientIdentifier", "SOAP::SOAPString"],
			  ["dateRequested", "Glexchange::Pdws::Date"],
			  ["internalNotes", "SOAP::SOAPString"],
			  ["metadata", "Glexchange::Pdws::Metadata[]", [0, nil]],
			  ["name", "SOAP::SOAPString"],
			  ["officeName", "SOAP::SOAPString"],
			  ["paClientTicket", "SOAP::SOAPString"],
			  ["paJobNumber", "SOAP::SOAPString"],
			  ["priority", "Glexchange::Pdws::Priority"],
			  ["projectTicket", "SOAP::SOAPString"],
			  ["revenue", "SOAP::SOAPDouble"],
			  ["submissionBackground", "SOAP::SOAPString"],
			  ["submissionCustomFields", "Glexchange::Pdws::SubmissionCustomFields[]", [0, nil]],
			  ["submitters", "SOAP::SOAPString[]", [0, nil]],
			  ["workflowDefinitionTicket", "SOAP::SOAPString"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::SubmissionPagedList,
			:schema_type => XSD::QName.new(NsXsd, "SubmissionPagedList"),
			:schema_element => [
			  ["elements", "Glexchange::Pdws::Submission[]", [0, nil]],
			  ["pagedListInfo", "Glexchange::Pdws::PagedListInfo"],
			  ["tasks", "Glexchange::Pdws::Task[]", [0, nil]],
			  ["totalCount", "SOAP::SOAPLong"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::SimpleSubmissionSearchModel,
			:schema_type => XSD::QName.new(NsXsd, "SimpleSubmissionSearchModel"),
			:schema_element => [
			  ["alerts", "Glexchange::Pdws::Notification[]", [0, nil]],
			  ["availableTasks", "SOAP::SOAPLong"],
			  ["budgetStatus", "SOAP::SOAPInt"],
			  ["claimScope", "Glexchange::Pdws::ClaimScopeEnum"],
			  ["customFields", "SOAP::SOAPString[]", [0, nil]],
			  ["date", "Glexchange::Pdws::Date"],
			  ["dateArchived", "Glexchange::Pdws::Date"],
			  ["dateCompleted", "Glexchange::Pdws::Date"],
			  ["dateStarted", "Glexchange::Pdws::Date"],
			  ["dueDate", "Glexchange::Pdws::Date"],
			  ["fileCount", "SOAP::SOAPLong"],
			  ["fileProgress", "Glexchange::Pdws::FileProgressData"],
			  ["gate", "SOAP::SOAPByte"],
			  ["id", "SOAP::SOAPString"],
			  ["instructions", "SOAP::SOAPString"],
			  ["officeName", "SOAP::SOAPString"],
			  ["owner", "Glexchange::Pdws::UserData[]", [0, nil]],
			  ["paClientName", "SOAP::SOAPString"],
			  ["parentSubmissionName", "SOAP::SOAPString"],
			  ["parentTicket", "SOAP::SOAPString"],
			  ["pmNotes", "SOAP::SOAPString"],
			  ["priority", "SOAP::SOAPString"],
			  ["projectName", "SOAP::SOAPString"],
			  ["projectTicket", "SOAP::SOAPString"],
			  ["quote", "SOAP::SOAPByte"],
			  ["reserved", "SOAP::SOAPBoolean"],
			  ["sourceLanguage", "SOAP::SOAPString"],
			  ["status", "Glexchange::Pdws::ItemStatusEnum"],
			  ["submissionBackground", "SOAP::SOAPString"],
			  ["submissionName", "SOAP::SOAPString"],
			  ["submitterFullName", "Glexchange::Pdws::UserData[]", [0, nil]],
			  ["ticket", "SOAP::SOAPString"],
			  ["wordCount", "SOAP::SOAPLong"],
			  ["workflowDueDate", "Glexchange::Pdws::Date"],
			  ["workflowStatus", "SOAP::SOAPString"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::SubmissionSearchModelPagedList,
			:schema_type => XSD::QName.new(NsXsd, "SubmissionSearchModelPagedList"),
			:schema_element => [
			  ["elements", "Glexchange::Pdws::SimpleSubmissionSearchModel[]", [0, nil]],
			  ["pagedListInfo", "Glexchange::Pdws::PagedListInfo"],
			  ["tasks", "Glexchange::Pdws::Task[]", [0, nil]],
			  ["totalCount", "SOAP::SOAPLong"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::SubmissionSearchRequest,
			:schema_type => XSD::QName.new(NsXsd, "SubmissionSearchRequest"),
			:schema_element => [
			  ["folder", "Glexchange::Pdws::ItemFolderEnum"],
			  ["projectTickets", "SOAP::SOAPString[]", [0, nil]],
			  ["submissionDate", "Glexchange::Pdws::Date"],
			  ["submissionDueDate", "Glexchange::Pdws::Date"],
			  ["submissionName", "SOAP::SOAPString"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::Target,
			:schema_type => XSD::QName.new(NsXsd, "Target"),
			:schema_element => [
			  ["availableTasks", "SOAP::SOAPLong"],
			  ["dateCompleted", "Glexchange::Pdws::Date"],
			  ["dateCreated", "Glexchange::Pdws::Date"],
			  ["dateEstimated", "Glexchange::Pdws::Date"],
			  ["document", "Glexchange::Pdws::Document"],
			  ["downloadThresholdTimeStamp", "Glexchange::Pdws::Date"],
			  ["dueDate", "Glexchange::Pdws::Date"],
			  ["fileName", "SOAP::SOAPString"],
			  ["id", "SOAP::SOAPString"],
			  ["phases", "Glexchange::Pdws::Phase[]", [0, nil]],
			  ["refPhase", "Glexchange::Pdws::Phase"],
			  ["sourceLanguage", "Glexchange::Pdws::Language"],
			  ["sourceWordCount", "SOAP::SOAPInt"],
			  ["status", "Glexchange::Pdws::ItemStatusEnum"],
			  ["targetInfo", "Glexchange::Pdws::TargetInfo"],
			  ["targetLanguage", "Glexchange::Pdws::Language"],
			  ["targetWordCount", "SOAP::SOAPInt"],
			  ["ticket", "SOAP::SOAPString"],
			  ["tmStatistics", "Glexchange::Pdws::TmStatistics"],
			  ["workflowDefinition", "Glexchange::Pdws::WorkflowDefinition"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::TargetInfo,
			:schema_type => XSD::QName.new(NsXsd, "TargetInfo"),
			:schema_element => [
			  ["dateRequested", "Glexchange::Pdws::Date"],
			  ["encoding", "SOAP::SOAPString"],
			  ["instructions", "SOAP::SOAPString"],
			  ["metadata", "Glexchange::Pdws::Metadata[]", [0, nil]],
			  ["priority", "Glexchange::Pdws::Priority"],
			  ["requestedDueDate", "SOAP::SOAPLong"],
			  ["targetLocale", "SOAP::SOAPString"],
			  ["workflowDefinitionTicket", "SOAP::SOAPString"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::TargetPagedList,
			:schema_type => XSD::QName.new(NsXsd, "TargetPagedList"),
			:schema_element => [
			  ["elements", "Glexchange::Pdws::Target[]", [0, nil]],
			  ["pagedListInfo", "Glexchange::Pdws::PagedListInfo"],
			  ["tasks", "Glexchange::Pdws::Task[]", [0, nil]],
			  ["totalCount", "SOAP::SOAPLong"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::TargetSearchRequest,
			:schema_type => XSD::QName.new(NsXsd, "TargetSearchRequest"),
			:schema_element => [
			  ["dateCreated", "Glexchange::Pdws::Date"],
			  ["folder", "Glexchange::Pdws::ItemFolderEnum"],
			  ["projectTickets", "SOAP::SOAPString[]", [0, nil]],
			  ["sourceLocaleId", "SOAP::SOAPString"],
			  ["submissionTicket", "SOAP::SOAPString"],
			  ["targetLocaleId", "SOAP::SOAPString"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::Task,
			:schema_type => XSD::QName.new(NsXsd, "Task"),
			:schema_element => [
			  ["groupName", "SOAP::SOAPString"],
			  ["selectStyle", "SOAP::SOAPInt"],
			  ["taskId", "SOAP::SOAPInt"],
			  ["taskName", "SOAP::SOAPString"],
			  ["weight", "SOAP::SOAPInt"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::TmStatistics,
			:schema_type => XSD::QName.new(NsXsd, "TmStatistics"),
			:schema_element => [
			  ["fuzzyRepetitionsWordCount1", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyRepetitionsWordCount10", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyRepetitionsWordCount2", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyRepetitionsWordCount3", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyRepetitionsWordCount4", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyRepetitionsWordCount5", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyRepetitionsWordCount6", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyRepetitionsWordCount7", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyRepetitionsWordCount8", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyRepetitionsWordCount9", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyWordCount1", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyWordCount10", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyWordCount2", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyWordCount3", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyWordCount4", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyWordCount5", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyWordCount6", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyWordCount7", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyWordCount8", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyWordCount9", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["goldWordCount", "SOAP::SOAPInt"],
			  ["noMatchWordCount", "SOAP::SOAPInt"],
			  ["oneHundredMatchWordCount", "SOAP::SOAPInt"],
			  ["repetitionWordCount", "SOAP::SOAPInt"],
			  ["totalWordCount", "SOAP::SOAPInt"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::WorkflowDefinition,
			:schema_type => XSD::QName.new(NsXsd, "WorkflowDefinition"),
			:schema_element => [
			  ["description", "SOAP::SOAPString"],
			  ["name", "SOAP::SOAPString"],
			  ["ticket", "SOAP::SOAPString"],
			  ["type", "Glexchange::Pdws::EntityTypeEnum"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::UserData,
			:schema_type => XSD::QName.new(NsXsd, "UserData"),
			:schema_element => [
			  ["email", "SOAP::SOAPString"],
			  ["name", "SOAP::SOAPString"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::UserInfo,
			:schema_type => XSD::QName.new(NsXsd, "UserInfo"),
			:schema_element => [
			  ["accountLocked", "SOAP::SOAPBoolean"],
			  ["accountNonExpired", "SOAP::SOAPBoolean"],
			  ["address", "SOAP::SOAPString"],
			  ["autoClaimMultipleTasks", "SOAP::SOAPBoolean"],
			  ["claimMultipleJobTasks", "SOAP::SOAPBoolean"],
			  ["credentialsNonExpired", "SOAP::SOAPBoolean"],
			  ["dateLastLogin", "SOAP::SOAPDateTime"],
			  ["department", "SOAP::SOAPString"],
			  ["emailAddress", "SOAP::SOAPString"],
			  ["emailNotification", "SOAP::SOAPBoolean"],
			  ["enabled", "SOAP::SOAPBoolean"],
			  ["fax", "SOAP::SOAPString"],
			  ["firstName", "SOAP::SOAPString"],
			  ["lastName", "SOAP::SOAPString"],
			  ["password", "SOAP::SOAPString"],
			  ["phone1", "SOAP::SOAPString"],
			  ["phone2", "SOAP::SOAPString"],
			  ["timeZone", "SOAP::SOAPString"],
			  ["userName", "SOAP::SOAPString"],
			  ["userType", "SOAP::SOAPString"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::TiUserInfo,
			:schema_type => XSD::QName.new(NsXsd, "TiUserInfo"),
			:schema_element => [
			  ["languageDirections", "Glexchange::Pdws::LanguageDirection[]", [0, nil]],
			  ["organizationId", "SOAP::SOAPLong"],
			  ["projectRoles", "SOAP::SOAPString[]", [0, nil]],
			  ["projectTicket", "SOAP::SOAPString[]", [0, nil]],
			  ["systemRoles", "SOAP::SOAPString[]", [0, nil]],
			  ["vendorId", "SOAP::SOAPLong"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::ClaimScopeEnum,
			:schema_type => XSD::QName.new(NsXsd, "ClaimScopeEnum"),
			:schema_element => [
			  ["name", "SOAP::SOAPString"],
			  ["value", "SOAP::SOAPInt"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::ProjectCustomFieldConfiguration,
			:schema_type => XSD::QName.new(NsXsd, "ProjectCustomFieldConfiguration"),
			:schema_element => [
			  ["description", "SOAP::SOAPString"],
			  ["mandatory", "SOAP::SOAPBoolean"],
			  ["name", "SOAP::SOAPString"],
			  ["type", "SOAP::SOAPString"],
			  ["values", "SOAP::SOAPString"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::SubmissionCustomFields,
			:schema_type => XSD::QName.new(NsXsd, "SubmissionCustomFields"),
			:schema_element => [
			  ["fieldName", "SOAP::SOAPString"],
			  ["fieldValue", "SOAP::SOAPString"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::UserProfile,
			:schema_type => XSD::QName.new(NsXsd, "UserProfile"),
			:schema_element => [
			  ["availableTasks", "SOAP::SOAPInt"],
			  ["organizationName", "SOAP::SOAPString"],
			  ["systemRoles", "Glexchange::Pdws::Role[]", [0, nil]],
			  ["tasks", "Glexchange::Pdws::Task[]", [0, nil]],
			  ["ticket", "SOAP::SOAPString"],
			  ["userInfo", "Glexchange::Pdws::UserInfo"],
			  ["vendorName", "SOAP::SOAPString"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::Role,
			:schema_type => XSD::QName.new(NsXsd, "Role"),
			:schema_element => [
			  ["policies", "Glexchange::Pdws::Policy[]", [0, nil]],
			  ["roleId", "SOAP::SOAPString"],
			  ["roleType", "Glexchange::Pdws::RoleTypeEnum"],
			  ["tasks", "Glexchange::Pdws::Task[]", [0, nil]],
			  ["ticket", "SOAP::SOAPString"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::RoleTypeEnum,
			:schema_type => XSD::QName.new(NsXsd, "RoleTypeEnum"),
			:schema_element => [
			  ["value", "SOAP::SOAPInt"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::Policy,
			:schema_type => XSD::QName.new(NsXsd, "Policy"),
			:schema_element => [
			  ["category", "SOAP::SOAPString"],
			  ["policyId", "SOAP::SOAPString"],
			  ["policyType", "Glexchange::Pdws::RoleTypeEnum"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::LanguageWorkflowInfo,
			:schema_type => XSD::QName.new(NsXsd, "LanguageWorkflowInfo"),
			:schema_element => [
			  ["sourceLanguage", "Glexchange::Pdws::Language"],
			  ["targetLanguage", "Glexchange::Pdws::Language"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::BatchWorkflowInfo,
			:schema_type => XSD::QName.new(NsXsd, "BatchWorkflowInfo"),
			:schema_element => [
			  ["batchName", "SOAP::SOAPString"],
			  ["languageWorkflowInfo", "Glexchange::Pdws::LanguageWorkflowInfo"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::TargetWorkflowInfo,
			:schema_type => XSD::QName.new(NsXsd, "TargetWorkflowInfo"),
			:schema_element => [
			  ["batchName", "SOAP::SOAPString"],
			  ["documentName", "SOAP::SOAPString"],
			  ["fileName", "SOAP::SOAPString"],
			  ["sourceLanguage", "Glexchange::Pdws::Language"],
			  ["targetLanguage", "Glexchange::Pdws::Language"],
			  ["targetTicket", "SOAP::SOAPString"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::SubmissionWorkflowInfo,
			:schema_type => XSD::QName.new(NsXsd, "SubmissionWorkflowInfo"),
			:schema_element => [
			  ["batchWorkflowInfos", "Glexchange::Pdws::BatchWorkflowInfo[]", [0, nil]],
			  ["languageWorkflowInfos", "Glexchange::Pdws::LanguageWorkflowInfo[]", [0, nil]],
			  ["phaseName", "SOAP::SOAPString"],
			  ["submissionId", "SOAP::SOAPLong"],
			  ["submissionName", "SOAP::SOAPString"],
			  ["submissionTicket", "SOAP::SOAPString"],
			  ["targetWorkflowInfos", "Glexchange::Pdws::TargetWorkflowInfo[]", [0, nil]]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::WorkflowRequest,
			:schema_type => XSD::QName.new(NsXsd, "WorkflowRequest"),
			:schema_element => [
			  ["batchWorkflowInfos", "Glexchange::Pdws::BatchWorkflowInfo[]", [0, nil]],
			  ["languageWorkflowInfos", "Glexchange::Pdws::LanguageWorkflowInfo[]", [0, nil]],
			  ["phaseName", "SOAP::SOAPString"],
			  ["submissionTicket", "SOAP::SOAPString"],
			  ["targetWorkflowInfos", "Glexchange::Pdws::TargetWorkflowInfo[]", [0, nil]]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::WorkflowRequestTicket,
			:schema_type => XSD::QName.new(NsXsd, "WorkflowRequestTicket"),
			:schema_element => [
			  ["message", "SOAP::SOAPString"],
			  ["processTicket", "SOAP::SOAPString"],
			  ["submissionTicket", "SOAP::SOAPString"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::DownloadActionResult,
			:schema_type => XSD::QName.new(NsXsd, "DownloadActionResult"),
			:schema_element => [
			  ["message", "SOAP::SOAPString"],
			  ["processingFinished", "SOAP::SOAPBoolean"],
			  ["repositoryItem", "Glexchange::Pdws::RepositoryItem"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::UploadActionResult,
			:schema_type => XSD::QName.new(NsXsd, "UploadActionResult"),
			:schema_element => [
			  ["messages", "SOAP::SOAPString[]", [0, nil]],
			  ["processingFinished", "SOAP::SOAPBoolean"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::DownloadCollateralResult,
			:schema_type => XSD::QName.new(NsXsd, "DownloadCollateralResult"),
			:schema_element => [
			  ["errorMessages", "SOAP::SOAPString[]", [0, nil]],
			  ["processingFinished", "SOAP::SOAPBoolean"],
			  ["repositoryItem", "Glexchange::Pdws::RepositoryItem"]
			]
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::Base64Binary,
			:schema_type => XSD::QName.new(NsXmlmime, "base64Binary"),
			:schema_attribute => {
			  XSD::QName.new(NsXmlmime, "contentType") => "SOAP::SOAPString"
			}
		  )

		  DocumentEncodedRegistry.register(
			:class => Glexchange::Pdws::HexBinary,
			:schema_type => XSD::QName.new(NsXmlmime, "hexBinary"),
			:schema_attribute => {
			  XSD::QName.new(NsXmlmime, "contentType") => "SOAP::SOAPString"
			}
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::Notification,
			:schema_type => XSD::QName.new(NsXsd, "Notification"),
			:schema_element => [
			  ["errorMessage", "SOAP::SOAPString"],
			  ["notificationDate", "Glexchange::Pdws::Date"],
			  ["notificationPriority", "Glexchange::Pdws::NotificationPriority"],
			  ["notificationText", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::NotificationPriority,
			:schema_type => XSD::QName.new(NsXsd, "NotificationPriority"),
			:schema_element => [
			  ["notificationPriorityName", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::Announcement,
			:schema_type => XSD::QName.new(NsXsd, "Announcement"),
			:schema_element => [
			  ["announcementText", "SOAP::SOAPString"],
			  ["date", "Glexchange::Pdws::Date"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::ContentMonitorPluginInfo,
			:schema_type => XSD::QName.new(NsXsd, "ContentMonitorPluginInfo"),
			:schema_element => [
			  ["pluginId", "SOAP::SOAPString"],
			  ["pluginName", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::Date,
			:schema_type => XSD::QName.new(NsXsd, "Date"),
			:schema_element => [
			  ["critical", "SOAP::SOAPBoolean"],
			  ["date", "SOAP::SOAPLong"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::Document,
			:schema_type => XSD::QName.new(NsXsd, "Document"),
			:schema_element => [
			  ["documentGroup", "Glexchange::Pdws::DocumentGroup"],
			  ["documentInfo", "Glexchange::Pdws::DocumentInfo"],
			  ["id", "SOAP::SOAPString"],
			  ["sourceLanguage", "Glexchange::Pdws::Language"],
			  ["sourceWordCount", "SOAP::SOAPInt"],
			  ["ticket", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::DocumentGroup,
			:schema_type => XSD::QName.new(NsXsd, "DocumentGroup"),
			:schema_element => [
			  ["classifier", "SOAP::SOAPString"],
			  ["documents", "Glexchange::Pdws::Document[]", [0, nil]],
			  ["mimeType", "SOAP::SOAPString"],
			  ["submission", "Glexchange::Pdws::Submission"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::DocumentInfo,
			:schema_type => XSD::QName.new(NsXsd, "DocumentInfo"),
			:schema_element => [
			  ["childDocumentInfos", "Glexchange::Pdws::DocumentInfo[]", [0, nil]],
			  ["clientIdentifier", "SOAP::SOAPString"],
			  ["dateRequested", "Glexchange::Pdws::Date"],
			  ["instructions", "SOAP::SOAPString"],
			  ["metadata", "Glexchange::Pdws::Metadata[]", [0, nil]],
			  ["name", "SOAP::SOAPString"],
			  ["projectTicket", "SOAP::SOAPString"],
			  ["sourceLocale", "SOAP::SOAPString"],
			  ["submissionTicket", "SOAP::SOAPString"],
			  ["targetInfos", "Glexchange::Pdws::TargetInfo[]", [0, nil]],
			  ["wordCount", "SOAP::SOAPInt"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::DocumentPagedList,
			:schema_type => XSD::QName.new(NsXsd, "DocumentPagedList"),
			:schema_element => [
			  ["elements", "Glexchange::Pdws::Document[]", [0, nil]],
			  ["pagedListInfo", "Glexchange::Pdws::PagedListInfo"],
			  ["tasks", "Glexchange::Pdws::Task[]", [0, nil]],
			  ["totalCount", "SOAP::SOAPLong"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::DocumentSearchRequest,
			:schema_type => XSD::QName.new(NsXsd, "DocumentSearchRequest"),
			:schema_element => [
			  ["projectTickets", "SOAP::SOAPString[]", [0, nil]],
			  ["sourceLocaleId", "SOAP::SOAPString"],
			  ["submissionTicket", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::DocumentTicket,
			:schema_type => XSD::QName.new(NsXsd, "DocumentTicket"),
			:schema_element => [
			  ["submissionTicket", "SOAP::SOAPString"],
			  ["ticketId", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::EntityTypeEnum,
			:schema_type => XSD::QName.new(NsXsd, "EntityTypeEnum"),
			:schema_element => [
			  ["name", "SOAP::SOAPString"],
			  ["value", "SOAP::SOAPInt"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::FileFormatProfile,
			:schema_type => XSD::QName.new(NsXsd, "FileFormatProfile"),
			:schema_element => [
			  ["configurable", "SOAP::SOAPBoolean"],
			  ["isDefault", "SOAP::SOAPBoolean"],
			  ["mimeType", "SOAP::SOAPString"],
			  ["pluginId", "SOAP::SOAPString"],
			  ["pluginName", "SOAP::SOAPString"],
			  ["profileName", "SOAP::SOAPString"],
			  ["targetWorkflowDefinition", "Glexchange::Pdws::WorkflowDefinition"],
			  ["ticket", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::FileFormatProgressData,
			:schema_type => XSD::QName.new(NsXsd, "FileFormatProgressData"),
			:schema_element => [
			  ["dateCompleted", "Glexchange::Pdws::Date"],
			  ["fileCount", "SOAP::SOAPLong"],
			  ["fileFormatName", "SOAP::SOAPString"],
			  ["fileProgressData", "Glexchange::Pdws::FileProgressData"],
			  ["jobTicket", "SOAP::SOAPString"],
			  ["workflowDueDate", "Glexchange::Pdws::Date"],
			  ["workflowStatus", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::FileProgressData,
			:schema_type => XSD::QName.new(NsXsd, "FileProgressData"),
			:schema_element => [
			  ["numberOfAvailableFiles", "SOAP::SOAPInt"],
			  ["numberOfCanceledFiles", "SOAP::SOAPInt"],
			  ["numberOfCompletedFiles", "SOAP::SOAPInt"],
			  ["numberOfDeliveredFiles", "SOAP::SOAPInt"],
			  ["numberOfFailedFiles", "SOAP::SOAPInt"],
			  ["numberOfInProcessFiles", "SOAP::SOAPInt"],
			  ["overallProgressPercent", "SOAP::SOAPInt"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::FuzzyTmStatistics,
			:schema_type => XSD::QName.new(NsXsd, "FuzzyTmStatistics"),
			:schema_element => [
			  ["fuzzyName", "SOAP::SOAPString"],
			  ["wordCount", "SOAP::SOAPInt"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::ItemFolderEnum,
			:schema_type => XSD::QName.new(NsXsd, "ItemFolderEnum"),
			:schema_element => [
			  ["value", "SOAP::SOAPInt"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::ItemStatusEnum,
			:schema_type => XSD::QName.new(NsXsd, "ItemStatusEnum"),
			:schema_element => [
			  ["name", "SOAP::SOAPString"],
			  ["value", "SOAP::SOAPInt"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::Metadata,
			:schema_type => XSD::QName.new(NsXsd, "Metadata"),
			:schema_element => [
			  ["key", "SOAP::SOAPString"],
			  ["value", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::Language,
			:schema_type => XSD::QName.new(NsXsd, "Language"),
			:schema_element => [
			  ["locale", "SOAP::SOAPString"],
			  ["value", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::LanguageDirection,
			:schema_type => XSD::QName.new(NsXsd, "LanguageDirection"),
			:schema_element => [
			  ["sourceLanguage", "Glexchange::Pdws::Language"],
			  ["targetLanguage", "Glexchange::Pdws::Language"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::LanguageDirectionModel,
			:schema_type => XSD::QName.new(NsXsd, "LanguageDirectionModel"),
			:schema_element => [
			  ["dateCompleted", "Glexchange::Pdws::Date"],
			  ["fileCount", "SOAP::SOAPLong"],
			  ["fileFormatProgressData", "Glexchange::Pdws::FileFormatProgressData[]", [0, nil]],
			  ["fileProgress", "Glexchange::Pdws::FileProgressData"],
			  ["sourceLanguage", "Glexchange::Pdws::Language"],
			  ["targetLanguage", "Glexchange::Pdws::Language"],
			  ["workflowDueDate", "Glexchange::Pdws::Date"],
			  ["workflowStatus", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::Organization,
			:schema_type => XSD::QName.new(NsXsd, "Organization"),
			:schema_element => [
			  ["availableTasks", "SOAP::SOAPInteger"],
			  ["parentOrganization", "Glexchange::Pdws::Organization"],
			  ["organizationInfo", "Glexchange::Pdws::OrganizationInfo"],
			  ["tasks", "Glexchange::Pdws::Task[]", [0, nil]],
			  ["ticket", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::OrganizationInfo,
			:schema_type => XSD::QName.new(NsXsd, "OrganizationInfo"),
			:schema_element => [
			  ["name", "SOAP::SOAPString"],
			  ["ticket", "SOAP::SOAPString"],
			  ["currencyCode", "SOAP::SOAPString"],
			  ["domain", "SOAP::SOAPString"],
			  ["theme", "SOAP::SOAPString"],
			  ["enabled", "SOAP::SOAPBoolean"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::PagedListInfo,
			:schema_type => XSD::QName.new(NsXsd, "PagedListInfo"),
			:schema_element => [
			  ["index", "SOAP::SOAPInt"],
			  ["indexesSize", "SOAP::SOAPInt"],
			  ["size", "SOAP::SOAPInt"],
			  ["sortDirection", "SOAP::SOAPString"],
			  ["sortProperty", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::Phase,
			:schema_type => XSD::QName.new(NsXsd, "Phase"),
			:schema_element => [
			  ["dateEnded", "Glexchange::Pdws::Date"],
			  ["dueDate", "Glexchange::Pdws::Date"],
			  ["name", "SOAP::SOAPString"],
			  ["status", "Glexchange::Pdws::ItemStatusEnum"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::PreviewResult,
			:schema_type => XSD::QName.new(NsXsd, "PreviewResult"),
			:schema_element => [
			  ["message", "SOAP::SOAPString"],
			  ["repositoryItem", "Glexchange::Pdws::RepositoryItem"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::Priority,
			:schema_type => XSD::QName.new(NsXsd, "Priority"),
			:schema_element => [
			  ["name", "SOAP::SOAPString"],
			  ["value", "SOAP::SOAPInt"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::Project,
			:schema_type => XSD::QName.new(NsXsd, "Project"),
			:schema_element => [
			  ["announcements", "Glexchange::Pdws::Announcement[]", [0, nil]],
			  ["contentMonitorPluginInfo", "Glexchange::Pdws::ContentMonitorPluginInfo"],
			  ["defaultTargetWorkflowDefinition", "Glexchange::Pdws::WorkflowDefinition"],
			  ["defaultTargetWorkflowDefinitionTicket", "SOAP::SOAPString"],
			  ["fileFormatProfiles", "Glexchange::Pdws::FileFormatProfile[]", [0, nil]],
			  ["includeSubmissionNameInLocalizationKit", "SOAP::SOAPBoolean[]", [0, nil]],
			  ["metadata", "Glexchange::Pdws::Metadata[]", [0, nil]],
			  ["organizationName", "SOAP::SOAPString"],
			  ["projectCustomFieldConfiguration", "Glexchange::Pdws::ProjectCustomFieldConfiguration[]", [0, nil]],
			  ["projectInfo", "Glexchange::Pdws::ProjectInfo"],
			  ["projectLanguageDirections", "Glexchange::Pdws::ProjectLanguageDirection[]", [0, nil]],
			  ["ticket", "SOAP::SOAPString"],
			  ["workflowDefinitions", "Glexchange::Pdws::WorkflowDefinition[]", [0, nil]]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::ProjectInfo,
			:schema_type => XSD::QName.new(NsXsd, "ProjectInfo"),
			:schema_element => [
			  ["clientIdentifier", "SOAP::SOAPString"],
			  ["defaultJobWorkflowDefinitionTicket", "SOAP::SOAPString"],
			  ["defaultSubmissionWorkflowDefinitionTicket", "SOAP::SOAPString"],
			  ["defaultTargetWorkflowDefinitionTicket", "SOAP::SOAPString"],
			  ["enabled", "SOAP::SOAPBoolean"],
			  ["name", "SOAP::SOAPString"],
			  ["shortCode", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::ProjectLanguage,
			:schema_type => XSD::QName.new(NsXsd, "ProjectLanguage"),
			:schema_element => [
			  ["customLocaleCode", "SOAP::SOAPString"],
			  ["localeCode", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::ProjectLanguageDirection,
			:schema_type => XSD::QName.new(NsXsd, "ProjectLanguageDirection"),
			:schema_element => [
			  ["sourceLanguage", "Glexchange::Pdws::Language"],
			  ["targetLanguage", "Glexchange::Pdws::Language"],
			  ["default", "SOAP::SOAPBoolean"],
			  ["frequent", "SOAP::SOAPBoolean"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::ProjectAClient,
			:schema_type => XSD::QName.new(NsXsd, "ProjectAClient"),
			:schema_element => [
			  ["enabled", "SOAP::SOAPBoolean"],
			  ["name", "SOAP::SOAPString"],
			  ["parentOrganization", "Glexchange::Pdws::Organization"],
			  ["ticket", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::RepositoryItem,
			:schema_type => XSD::QName.new(NsXsd, "RepositoryItem"),
			:schema_element => [
			  ["data", "Glexchange::Pdws::Base64Binary"],
			  ["resourceInfo", "Glexchange::Pdws::ResourceInfo"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::ResourceInfo,
			:schema_type => XSD::QName.new(NsXsd, "ResourceInfo"),
			:schema_element => [
			  ["classifier", "SOAP::SOAPString"],
			  ["clientIdentifier", "SOAP::SOAPString"],
			  ["description", "SOAP::SOAPString"],
			  ["encoding", "SOAP::SOAPString"],
			  ["md5Checksum", "SOAP::SOAPString"],
			  ["mimeType", "SOAP::SOAPString"],
			  ["name", "SOAP::SOAPString"],
			  ["path", "SOAP::SOAPString"],
			  ["resourceInfoId", "SOAP::SOAPLong"],
			  ["size", "SOAP::SOAPLong"],
			  ["type", "Glexchange::Pdws::ResourceType"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::ResourceType,
			:schema_type => XSD::QName.new(NsXsd, "ResourceType"),
			:schema_element => [
			  ["value", "SOAP::SOAPInt"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::Submission,
			:schema_type => XSD::QName.new(NsXsd, "Submission"),
			:schema_element => [
			  ["alerts", "Glexchange::Pdws::Notification[]", [0, nil]],
			  ["availableTasks", "SOAP::SOAPInt"],
			  ["dateArchived", "Glexchange::Pdws::Date"],
			  ["dateCompleted", "Glexchange::Pdws::Date"],
			  ["dateCreated", "Glexchange::Pdws::Date"],
			  ["dateEstimated", "Glexchange::Pdws::Date"],
			  ["documents", "Glexchange::Pdws::Document[]", [0, nil]],
			  ["dueDate", "Glexchange::Pdws::Date"],
			  ["id", "SOAP::SOAPString"],
			  ["owner", "SOAP::SOAPString"],
			  ["project", "Glexchange::Pdws::Project"],
			  ["status", "Glexchange::Pdws::ItemStatusEnum"],
			  ["submissionInfo", "Glexchange::Pdws::SubmissionInfo"],
			  ["submitterFullNames", "SOAP::SOAPString[]", [0, nil]],
			  ["ticket", "SOAP::SOAPString"],
			  ["workflowDefinition", "Glexchange::Pdws::WorkflowDefinition"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::SubmissionInfo,
			:schema_type => XSD::QName.new(NsXsd, "SubmissionInfo"),
			:schema_element => [
			  ["additionalCosts", "SOAP::SOAPString"],
			  ["autoStartChilds", "SOAP::SOAPBoolean"],
			  ["claimScope", "Glexchange::Pdws::ClaimScopeEnum"],
			  ["clientIdentifier", "SOAP::SOAPString"],
			  ["dateRequested", "Glexchange::Pdws::Date"],
			  ["internalNotes", "SOAP::SOAPString"],
			  ["metadata", "Glexchange::Pdws::Metadata[]", [0, nil]],
			  ["name", "SOAP::SOAPString"],
			  ["officeName", "SOAP::SOAPString"],
			  ["paClientTicket", "SOAP::SOAPString"],
			  ["paJobNumber", "SOAP::SOAPString"],
			  ["priority", "Glexchange::Pdws::Priority"],
			  ["projectTicket", "SOAP::SOAPString"],
			  ["revenue", "SOAP::SOAPDouble"],
			  ["submissionBackground", "SOAP::SOAPString"],
			  ["submissionCustomFields", "Glexchange::Pdws::SubmissionCustomFields[]", [0, nil]],
			  ["submitters", "SOAP::SOAPString[]", [0, nil]],
			  ["workflowDefinitionTicket", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::SubmissionPagedList,
			:schema_type => XSD::QName.new(NsXsd, "SubmissionPagedList"),
			:schema_element => [
			  ["elements", "Glexchange::Pdws::Submission[]", [0, nil]],
			  ["pagedListInfo", "Glexchange::Pdws::PagedListInfo"],
			  ["tasks", "Glexchange::Pdws::Task[]", [0, nil]],
			  ["totalCount", "SOAP::SOAPLong"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::SimpleSubmissionSearchModel,
			:schema_type => XSD::QName.new(NsXsd, "SimpleSubmissionSearchModel"),
			:schema_element => [
			  ["alerts", "Glexchange::Pdws::Notification[]", [0, nil]],
			  ["availableTasks", "SOAP::SOAPLong"],
			  ["budgetStatus", "SOAP::SOAPInt"],
			  ["claimScope", "Glexchange::Pdws::ClaimScopeEnum"],
			  ["customFields", "SOAP::SOAPString[]", [0, nil]],
			  ["date", "Glexchange::Pdws::Date"],
			  ["dateArchived", "Glexchange::Pdws::Date"],
			  ["dateCompleted", "Glexchange::Pdws::Date"],
			  ["dateStarted", "Glexchange::Pdws::Date"],
			  ["dueDate", "Glexchange::Pdws::Date"],
			  ["fileCount", "SOAP::SOAPLong"],
			  ["fileProgress", "Glexchange::Pdws::FileProgressData"],
			  ["gate", "SOAP::SOAPByte"],
			  ["id", "SOAP::SOAPString"],
			  ["instructions", "SOAP::SOAPString"],
			  ["officeName", "SOAP::SOAPString"],
			  ["owner", "Glexchange::Pdws::UserData[]", [0, nil]],
			  ["paClientName", "SOAP::SOAPString"],
			  ["parentSubmissionName", "SOAP::SOAPString"],
			  ["parentTicket", "SOAP::SOAPString"],
			  ["pmNotes", "SOAP::SOAPString"],
			  ["priority", "SOAP::SOAPString"],
			  ["projectName", "SOAP::SOAPString"],
			  ["projectTicket", "SOAP::SOAPString"],
			  ["quote", "SOAP::SOAPByte"],
			  ["reserved", "SOAP::SOAPBoolean"],
			  ["sourceLanguage", "SOAP::SOAPString"],
			  ["status", "Glexchange::Pdws::ItemStatusEnum"],
			  ["submissionBackground", "SOAP::SOAPString"],
			  ["submissionName", "SOAP::SOAPString"],
			  ["submitterFullName", "Glexchange::Pdws::UserData[]", [0, nil]],
			  ["ticket", "SOAP::SOAPString"],
			  ["wordCount", "SOAP::SOAPLong"],
			  ["workflowDueDate", "Glexchange::Pdws::Date"],
			  ["workflowStatus", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::SubmissionSearchModelPagedList,
			:schema_type => XSD::QName.new(NsXsd, "SubmissionSearchModelPagedList"),
			:schema_element => [
			  ["elements", "Glexchange::Pdws::SimpleSubmissionSearchModel[]", [0, nil]],
			  ["pagedListInfo", "Glexchange::Pdws::PagedListInfo"],
			  ["tasks", "Glexchange::Pdws::Task[]", [0, nil]],
			  ["totalCount", "SOAP::SOAPLong"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::SubmissionSearchRequest,
			:schema_type => XSD::QName.new(NsXsd, "SubmissionSearchRequest"),
			:schema_element => [
			  ["folder", "Glexchange::Pdws::ItemFolderEnum"],
			  ["projectTickets", "SOAP::SOAPString[]", [0, nil]],
			  ["submissionDate", "Glexchange::Pdws::Date"],
			  ["submissionDueDate", "Glexchange::Pdws::Date"],
			  ["submissionName", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::Target,
			:schema_type => XSD::QName.new(NsXsd, "Target"),
			:schema_element => [
			  ["availableTasks", "SOAP::SOAPLong"],
			  ["dateCompleted", "Glexchange::Pdws::Date"],
			  ["dateCreated", "Glexchange::Pdws::Date"],
			  ["dateEstimated", "Glexchange::Pdws::Date"],
			  ["document", "Glexchange::Pdws::Document"],
			  ["downloadThresholdTimeStamp", "Glexchange::Pdws::Date"],
			  ["dueDate", "Glexchange::Pdws::Date"],
			  ["fileName", "SOAP::SOAPString"],
			  ["id", "SOAP::SOAPString"],
			  ["phases", "Glexchange::Pdws::Phase[]", [0, nil]],
			  ["refPhase", "Glexchange::Pdws::Phase"],
			  ["sourceLanguage", "Glexchange::Pdws::Language"],
			  ["sourceWordCount", "SOAP::SOAPInt"],
			  ["status", "Glexchange::Pdws::ItemStatusEnum"],
			  ["targetInfo", "Glexchange::Pdws::TargetInfo"],
			  ["targetLanguage", "Glexchange::Pdws::Language"],
			  ["targetWordCount", "SOAP::SOAPInt"],
			  ["ticket", "SOAP::SOAPString"],
			  ["tmStatistics", "Glexchange::Pdws::TmStatistics"],
			  ["workflowDefinition", "Glexchange::Pdws::WorkflowDefinition"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::TargetInfo,
			:schema_type => XSD::QName.new(NsXsd, "TargetInfo"),
			:schema_element => [
			  ["dateRequested", "Glexchange::Pdws::Date"],
			  ["encoding", "SOAP::SOAPString"],
			  ["instructions", "SOAP::SOAPString"],
			  ["metadata", "Glexchange::Pdws::Metadata[]", [0, nil]],
			  ["priority", "Glexchange::Pdws::Priority"],
			  ["requestedDueDate", "SOAP::SOAPLong"],
			  ["targetLocale", "SOAP::SOAPString"],
			  ["workflowDefinitionTicket", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::TargetPagedList,
			:schema_type => XSD::QName.new(NsXsd, "TargetPagedList"),
			:schema_element => [
			  ["elements", "Glexchange::Pdws::Target[]", [0, nil]],
			  ["pagedListInfo", "Glexchange::Pdws::PagedListInfo"],
			  ["tasks", "Glexchange::Pdws::Task[]", [0, nil]],
			  ["totalCount", "SOAP::SOAPLong"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::TargetSearchRequest,
			:schema_type => XSD::QName.new(NsXsd, "TargetSearchRequest"),
			:schema_element => [
			  ["dateCreated", "Glexchange::Pdws::Date"],
			  ["folder", "Glexchange::Pdws::ItemFolderEnum"],
			  ["projectTickets", "SOAP::SOAPString[]", [0, nil]],
			  ["sourceLocaleId", "SOAP::SOAPString"],
			  ["submissionTicket", "SOAP::SOAPString"],
			  ["targetLocaleId", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::Task,
			:schema_type => XSD::QName.new(NsXsd, "Task"),
			:schema_element => [
			  ["groupName", "SOAP::SOAPString"],
			  ["selectStyle", "SOAP::SOAPInt"],
			  ["taskId", "SOAP::SOAPInt"],
			  ["taskName", "SOAP::SOAPString"],
			  ["weight", "SOAP::SOAPInt"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::TmStatistics,
			:schema_type => XSD::QName.new(NsXsd, "TmStatistics"),
			:schema_element => [
			  ["fuzzyRepetitionsWordCount1", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyRepetitionsWordCount10", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyRepetitionsWordCount2", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyRepetitionsWordCount3", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyRepetitionsWordCount4", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyRepetitionsWordCount5", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyRepetitionsWordCount6", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyRepetitionsWordCount7", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyRepetitionsWordCount8", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyRepetitionsWordCount9", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyWordCount1", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyWordCount10", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyWordCount2", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyWordCount3", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyWordCount4", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyWordCount5", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyWordCount6", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyWordCount7", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyWordCount8", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["fuzzyWordCount9", "Glexchange::Pdws::FuzzyTmStatistics"],
			  ["goldWordCount", "SOAP::SOAPInt"],
			  ["noMatchWordCount", "SOAP::SOAPInt"],
			  ["oneHundredMatchWordCount", "SOAP::SOAPInt"],
			  ["repetitionWordCount", "SOAP::SOAPInt"],
			  ["totalWordCount", "SOAP::SOAPInt"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::WorkflowDefinition,
			:schema_type => XSD::QName.new(NsXsd, "WorkflowDefinition"),
			:schema_element => [
			  ["description", "SOAP::SOAPString"],
			  ["name", "SOAP::SOAPString"],
			  ["ticket", "SOAP::SOAPString"],
			  ["type", "Glexchange::Pdws::EntityTypeEnum"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::UserData,
			:schema_type => XSD::QName.new(NsXsd, "UserData"),
			:schema_element => [
			  ["email", "SOAP::SOAPString"],
			  ["name", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::UserInfo,
			:schema_type => XSD::QName.new(NsXsd, "UserInfo"),
			:schema_element => [
			  ["accountLocked", "SOAP::SOAPBoolean"],
			  ["accountNonExpired", "SOAP::SOAPBoolean"],
			  ["address", "SOAP::SOAPString"],
			  ["autoClaimMultipleTasks", "SOAP::SOAPBoolean"],
			  ["claimMultipleJobTasks", "SOAP::SOAPBoolean"],
			  ["credentialsNonExpired", "SOAP::SOAPBoolean"],
			  ["dateLastLogin", "SOAP::SOAPDateTime"],
			  ["department", "SOAP::SOAPString"],
			  ["emailAddress", "SOAP::SOAPString"],
			  ["emailNotification", "SOAP::SOAPBoolean"],
			  ["enabled", "SOAP::SOAPBoolean"],
			  ["fax", "SOAP::SOAPString"],
			  ["firstName", "SOAP::SOAPString"],
			  ["lastName", "SOAP::SOAPString"],
			  ["password", "SOAP::SOAPString"],
			  ["phone1", "SOAP::SOAPString"],
			  ["phone2", "SOAP::SOAPString"],
			  ["timeZone", "SOAP::SOAPString"],
			  ["userName", "SOAP::SOAPString"],
			  ["userType", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::TiUserInfo,
			:schema_type => XSD::QName.new(NsXsd, "TiUserInfo"),
			:schema_element => [
			  ["languageDirections", "Glexchange::Pdws::LanguageDirection[]", [0, nil]],
			  ["organizationId", "SOAP::SOAPLong"],
			  ["projectRoles", "SOAP::SOAPString[]", [0, nil]],
			  ["projectTicket", "SOAP::SOAPString[]", [0, nil]],
			  ["systemRoles", "SOAP::SOAPString[]", [0, nil]],
			  ["vendorId", "SOAP::SOAPLong"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::ClaimScopeEnum,
			:schema_type => XSD::QName.new(NsXsd, "ClaimScopeEnum"),
			:schema_element => [
			  ["name", "SOAP::SOAPString"],
			  ["value", "SOAP::SOAPInt"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::ProjectCustomFieldConfiguration,
			:schema_type => XSD::QName.new(NsXsd, "ProjectCustomFieldConfiguration"),
			:schema_element => [
			  ["description", "SOAP::SOAPString"],
			  ["mandatory", "SOAP::SOAPBoolean"],
			  ["name", "SOAP::SOAPString"],
			  ["type", "SOAP::SOAPString"],
			  ["values", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::SubmissionCustomFields,
			:schema_type => XSD::QName.new(NsXsd, "SubmissionCustomFields"),
			:schema_element => [
			  ["fieldName", "SOAP::SOAPString"],
			  ["fieldValue", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::UserProfile,
			:schema_type => XSD::QName.new(NsXsd, "UserProfile"),
			:schema_element => [
			  ["availableTasks", "SOAP::SOAPInt"],
			  ["organizationName", "SOAP::SOAPString"],
			  ["systemRoles", "Glexchange::Pdws::Role[]", [0, nil]],
			  ["tasks", "Glexchange::Pdws::Task[]", [0, nil]],
			  ["ticket", "SOAP::SOAPString"],
			  ["userInfo", "Glexchange::Pdws::UserInfo"],
			  ["vendorName", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::Role,
			:schema_type => XSD::QName.new(NsXsd, "Role"),
			:schema_element => [
			  ["policies", "Glexchange::Pdws::Policy[]", [0, nil]],
			  ["roleId", "SOAP::SOAPString"],
			  ["roleType", "Glexchange::Pdws::RoleTypeEnum"],
			  ["tasks", "Glexchange::Pdws::Task[]", [0, nil]],
			  ["ticket", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::RoleTypeEnum,
			:schema_type => XSD::QName.new(NsXsd, "RoleTypeEnum"),
			:schema_element => [
			  ["value", "SOAP::SOAPInt"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::Policy,
			:schema_type => XSD::QName.new(NsXsd, "Policy"),
			:schema_element => [
			  ["category", "SOAP::SOAPString"],
			  ["policyId", "SOAP::SOAPString"],
			  ["policyType", "Glexchange::Pdws::RoleTypeEnum"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::LanguageWorkflowInfo,
			:schema_type => XSD::QName.new(NsXsd, "LanguageWorkflowInfo"),
			:schema_element => [
			  ["sourceLanguage", "Glexchange::Pdws::Language"],
			  ["targetLanguage", "Glexchange::Pdws::Language"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::BatchWorkflowInfo,
			:schema_type => XSD::QName.new(NsXsd, "BatchWorkflowInfo"),
			:schema_element => [
			  ["batchName", "SOAP::SOAPString"],
			  ["languageWorkflowInfo", "Glexchange::Pdws::LanguageWorkflowInfo"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::TargetWorkflowInfo,
			:schema_type => XSD::QName.new(NsXsd, "TargetWorkflowInfo"),
			:schema_element => [
			  ["batchName", "SOAP::SOAPString"],
			  ["documentName", "SOAP::SOAPString"],
			  ["fileName", "SOAP::SOAPString"],
			  ["sourceLanguage", "Glexchange::Pdws::Language"],
			  ["targetLanguage", "Glexchange::Pdws::Language"],
			  ["targetTicket", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::SubmissionWorkflowInfo,
			:schema_type => XSD::QName.new(NsXsd, "SubmissionWorkflowInfo"),
			:schema_element => [
			  ["batchWorkflowInfos", "Glexchange::Pdws::BatchWorkflowInfo[]", [0, nil]],
			  ["languageWorkflowInfos", "Glexchange::Pdws::LanguageWorkflowInfo[]", [0, nil]],
			  ["phaseName", "SOAP::SOAPString"],
			  ["submissionId", "SOAP::SOAPLong"],
			  ["submissionName", "SOAP::SOAPString"],
			  ["submissionTicket", "SOAP::SOAPString"],
			  ["targetWorkflowInfos", "Glexchange::Pdws::TargetWorkflowInfo[]", [0, nil]]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::WorkflowRequest,
			:schema_type => XSD::QName.new(NsXsd, "WorkflowRequest"),
			:schema_element => [
			  ["batchWorkflowInfos", "Glexchange::Pdws::BatchWorkflowInfo[]", [0, nil]],
			  ["languageWorkflowInfos", "Glexchange::Pdws::LanguageWorkflowInfo[]", [0, nil]],
			  ["phaseName", "SOAP::SOAPString"],
			  ["submissionTicket", "SOAP::SOAPString"],
			  ["targetWorkflowInfos", "Glexchange::Pdws::TargetWorkflowInfo[]", [0, nil]]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::WorkflowRequestTicket,
			:schema_type => XSD::QName.new(NsXsd, "WorkflowRequestTicket"),
			:schema_element => [
			  ["message", "SOAP::SOAPString"],
			  ["processTicket", "SOAP::SOAPString"],
			  ["submissionTicket", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::DownloadActionResult,
			:schema_type => XSD::QName.new(NsXsd, "DownloadActionResult"),
			:schema_element => [
			  ["message", "SOAP::SOAPString"],
			  ["processingFinished", "SOAP::SOAPBoolean"],
			  ["repositoryItem", "Glexchange::Pdws::RepositoryItem"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::UploadActionResult,
			:schema_type => XSD::QName.new(NsXsd, "UploadActionResult"),
			:schema_element => [
			  ["messages", "SOAP::SOAPString[]", [0, nil]],
			  ["processingFinished", "SOAP::SOAPBoolean"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::DownloadCollateralResult,
			:schema_type => XSD::QName.new(NsXsd, "DownloadCollateralResult"),
			:schema_element => [
			  ["errorMessages", "SOAP::SOAPString[]", [0, nil]],
			  ["processingFinished", "SOAP::SOAPBoolean"],
			  ["repositoryItem", "Glexchange::Pdws::RepositoryItem"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::Base64Binary,
			:schema_type => XSD::QName.new(NsXmlmime, "base64Binary"),
			:schema_attribute => {
			  XSD::QName.new(NsXmlmime, "contentType") => "SOAP::SOAPString"
			}
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::HexBinary,
			:schema_type => XSD::QName.new(NsXmlmime, "hexBinary"),
			:schema_attribute => {
			  XSD::QName.new(NsXmlmime, "contentType") => "SOAP::SOAPString"
			}
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::CancelDocument,
			:schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "cancelDocument"),
			:schema_element => [
			  ["documentTicket", "Glexchange::Pdws::DocumentTicket"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::CancelDocumentResponse,
			:schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "cancelDocumentResponse"),
			:schema_element => [
			  ["v_return", ["SOAP::SOAPString", XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "return")]]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::FindByTicket,
			:schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "findByTicket"),
			:schema_element => [
			  ["ticket", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::FindByTicketResponse,
			:schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "findByTicketResponse"),
			:schema_element => [
			  ["v_return", ["Glexchange::Pdws::Document", XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "return")]]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::Search,
			:schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "search"),
			:schema_element => [
			  ["command", "Glexchange::Pdws::DocumentSearchRequest"],
			  ["info", "Glexchange::Pdws::PagedListInfo"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::SearchResponse,
			:schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "searchResponse"),
			:schema_element => [
			  ["v_return", ["Glexchange::Pdws::DocumentPagedList", XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "return")]]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::SubmitDocumentWithBinaryResource,
			:schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "submitDocumentWithBinaryResource"),
			:schema_element => [
			  ["documentInfo", "Glexchange::Pdws::DocumentInfo"],
			  ["resourceInfo", "Glexchange::Pdws::ResourceInfo"],
			  ["data", "Glexchange::Pdws::Base64Binary"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::SubmitDocumentWithBinaryResourceResponse,
			:schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "submitDocumentWithBinaryResourceResponse"),
			:schema_element => [
			  ["v_return", ["Glexchange::Pdws::DocumentTicket", XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "return")]]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::SubmitDocumentWithTextResource,
			:schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "submitDocumentWithTextResource"),
			:schema_element => [
			  ["documentInfo", "Glexchange::Pdws::DocumentInfo"],
			  ["resourceInfo", "Glexchange::Pdws::ResourceInfo"],
			  ["data", "SOAP::SOAPString"]
			]
		  )

		  DocumentLiteralRegistry.register(
			:class => Glexchange::Pdws::SubmitDocumentWithTextResourceResponse,
			:schema_name => XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "submitDocumentWithTextResourceResponse"),
			:schema_element => [
			  ["v_return", ["Glexchange::Pdws::DocumentTicket", XSD::QName.new(NsImplServicesServiceWsProjectdirectorGs4trOrg, "return")]]
			]
		  )
		end
	end
end