<?php
    get_header();
    // Custom loop
    if ( have_posts() ) : while ( have_posts() ) : the_post();
        ?>
        <div class="container main-content">
          <div class="page-header">
          		<?php the_title( '<h2 class="blog-post-title">', '</h2>'); ?>
          </div>
         <!-- Example row of columns -->
          <div class="row">
           <div class="col-md-8">
             <?php the_content(); ?>
           </div>
           <div class="col-md-4">
             <?php echo do_shortcode("[contact-form-7 id='1899' title='Contact Us']"); ?>
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
