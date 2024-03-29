# encoding: utf-8

class MessageTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'MessageType'

  # Данные о системе-инициаторе взаимодействия (Потребителе) (валидируется СМЭВ на
  #                 соответствие сертификату)
  # @return [OrgExternalTypeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :sender
  # Данные о системе-получателе сообщения (Поставщике) (валидируется СМЭВ по реестру
  #                 поставщиков)
  # @return [OrgExternalTypeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :recipient
  # Данные о системе, инициировавашей цепочку из нескольких запросов-ответов, объединенных
  #                 единым процессом в рамках взаимодействия
  # @return [OrgExternalTypeMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :originator
  # Мнемоника электронного сервиса
  # @return [String]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :service_name
  # Целевой сервис
  # @return [ServiceTypeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :service
  # Тип сообщения
  # @return [TypeCodeType]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :type_code
  # Статус сообщения
  # @return [StatusType]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :status
  # Дата создания запроса
  # @return [DateTime]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :date
  # Категория взаимодействия
  # @return [String]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :exchange_type
  # Идентификатор сообщения-запроса, инициировавшего взаимодействие
  # @return [IdType]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :request_id_ref
  # Идентификатор сообщения-запроса, инициировавшего цепочку из нескольких запросов-ответов,
  #                 объединенных единым процессом в рамках взаимодействия
  # @return [IdType]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :origin_request_id_ref
  # Код услуги
  # @return [String]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :service_code
  # Номер заявки в информационной системе-отправителе
  # @return [String]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :case_number
  # Набор описей заявок пакета
  # @return [SubMessagesTypeMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :sub_messages
  # Идентификатор тестового запроса
  # @return [String]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :test_msg
  # Код OKTMO
  # @return [String]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :oktmo

end
