# encoding: utf-8
# @note Актовая запись о смерти в объеме справки формы 34 c ЭП

class SignedActRecordToReferenceDeath34Mapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'SignedActRecordToReferenceDeath34'

  # Запись АГС
  # @return [ActRecordToReferenceDeath34Mapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record
  # ЭП должностного лица органа ЗАГС
  # @return [SignatureWithCommentMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record_signature

end
