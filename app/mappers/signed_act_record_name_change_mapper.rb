# encoding: utf-8
# @note Актовая запись о перемене имени с ЭП

class SignedActRecordNameChangeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'SignedActRecordNameChange'

  # Актовая запись о перемене имени
  # @return [ActRecordNameChangeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record
  # ЭП должностного лица органа ЗАГС
  # @return [SignatureWithCommentMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record_signature

end
