# encoding: utf-8

class StatusResponseMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/OrderService.xsd', File.dirname(__FILE__))
  type 'StatusResponse'

  # Служебный блок атрибутов СМЭВ
  # @return [MessageTypeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :message
  # @return [MessageDataMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :message_data

  class MessageData
    include XmlSchemaMapper
    schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/OrderService.xsd', File.dirname(__FILE__))
    annonymus_type 'StatusResponse::MessageData'

    # @return [AppDataMapper]
    # minOccurs: 1, maxOccurs: 1
    attr_accessor :app_data
    # Блок вложений
    # @return [AppDocumentTypeMapper]
    # minOccurs: 0, maxOccurs: 1
    attr_accessor :app_document
  end

  class MessageData::AppData
    include XmlSchemaMapper
    schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/OrderService.xsd', File.dirname(__FILE__))
    annonymus_type 'StatusResponse::MessageData::AppData'

    # @return [ChangeOrderInfoMapper]
    # minOccurs: 1, maxOccurs: 1
    attr_accessor :change_order_info
    # @return [SignatureTypeMapper]
    # minOccurs: 0, maxOccurs: 1
    attr_accessor :signature
  end

  class AppData::ChangeOrderInfo
    include XmlSchemaMapper
    schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/OrderService.xsd', File.dirname(__FILE__))
    annonymus_type 'StatusResponse::AppData::changeOrderInfo'

    # Информация об услуги
    # @return [ServiceInfoMapper]
    # minOccurs: 0, maxOccurs: 1
    attr_accessor :service_info
    # Cтатус завки
    # @return [OrderIdMapper]
    # minOccurs: 1, maxOccurs: 1
    attr_accessor :order_id
    # Новый статус завки
    # @return [StatusCodeMapper]
    # minOccurs: 1, maxOccurs: 1
    attr_accessor :status_code
    # Комментарий
    # @return [String]
    # minOccurs: 0, maxOccurs: 1
    attr_accessor :comment
    # Возможность отмены
    # @return [Boolean]
    # minOccurs: 0, maxOccurs: 1
    attr_accessor :cancel_allowed
    # Токен безопасности
    # @return [String]
    # minOccurs: 1, maxOccurs: 1
    attr_accessor :auth_token
  end

  class ChangeOrderInfo::ServiceInfo
    include XmlSchemaMapper
    schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/OrderService.xsd', File.dirname(__FILE__))
    annonymus_type 'StatusResponse::changeOrderInfo::serviceInfo'

    # Код ведомства в ПГУ
    # @return [String]
    # minOccurs: 0, maxOccurs: 1
    attr_accessor :service_org_code
    # Код формы услуги ПГУ
    # @return [String]
    # minOccurs: 0, maxOccurs: 1
    attr_accessor :e_service_id
    # Код цели в СРГУ
    # @return [String]
    # minOccurs: 0, maxOccurs: 1
    attr_accessor :reestr_id
  end

  class ChangeOrderInfo::OrderId
    include XmlSchemaMapper
    schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/OrderService.xsd', File.dirname(__FILE__))
    annonymus_type 'StatusResponse::changeOrderInfo::orderId'

    # Id заявки на портале
    # @return [String]
    # minOccurs: 1, maxOccurs: 1
    attr_accessor :pgu_id
    # Id заявки в ведомстве
    # @return [String]
    # minOccurs: 1, maxOccurs: 1
    attr_accessor :org_id
  end

  class ChangeOrderInfo::StatusCode
    include XmlSchemaMapper
    schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/OrderService.xsd', File.dirname(__FILE__))
    annonymus_type 'StatusResponse::changeOrderInfo::statusCode'

    # Код статуса в ведомстве
    # @return [String]
    # minOccurs: 1, maxOccurs: 1
    attr_accessor :org_code
    # Код статуса на ЕПГУ
    # @return [String]
    # minOccurs: 1, maxOccurs: 1
    attr_accessor :tech_code
  end

end
