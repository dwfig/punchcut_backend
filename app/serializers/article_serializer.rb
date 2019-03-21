class ArticleSerializer < ActiveModel::Serializer
  #article: text, headline, post_date
  #user:    name, email
  #role:    user, article, user_role
  has_many :users
  attributes :id, :text, :headline, :post_date, :posted, :users #, :roles

  def users
    self.object.users.map do |user|
      { name: user.name,
        email: user.email,
        role: Role.all.select{|role| role.article == self.object && role.user == user}[0].user_role
        # grab all the users associated
        # and we'll deal with it on the front
        # we take the user_roles from the role relationships
        # we may in the future need or want a UserSerializer where we list
        # the users with their roles for each article
      }
        # TODO: eventually, this should only pull the most recent ~20 articles
        # or only the articles that have a particular user attached
    end
  end
end
