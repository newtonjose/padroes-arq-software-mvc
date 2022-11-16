class Contas < ApplicationRecord
  belongs_to :cliente, optional: true
  belongs_to :agencias, optional: true
end
