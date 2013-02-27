# encoding: utf-8
# @note Актовая запись о смене имени

class ActRecordContentOfFiliationMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'ActRecordContentOfFiliation'

  # Сведения о ребенке (после установления отцовства)
  # @return [PersonInitialsMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :child_after

end
