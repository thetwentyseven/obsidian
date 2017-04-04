<?php
    get_header();
    // Custom loop
    if ( have_posts() ) : while ( have_posts() ) : the_post();
        ?>
        <div class="container main-content">
          <div class="front-page-header">
            <!-- Example row of columns -->
             <div class="row">
              <div class="">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                   <!-- Indicators -->
                   <ol class="carousel-indicators">
                     <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                     <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                     <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                   </ol>

                   <!-- Wrapper for slides -->
                   <div class="carousel-inner" role="listbox">
                     <div class="item active">
                       <img src="wp-content/themes/obsidian/img/slider/slider_1_crop_black.jpg" alt="...">
                       <div class="carousel-caption hero">
                         <hgroup class="hero">
                              <h1>Thursday night!</h1>
                              <h3>Get start your next awesome parties</h3>
                          </hgroup>

                       </div>
                     </div>
                     <div class="item">
                       <img src="wp-content/themes/obsidian/img/slider/slider_2_crop_black.jpg" alt="...">
                       <div class="carousel-caption">
                         <hgroup class="hero">
                              <h1>Friday night!</h1>
                              <h3>Get start your next awesome parties</h3>
                          </hgroup>

                       </div>
                     </div>
                     <div class="item">
                       <img src="wp-content/themes/obsidian/img/slider/slider_3_crop_black.jpg" alt="...">
                       <div class="carousel-caption">
                         <hgroup class="hero">
                              <h1>Saturday night!</h1>
                              <h3>Get start your next awesome parties</h3>
                          </hgroup>

                       </div>
                     </div>
                   </div>

                   <!-- Controls -->
                   <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                     <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                     <span class="sr-only">Previous</span>
                   </a>
                   <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                     <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                     <span class="sr-only">Next</span>
                   </a>
                 </div>  <!-- end carousel -->
               </div> <!-- end column -->

         </div>  <!-- end row -->
       </div> <!-- end page header -->
     </div> <!-- end container -->


     <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">
      <hr class="featurette-divider">
      <!-- Three columns of text below the carousel -->
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="sub-heading">THIS WEEKEND</h2>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-4">
          <h3><b>Drum &amp; Bass</b></h3>
          <p class="day">Thursday</p>
          <p class="date">27th April</p>
          <img class="img-thumbnail" src="wp-content/themes/obsidian/img/promotion/drum_and_bass.jpg" alt="Generic placeholder image">
          <a class="btn btn-hero" role="button" href="<?php echo esc_url( get_permalink( get_page_by_title( 'Drum & Bass' ) ) ); ?>">View details &raquo;</a>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <h3><b>EDM</b></h3>
          <p class="day">Friday</p>
          <p class="date">28th April</p>
          <img class="img-thumbnail" src="wp-content/themes/obsidian/img/promotion/edm.jpg" alt="Generic placeholder image">
          <a class="btn btn-hero" role="button" href="<?php echo esc_url( get_permalink( get_page_by_title( 'EDM' ) ) ); ?>">View details &raquo;</a>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <h3><b>POP</b></h3>
          <p class="day">Saturday</p>
          <p class="date">29th April</p>
          <img class="img-thumbnail" src="wp-content/themes/obsidian/img/promotion/pop.jpg" alt="Generic placeholder image">
          <a class="btn btn-hero" role="button" href="<?php echo esc_url( get_permalink( get_page_by_title( 'POP' ) ) ); ?>">View details &raquo;</a>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->


      <!-- START THE FEATURETTES -->

      <hr class="featurette-divider">
      <!-- Team Members Row -->
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="sub-heading">OUR RESIDENT DJS</h2>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
                <p class="dj">DJ Jadey</p>
                <img class="img-circle img-responsive img-center" src="wp-content/themes/obsidian/img/dj/dj1.jpg" alt="Image of resident DJ">
                <p>DJ Jadey often works for BBC radio. He specializes in a pop music and charts. </p>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
                <p class="dj">DJ Dimi T.</p>
                <img class="img-circle img-responsive img-center" src="wp-content/themes/obsidian/img/dj/dj2.jpg" alt="Image of resident DJ">
                <p>Dimi T has been a Drum &amp; Bass DJ since the 70s colaborating with Fill Turner at the Broken Records.</p>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
                <p class="dj">MC Vic</p>
                <img class="img-circle img-responsive img-center" src="wp-content/themes/obsidian/img/dj/dj3.jpg" alt="Image of resident DJ">
                <p>MC Vic is our youngest star. She has been playing in Creamfield and Dreamland.</p>
            </div>
        </div>
      <!-- /END THE FEATURETTES -->
      </div><!-- /.container -->
        <?php
    endwhile;
    else :
        _e( 'Sorry, no posts matched your criteria.', 'obsidian' );
    endif;
    //get_sidebar();
    get_footer();
?>
