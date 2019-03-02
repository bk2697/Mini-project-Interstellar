<book>
  <!-- HTML -->
  <div class="container">
    <div class="row">
      <div class="col-3">
       <span style='font-size:100px;'>&#8249;</span>
      </div>
      <div class="col-6" if={ page === 0 }>
        <h2>{ bookArray[0].text }</h2>
      </div>
      <div class="col-6" if={ page === 1 }>
        <h2>{ bookArray[1].text }</h2>
      </div>
      <div class="col-6" if={ page === 2 }>
        <h2>{ bookArray[2].text }</h2>
      </div>
      <div class="col-6" if={ page === 3 }>
        <h2>{ bookArray[3].text }</h2>
      </div>
      <div class="col-6" if={ page === 4 }>
        <h2>{ bookArray[4].text }</h2>
      </div>
      <div class="col-6" if={ page === 5 }>
        <h2>{ bookArray[5].text }</h2>
      </div>
      <div class="col-3">
       <span style='font-size:100px;'>&#8250;</span>
      </div>
    </div>

  </div>


  <script>
  // JAVASCRIPT
  let tag = this;
  //girl name array
  this.name = "Brenda";
  //current page number NEED TO THINK OF A WAY OF UPDATING IT!
  this.page = 2;
  //book page array
  this.bookArray = [
    {
      text: "Hello! Before we begin reading this book, could you please tell me your name?",
      img: ""
    }, {
      text: "",
      img: ""
    }, {
      text: "Once upon a planetoid, amid her tools and sprockets, a girl named" + {
        name
      } + "ella dreamed of fixing fancy rockets.",
      img: ""
    }, {
      text: "She fixed the robot dishwashers and zoombrooms in her care, but late each night, she snuck away to study her ship repair.",
      img: ""
    }, {
      text: "Help { name }ella pick out the books which will hep her learn more about ship repair.",
      img: ""
    }, {
      text: "To be continued...",
      img: ""
    }
  ];
  // let this.intro = bookArray[0].text;  this.myMsg = "Hello!";  this.foo = "special";
  //
  //  this.bar = function(event) {    alert('CLICKED!');    tag.myMsg = "Goodbye!"; }
  </script>

  <style>
  /* CSS */
  :scope {}
  .special {
    background-color: #333333;
    color: #FFFFFF;
  }
  </style>
</book>
