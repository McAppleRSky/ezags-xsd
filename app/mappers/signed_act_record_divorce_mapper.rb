# encoding: utf-8
# @note Актовая запись о расторжении брака с ЭП

class SignedActRecordDivorceMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'SignedActRecordDivorce'

  # Актовая запись о расторжении брака
  # @return [ActRecordDivorceMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record
  # ЭП должностного лица органа ЗАГС
  # @return [SignatureWithCommentMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record_signature

end
