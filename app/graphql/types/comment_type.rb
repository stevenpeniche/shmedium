Types::CommentType = GraphQL::ObjectType.define do
  name 'CommentType'
  description 'A comment on a blog post'

  field :id, types.ID, 'the ID of the comement'
  field :body, types.String, 'The body of the comment'
  field :user, Types::UserType, 'The user who made the comment'
  field :post, Types::PostType, 'The post that comment was made on'
  field :createdAt, types.String, 'The time the comment was posted', property: :created_at
end
