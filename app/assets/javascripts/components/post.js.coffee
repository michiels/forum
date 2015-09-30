@Post = React.createClass
  render: ->
    React.DOM.div
      className: 'post'

      React.DOM.h2
        className: 'post-title'
        @props.post.title
      
      React.DOM.p
        className: 'post-content'
        @props.post.content

      React.DOM.p
        null
        @props.post.created_at
