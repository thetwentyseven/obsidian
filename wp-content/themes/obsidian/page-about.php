<?php
    get_header();
    // Custom loop
    if ( have_posts() ) : while ( have_posts() ) : the_post();
        ?>
        <div class="container-fluid">
          <div class="row">
          <?php the_post_thumbnail( 'full' );  ?>
          </div>
         <!-- Example row of columns -->
          <div class="row" style="margin:30px 0px 15px 0px;">
           <div class="col-md-10 col-md-offset-1">
             <?php the_content(); ?>
           </div>
         </div>
        </div>
        <?php
    endwhile;
    else :
        _e( 'Sorry, no posts matched your criteria.', 'obsidian' );
    endif;
    //get_sidebar();
    get_footer();
?>
