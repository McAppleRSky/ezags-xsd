# encoding: utf-8
# @note Реквизиты "бумажных" свидетельств для заявления

class RequisitesPaperCertificateForStatementMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'RequisitesPaperCertificateForStatement'

  # Код органа ЗАГС, составившего документ (из внешнего справочника на ЕНСИ)
  # @return [RegistrarUID]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :registrar_id
  # Номер свидетельства
  # @return [STRING10]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :cert_number
  # Дата документа
  # @return [Date]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :document_date
  # Серия свидетельства
  # @return [STRING10]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :cert_series

end
