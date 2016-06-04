<todo-form>
  <form onsubmit={add}>
    <input name="input" type="text" placeholder="New Todo" autofocus="true">
    <input type="submit" value="Add Todo">
  </form>
  <button onclick="{clear}">Clear Completed</button>
  <script>
    this.add = () => {
      if (this.input.value) {
        this.opts.todos.push({ title: this.input.value });
        this.input.value = '';
      }
    };

    this.clear = () => {
      this.input.value = '';
    };
  </script>
</todo-form>
