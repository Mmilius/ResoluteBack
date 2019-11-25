class User < ApplicationRecord
    has_many :resolutions
    has_many :reports, through: :resolutions
    has_many :realms, through: :resolutions
end
