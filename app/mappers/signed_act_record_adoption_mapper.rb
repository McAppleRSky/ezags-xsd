# encoding: utf-8
# @note Актовая запись об усыновлении с ЭП

class SignedActRecordAdoptionMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'SignedActRecordAdoption'

  # Актовая запись об усыновлении (удочерении)
  # @return [ActRecordAdoptionMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record
  # ЭП должностного лица органа ЗАГС
  # @return [SignatureWithCommentMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record_signature

end
