module Documents
  class UpdateContext
    attr_accessor :user, :params

    def initialize(user, id, params)
      @user, @params = user, params
    end

    def execute
      @user.extend DocumentOwner
      document = @user.get_document(id)
      document.update_attributes(params)
    end
  end
end

