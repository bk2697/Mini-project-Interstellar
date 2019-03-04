<book>
  <!-- HTML -->
  <div class="container">
    <div class="row">

      <div class="col-sm-1">
        <!-- need to set up col -->

        <button onclick={ decreasePage } style='font-size:24px'><i class='fas fa-angle-double-left'></i></button>
      </div>
      <div class="col-sm-10">
        <div if={ page === 0 }>
          <br> <br>
          <br> <br>
          <br> <br>
          <div class="col-sm-4">
          <img class="img-responsive" src={bookArray[0].img} alt="bookPage1">
          </div>
          <div class="col-sm-6">
            <h2>{ bookArray[0].text }</h2>
            <br>
            <input type="text" ref="girlName" class="form-control" placeholder="First Name" onchange={ changeName }>
            <br>
             <a class="btn btn-primary" style="float: right;" onclick={ !changeName }>Submit</a>
             </div>
        </div>
        <div if={ page === 1 }>
          <h1 class="centered">{ bookArray[1].text }</h1>
          <!-- need to but height limit -->
          <img class="img-responsive" src={bookArray[1].img} alt="titlePage">
        </div>
        <div if={ page === 2 }>
          <h2>{ bookArray[2].text }</h2>
          <img class="img-responsive" src={bookArray[2].img} alt="bookPage1">
        </div>
        <div if={ page === 3 }>
          <h2>{ bookArray[3].text }</h2>
          <img class="img-responsive" src={bookArray[3].img} alt="bookPage2">
        </div>
        <div if={ page === 4 }>
          <book-activity> </book-activity>
          <!-- add trigger to send text to book-activity tag -->
          <!-- <h2>{ bookArray[4].text }</h2> -->
        </div>
        <div if={ page === 5 }>
          <h1 class="centered">{ bookArray[5].text }</h1>
          <img class="img-responsive" src={bookArray[5].img} alt="endPage">
        </div>
      </div>
      <div class="col-sm-1">
      
        <button onclick={ increasePage } style='font-size:24px'><i class='fas fa-angle-double-right'></i></button>
      </div>
      </div>
    </div>

  </div>


  <script>

    // JAVASCRIPT
    let tag = this;
    //girl name array
    name = "Brenda";
    //current page number
    this.page = 0;
    //book page array
    this.bookArray = [
      {text: "Hello! Before we begin reading this book, could you please tell me your name?",
      img: "Assets/images/interstellarcinderella_cover1.jpg"},
      {text: "Interstellar "+ { name } + "ella",
      img: "Assets/images/titlePage-empty.png"},
      {text: "Once upon a planetoid, amid her tools and sprockets, a girl named"+{ name }+"ella dreamed of fixing fancy rockets.",
      img: "Assets/images/bookPage1.png"},
      {text: "She fixed the robot dishwashers and zoombrooms in her care, but late each night, she snuck away to study her ship repair.",
      img: "Assets/images/bookPage2.png"},
      // activity will use this data for book-activity.tag
      {text: "Help { name }ella pick out the books which will help her learn more about ship repair.",
      img: ""},
      {text: "To be continued...",
      img: "Assets/images/endPage.png"}
    ];

    // functions for arrows -> change of pages
    this.increasePage = function(){
      (this.page >= 5) ? this.page = 5: this.page++
    }
    this.decreasePage = function(){
      (this.page <= 0) ? this.page = 0: this.page--
    }

    this.changeName = function(e){
      this.increasePage();
      this.name = this.refs.girlName.value;
      console.log(this.name);
    }
    // add trigger to send text to book-activity tag

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
