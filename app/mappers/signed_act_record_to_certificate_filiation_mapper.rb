# encoding: utf-8
# @note Актовая запись об установлении отцовства в объеме свидетельства c ЭП

class SignedActRecordToCertificateFiliationMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'SignedActRecordToCertificateFiliation'

  # Запись АГС
  # @return [ActRecordToCertificateFiliationMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record
  # ЭП должностного лица органа ЗАГС
  # @return [SignatureWithCommentMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record_signature

end
