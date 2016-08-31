class Location < ActiveRecord::Base
  has_many :location_addresses
  has_many :addresses, through: :location_addresses
end

# locations
# ---------
# id  name
# ----------
# 1  some name
# 2 some other name
#
# location_addresses
# -------------------
# id  location_id  address_id
# -------------------------
# 1   1            1
# 2   1            2
# 3   2            1
#
# addresses
# ---------
# id street ....
# -----------------
# 1  420 freedom ln
# 2  13 fridays st
#
