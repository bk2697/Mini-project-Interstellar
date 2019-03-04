<book-activity>
  <!-- HTML -->
  <!-- <div class={ correct:true, special:false, difficult:true }></div> -->

  <div class="container">
    <div class="row">
      <div class="col-sm-4" each={ imgList }>
        <div class="card">
          <div class="default-book">
            <img class="card-img-top img-activity" src={ img } alt={ title }>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script>
    // JAVASCRIPT
    let tag = this;
    // add lisciner
    this.imgList = [
        { img: "Assets/images/book1.png", title: 'book1', need: true},
        { img: "Assets/images/book2.png", title: 'book2', need: false},
        { img: "Assets/images/book3.png", title: 'book3', need: true},
        { img: "Assets/images/book4.png", title: 'book4', need: false},
        { img: "Assets/images/book5.png", title: 'book5', need: true}
    ];
    //console.log(this);
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
