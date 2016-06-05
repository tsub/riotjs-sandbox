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
    this.title = this.opts.title;
    this.done = this.opts.done;

    this.toggle = () => {
      this.done = !this.done;
    };
  </script>
</todo-item>