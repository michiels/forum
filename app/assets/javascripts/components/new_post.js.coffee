@PostForm = React.createClass
  getInitialState: ->
    title: ''
    content: ''

  handleSubmit: (e) ->
    e.preventDefault()
    $.post '', {post: @state}, (data) ->
      @props.handleNewPost data
      @setState @getInitialState()
      'JSON'

  handleChange: (e) ->
    console.log e
    @setState "#{ e.target.name }": e.target.value

  render: ->
    React.DOM.form
      className: 'form'
      method: 'post'
      onSubmit: @handleSubmit

      React.DOM.div
        className: 'form-row'

        React.DOM.input
          className: 'form-field'
          type: 'text'
          placeholder: 'Title'
          name: 'title'

      React.DOM.div
        className: 'form-row'

        React.DOM.textarea
          className: 'form-field'
          placeholder: 'Article contents'
          name: 'content'

      React.DOM.div
        className: 'form-row'

        React.DOM.button
          className: 'form-button'
          type: 'submit'
          name: 'submit'
          'Add Post'
