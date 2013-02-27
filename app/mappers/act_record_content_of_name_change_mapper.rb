# encoding: utf-8
# @note Актовая запись о смене имени

class ActRecordContentOfNameChangeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ActRecordContentOfNameChange'

  # ФИО лица (после перемены имени)
  # @return [PersonInitialsMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :changed_initials

end
