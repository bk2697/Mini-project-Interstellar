<tag>
  <!-- HTML -->
  <div if{ === }class={ foo } onclick={ bar }>{ myMsg }</div>

  <script>
    // JAVASCRIPT
    let tag = this;
    //girl name array
    let name = ""
    //book page array
    let bookArray = [
      {text: "Hello! Before we begin reading this book, could you please tell me your name?",
      img: ""},
      {text: "",
      img: ""},
      {text: "Once upon a planetoid, amid her tools and sprockets, a girl named { name }ella dreamed of fixing fancy rockets.",
      img: ""},
      {text: "She fixed the robot dishwashers and zoombrooms in her care, but late each night, she snuck away to study her ship repair.",
      img: ""},
      {text: "Help Cinderella pick out the books which will hep her learn more about ship repair.",
      img: ""},
      {text: "To be continued...",
      img: ""}
    ]
    this.myMsg = "Hello!";
    this.foo = "special";

    this.bar = function(event) {
      alert('CLICKED!');
      tag.myMsg = "Goodbye!";
    }
  </script>

  <style>
    /* CSS */
    :scope {}
    .special {
      background-color: #333333;
      color: #FFFFFF;
    }
  </style>
</tag>
