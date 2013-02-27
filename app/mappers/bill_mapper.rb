# encoding: utf-8
# @note Сообщение об изменении статуса обработки платежа

class BillMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/OrderService.xsd'
  type 'Bill'

  # uid начисления
  # @return [NOTEmptyString]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :bill_id
  # Cтатус
  # @return [PAYMENTStatus]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :status
  # сумма пошлины
  # @return [Double]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :total_amount
  # сумма оставшейся оплаты
  # @return [Double]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :amount_to_pay
  # описание пошлины
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :description
  # дата создания начисления
  # @return [Date]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :bill_date
  # дата актуальности начисления
  # @return [Date]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :valid_until
  # код по классификатору ОКАТО
  # @return [OKATOCode]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :okato_code
  # кбк
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :kbk
  # uid платильщика по снилс
  # @return [NOTEmptyString]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :unified_payer_id
  # uid платильщика по документу
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :alt_payer_id
  # признак аннулированности
  # @return [Boolean]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :revoked

end
