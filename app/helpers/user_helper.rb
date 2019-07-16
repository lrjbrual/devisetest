module UserHelper
  def user_status(user)
    if current_account == user || user.invitation_accepted?
      # if current_account.owner == user
      'Accepted'
      # content_tag(:span, '', class: 'text-success')
    else
        'Invitation Pending'
    end
  end
end