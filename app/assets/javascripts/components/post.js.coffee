@Post = React.createClass
  render: ->
    React.DOM.div
      className: 'post'

      React.DOM.h2
        className: 'post-title'
        @props.post.title

      React.DOM.div
        className: 'post-content'
        dangerouslySetInnerHTML:
          __html: @props.post.content

      React.DOM.p
        className: 'post-footer'
        @props.post.created_at
