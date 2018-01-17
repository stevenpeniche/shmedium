Types::UserType = GraphQL::ObjectType.define do
  name 'UserType'
  description 'Represents a user in the system'

  field :id, types.ID, 'The user\'s id'
  field :firstName, types.String, 'The user\'s first name', property: :first_name
  field :lastName, types.String, 'The user\'s last name', property: :last_name
  field :bio, types.String, 'The user\'s bio'
  field :posts, types[Types::PostType], 'A list of blog post by the user'
  field :comments, types[Types::CommentType], 'A list of comments posted by this user'
end
