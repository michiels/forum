@PostForm = React.createClass
  getInitialState: ->
    title: ''
    content: ''

  handleChange: (e) ->
    @setState "#{ e.target.name }": e.target.value

  render: ->
    React.DOM.form
      className: 'form'
      method: 'post'

      React.DOM.div
        className: 'form-row'

        React.DOM.input
          className: 'form-field'
          type: 'text'
          placeholder: 'Title'
          name: 'post[title]'
          value: @state.title

      React.DOM.div
        className: 'form-row'

        React.DOM.textarea
          className: 'form-field'
          placeholder: 'Article contents'
          name: 'post[content]'
          value: @state.content

      React.DOM.div
        className: 'form-row'

        React.DOM.button
          className: 'form-button'
          type: 'submit'
          name: 'post[submit]'
          'Add Post'
