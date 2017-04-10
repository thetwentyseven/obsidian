<?php get_header(); ?>
<div class="container main-content ">
  <div class="col-md-8">

  <?php
  if ( have_posts() ) : while ( have_posts() ) : the_post();
  ?>
    <div class="page-header">
    		<?php the_title( '<h2 class="blog-post-title">', '</h2>'); ?>
    </div>
   <!-- Example row of columns -->
   <div class="content">
     <?php the_content(); ?>
   </div>

  <?php
  endwhile;
  else :
      _e( 'Sorry, no posts matched your criteria.', 'obsidian' );
  endif;
  ?>
  </div>

  <div class="col-md-4">
    <?php dynamic_sidebar( 'blog_right_1' ); ?>
  </div>

</div>

<?php get_footer(); ?>
