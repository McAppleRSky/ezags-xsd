# encoding: utf-8
# @note Актовая запись об установлении отцовства в объеме справки формы 31 c ЭП

class SignedActRecordToReferenceFiliation31Mapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'SignedActRecordToReferenceFiliation31'

  # Запись АГС
  # @return [ActRecordToReferenceFiliation31Mapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record
  # ЭП должностного лица органа ЗАГС
  # @return [SignatureWithCommentMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record_signature

end
