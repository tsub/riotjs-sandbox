<todo-item>
  <span class={done: opts.done} onclick={toggle}>
    {opts.title}
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
    this.toggle = () => {
      this.opts.done = !opts.done;
    };
  </script>
</todo-item>