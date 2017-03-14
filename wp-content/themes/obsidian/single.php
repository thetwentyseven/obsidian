<?php
    get_header();
    // Custom loop
    if ( have_posts() ) : while ( have_posts() ) : the_post();
        ?>
        <div class="container main-content">
          <div class="page-header">
            <h1><?php the_title(); ?></h1>
          </div>
         <!-- Example row of columns -->
          <div class="row">
           <div class="col-md-12">
             <h2><?php  the_title(); ?></h2>
             <h3><?php the_author(); ?></h3>
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
