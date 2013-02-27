# encoding: utf-8
# @note Заявление о смене имени, подаваемое в электронном виде

class StatementContentOfFiliationMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'StatementContentOfFiliation'

  # Сведения о ребенке (после установления отцовства)
  # @return [PersonInitialsMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :child_after

end
