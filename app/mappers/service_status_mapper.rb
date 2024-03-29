# encoding: utf-8
# @note Сообщение об изменении статуса обработки отправленного электронного
#                 заявления
#             

class ServiceStatusMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/OrderService.xsd', File.dirname(__FILE__))
  type 'ServiceStatus'

  # Идентификатор услуги в еЗАГС
  # @return [UID]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :ezags_id
  # Статус обработки заявления (справочник
  #                         ServiceStatus)
  # @return [SERVICEState]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :status
  # Текст статуса обработки заявления
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :status_text
  # Дата изменения статуса заявления
  # @return [Date]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :status_date
  # @return [UID]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :result_act_rec_ui_ds
  # @return [UID]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :result_document_ui_ds

end
