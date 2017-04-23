<?php
    get_header();
    // Custom loop
    if ( have_posts() ) : while ( have_posts() ) : the_post();
        ?>
        <div class="container main-content">
          <div class="row">
            <div class="page-header">
            		<?php the_title( '<h1 class="blog-post-title">', '</h1>'); ?>
            </div>
          </div>
          <!-- Example row of columns -->
          <div class="row">
             <div class="col-md-4">
        				<div style="padding-bottom:20px;">
        					<a href="/wp-content/themes/obsidian/pdf/drink_menu.pdf" target="_blank">
                    <?php the_post_thumbnail( array( 350, 600 ) );  ?>
                  </a>
        				</div>
             </div>
      		   <div class="col-md-8">
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
