class Question < ActiveRecord::Base
  default_scope { order(id: :desc) }
end
