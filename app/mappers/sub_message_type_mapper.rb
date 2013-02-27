# encoding: utf-8

class SubMessageTypeMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'SubMessageType'

  # Уникальный идентификатор сообщения внутри пакета назначается инициатором взаимодействия
  # @return [String]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :sub_request_number
  # Статус сообщения
  # @return [StatusType]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :status
  # Данные о системе, инициировавашейинициировавшей цепочку из
  # 				нескольких запросов-ответов, объединенных единым процессом в рамках
  # 				взаимодействия
  # @return [OrgExternalTypeMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :originator
  # Дата создания запроса
  # @return [DateTime]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :date
  # Идентификатор сообщения-запроса, инициировавшего
  # 				взаимодействие
  # @return [IdType]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :request_id_ref
  # Идентификатор сообщения-запроса, инициировавшего
  # 				цепочку из нескольких запросов-ответов, объединенных единым
  # 				процессом в рамках взаимодействия
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

end
