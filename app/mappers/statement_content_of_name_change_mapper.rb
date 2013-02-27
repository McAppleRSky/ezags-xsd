# encoding: utf-8
# @note Заявление о смене имени, подаваемое в электронном виде

class StatementContentOfNameChangeMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'StatementContentOfNameChange'

  # ФИО лица (после перемены имени)
  # @return [PersonInitialsMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :changed_initials

end
