# encoding: utf-8
# @note Информация для изменения статуса заявки в ЛК

class ChangeOrderInfoMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/ePGU/order-info.xsd', File.dirname(__FILE__))
  type 'ChangeOrderInfo'

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

  class ServiceInfo
    include XmlSchemaMapper
    schema File.expand_path('../../vendor/ezags-protocols/ePGU/order-info.xsd', File.dirname(__FILE__))
    annonymus_type 'ChangeOrderInfo::serviceInfo'

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

  class OrderId
    include XmlSchemaMapper
    schema File.expand_path('../../vendor/ezags-protocols/ePGU/order-info.xsd', File.dirname(__FILE__))
    annonymus_type 'ChangeOrderInfo::orderId'

    # Id заявки на портале
    # @return [String]
    # minOccurs: 1, maxOccurs: 1
    attr_accessor :pgu_id
    # Id заявки в ведомстве
    # @return [String]
    # minOccurs: 1, maxOccurs: 1
    attr_accessor :org_id
  end

  class StatusCode
    include XmlSchemaMapper
    schema File.expand_path('../../vendor/ezags-protocols/ePGU/order-info.xsd', File.dirname(__FILE__))
    annonymus_type 'ChangeOrderInfo::statusCode'

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
