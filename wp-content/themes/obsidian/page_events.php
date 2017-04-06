<?php /* Template Name: Events Template */ ?>
<?php
    get_header();
    // Custom loop
    if ( have_posts() ) : while ( have_posts() ) : the_post();
        ?>
        <div class="container main-content">
          <div class="page-header" style="padding-left:15px;">            
          		<?php the_title( '<h1 class="blog-post-title" style="color:#e30613;">', '</h1>'); ?>          	
          </div>
         <!-- Example row of columns -->
			<div class="row">				
				<div class="col-md-3">
					<div style="padding-left:15px; padding-bottom:20px;">
					<?php the_post_thumbnail( array( 255, 360 ) );  ?>
					</div>
				</div>
				<div class="col-md-6">             
					<?php the_content(); ?>			 
				</div>
				<div class="col-md-3">
					<div style="margin-top:-20px; color:#e30613;">
					<?php dynamic_sidebar( 'events_right_1' ); ?>		 
					</div>
				</div>
			</div>
		</div>
        <?php
    endwhile;
    else :
        _e( 'Sorry, no posts matched your criteria.', 'obsidian' );
    endif;    
    get_footer();
?>
