module ApplicationHelper

  def resource_class
    devise_mapping.to
  end

    def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def build_resource(hash=nil)
    self.resource = resource_class.new_with_session(hash || {}, session)
  end

end
