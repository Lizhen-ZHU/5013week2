<redbag>
  <img src="Image/{ motion }.gif">


   <div>
     <div class="bar hunger">
       <div style="width:{ hunger }%;">&nbsp;</div>
     </div>
     <p>I have: { hunger } dollars</p>
   </div>


   <button onclick={ feed }>Send Money</button>
   <button onclick={ unfeed }>Take Money</button>


   <script>
     var that  = this;

     this.hunger = 50;
     this.motion = "fa";


     window.setInterval(function(){
       that.incHunger();
       that.update();
       that.checkStatus();
     }, 3000);


     decHunger() {
       this.hunger = this.hunger - 10 < 0 ? 0 : this.hunger - 10;
     }

     incHunger() {
       console.log(this.hunger);
       this.hunger = this.hunger + 10 > 100 ? 100 : this.hunger + 10;
     }

     checkStatus() {
       if (this.hunger >= 70){
         this.motion = "xie";
       } else if (this.hunger <= 40){
         this.motion = "deng";
       }
       else{
         this.motion = "fa";
       }
     }

     feed(e) {
       this.decHunger();
       this.checkStatus();
     }

     unfeed(e) {
       this.incHunger();
       this.checkStatus();
     }
   </script>

   <style>
   :scope{
     margin:auto;
   }

   img{
     weight:auto;
     height:500px;
     position: center;
   }
button{
padding: 0;
border: none;
background: url('http://pic.51yuansu.com/pic/cover/00/00/45/56efde8c54a2e_610.jpg');
background-size: cover;
width:150px;height:50px;
margin:50px;
color:white;
}
   </style>
</redbag>
