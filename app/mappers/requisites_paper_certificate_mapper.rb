# encoding: utf-8
# @note Реквизиты "бумажных" свидетельств

class RequisitesPaperCertificateMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'RequisitesPaperCertificate'

  # Код органа ЗАГС, составившего документ (из внешнего справочника на ЕНСИ)
  # @return [RegistrarUID]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :registrar_id
  # Номер документа в Федеральном электронном ЗАГСе
  # @return [UID]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :document_uid
  # Номер документа
  # @return [NOTEmptyString]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :document_number
  # Дата документа
  # @return [Date]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :document_date
  # ФИО руководителя органа ЗАГС
  # @return [STRING250]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :head_of_zags_fio
  # Должность руководителя органа ЗАГС
  # @return [STRING500]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :head_of_zags_position
  # Серия свидетельства
  # @return [STRING10]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :cert_series
  # статус свидетельства
  # @return [CERTIFICATEStatus]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :cert_status

end
