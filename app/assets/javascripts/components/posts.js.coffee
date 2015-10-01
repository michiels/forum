@Posts = React.createClass

  addPost: (post) ->
    posts = @state.posts.slice()
    posts.push post
    @setState posts: posts

  getInitialState: ->
    posts: @props.data.posts

  getDefaultProps: ->
    posts: []

  render: ->
    React.DOM.div
      className: 'post-container'

      React.DOM.div
        null
        for post in @state.posts
          React.createElement Post, key: post.id, post: post
