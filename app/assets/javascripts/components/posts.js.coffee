@Posts = React.createClass

  getInitialState: ->
    posts: @props.data

  getDefaultProps: ->
    posts: []

  render: ->
    React.DOM.div
      className: 'post-container'

      React.DOM.h1
        className: 'post-container-title'
        'Posts'

      React.DOM.div
        null
        for post in @state.posts
          React.createElement Post, key: post.id, post: post
