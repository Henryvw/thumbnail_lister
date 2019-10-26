class User < ApplicationRecord
  has_secure_password


  # Note I am purposefully NOT adding standard validations here (such as, for example, validate uniqueness of email) here as they are not listed in the requirements. I think that this is an important way of thinking, not building stuff that hasn't been defined or requested yet.
end
