# encoding: utf-8
# @note Ответ сервиса ЕЗАГС при загрузке сведений о месте гос. регистрации

class RegistrarUploadResponseMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'RegistrarUploadResponse'

  # Идентификационные данные места государственной регистрации. Внешний ключ
  # @return [RegistrarIdentityMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :foreign_id
  # Идентификатор наименования органа ЗАГС
  # @return [RegistrarIdentityMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :registrar_name_identity
  # Ответный UUID, присвоенный в ЕЗАГС в результате сохранения записи
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :e_zags_record_id
  # @return [FaultBaseObjMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :base_fault_obj

end
