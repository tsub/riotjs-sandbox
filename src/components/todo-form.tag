<todo-form>
  <form onsubmit={add}>
    <input name="input" type="text" placeholder="New Todo" autofocus="true">
    <input type="submit" value="Add Todo">
  </form>
  <script>
    this.on('mount', () => {
      this.store = opts.store;
      this.nextId = 0;
    });

    this.add = () => {
      if (this.input.value) {
        this.store.dispatch({
          type: 'ADD_TODO',
          id: ++this.nextId,
          title: this.input.value
        });
        this.input.value = '';
      }
    };
  </script>
</todo-form>
