<todo-item>
  <span class={done: done} onclick={toggle}>
    {title}
  </span>
  <style type="scss" scoped>
    :scope {
      cursor: pointer;

      .done {
        text-decoration: line-through;
      }
    }
  </style>
  <script>
    this.on('mount', () => {
      this.id = opts.id;
      this.title = opts.title;
      this.done = opts.done;
      this.store = opts.store;
    });

    this.toggle = () => {
      this.store.dispatch({
        type: 'TOGGLE_DONE',
        id: this.id
      });
    };
  </script>
</todo-item>