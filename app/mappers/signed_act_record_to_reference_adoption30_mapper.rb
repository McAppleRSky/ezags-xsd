# encoding: utf-8
# @note Актовая запись об усыновлении (удочерении) в объеме справки формы 30 c ЭП

class SignedActRecordToReferenceAdoption30Mapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'SignedActRecordToReferenceAdoption30'

  # Запись АГС
  # @return [ActRecordToReferenceAdoption30Mapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record
  # ЭП должностного лица органа ЗАГС
  # @return [SignatureWithCommentMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record_signature

end
