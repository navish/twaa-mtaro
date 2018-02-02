class Api::V1::DrainClaimSerializer < Api::V1::BaseSerializer
  attributes :id, :user_id, :gid, :shoveled, :notes
end
