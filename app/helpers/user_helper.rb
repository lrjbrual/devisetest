module UserHelper
  def user_status(user)
    if current_account == user
      # if current_account.owner == user
      content_tag(:span, '', class: 'text-success')
    else
        'Invitation Pending'
    end
  end
end