class Api::V1::DrainClaimsController < Api::V1::BaseController
    def index
        claims = DrainClaim.all
        render:json => claims, each_serializer: Api::V1::DrainClaimSerializer    
    end

    def show
        claims = DrainClaim.where(:user_id => params[:user_id])
        render :json => claims, each_serializer: Api::V1::DrainClaimSerializer,
            root:'claims'
    end
end
