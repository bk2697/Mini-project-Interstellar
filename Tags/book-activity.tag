<book-activity>
  <!-- HTML -->

  <!-- <div class={ correct:true, special:false, difficult:true }></div> -->

<!-- h2 text -->
  <h2> Help { opts.user }ella pick out the books which will help her learn more about ship repair.</h2>

<!-- book Activity -->
  <div class="container">
    <div class="row">

      <div class="col-sm-4" each={ item, i in imgList } >

        <div class="card { colorChange(item) }">
          {console.log(this)}
          <div class="default-book" >
           <button class="bookButton" value={i} type="button" onclick = { alert }>
             <img class="card-img-top img-activity " src={ item.img } alt={ item.title } >
           </button>
          <p> { item.text } </p>
          </div>
        </div>
      </div>

    </div>
  </div>


  <script>
    // JAVASCRIPT
    let tag = this;


     // add listener
     this.imgList = [
        {
          img: "Assets/images/book1.png",
          title: 'book1',
          need: true,
          clicked: false,
          text: "The Ins and Outs of Ships",
        },
        {
          img: "Assets/images/book2.png",
          title: 'book2',
          need: false,
          clicked: false,
          text: "Guide to the Universe",
        },
        {
          img: "Assets/images/book3.png",
          title: 'book3',
          need: true,
          clicked: false,
          text: "Who Says Girls Can't Build",
        },
        {
          img: "Assets/images/book4.png",
          title: 'book4',
          need: false,
          clicked: false,
          text: "Space Monsters",
        },
        {
          img: "Assets/images/book5.png",
          title: 'book5',
          need: true,
          clicked: false,
          text: "Speedy Spaceships: How to make your ship fly faster",
        },
    ];

    // alert


    this.alert = function(e){

      if ( this.imgList[e.currentTarget.value].need){

        alert("Good job!!! Pick another one to continue your study.");
        this.imgList[e.currentTarget.value].clicked = true;
      } else {

        alert("That was a good guess. Try another one.");
        this.imgList[e.currentTarget.value].clicked = true;
      }
    }


    this.colorChange = function(item){

      if (item.clicked == true ) {
        if (item.need == true) {
          return "correct";
        } else {
          return "incorrect";
        }
      } else{
        return null;
      }
    }






  </script>

  <style>


    .correct{
      background-color:#dbfff0;
    }
    .incorrect{
      background-color:#fcdcd4;
    }


  </style>
</book-activity>
