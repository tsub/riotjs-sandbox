<todo-item>
  <span class="done" onclick="{ toggle }">
    { opts.title }
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
      alert("hoge");
    }
  </script>
</todo-item>