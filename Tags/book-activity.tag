<book-activity>
  <!-- HTML -->

  <!-- <div class={ correct:true, special:false, difficult:true }></div> -->

  <div class="container">
    <div class="row">
      <div class="col-sm-4" each={ item, i in imgList }>
        <div class="card">
          <div class="default-book">
           <button id="bookButton" class={correct: need incorrect: !need } type="button" onclick = { alert }>

            <img class="card-img-top img-activity" src={ item.img } alt={ item.title } >
           </button>




          </div>
        </div>
      </div>
    </div>
  </div>

  <script>
    // JAVASCRIPT
    let tag = this;
     //add lisciner

     // add listener
     this.imgList = [
        { img: "Assets/images/book1.png", title: 'book1', need: true},
        { img: "Assets/images/book2.png", title: 'book2', need: false},
        { img: "Assets/images/book3.png", title: 'book3', need: true},
        { img: "Assets/images/book4.png", title: 'book4', need: false},
        { img: "Assets/images/book5.png", title: 'book5', need: true}
    ];

    // alert

    this.alert = function(){
debugger;
      if ( this.imgList.need){
        alert("Good job!!! Pick another one to continue your study.");
      } else {
        alert("Try another one.");
        this.bookButton.style.background = green ;
      }
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
</book-activity>
