# encoding: utf-8
# @note Реквизиты "бумажных" свидетельств для заявления

class OldRequisitesPaperCertificateForStatementMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'OldRequisitesPaperCertificateForStatement'

  # Код органа ЗАГС, составившего документ (из внешнего справочника на ЕНСИ)
  # @return [RegistrarUID]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :registrar_id
  # Наименование организации
  # @return [NOTEmptyString]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :organization_name
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
  # Статус проверки сведений в данном документе (справочник DocumentVerifStatus)
  # @return [VERIFICATIONStatus]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :verification_status

end
