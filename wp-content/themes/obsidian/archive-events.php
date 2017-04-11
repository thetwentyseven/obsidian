<?php get_header(); ?>
<div class="container main-content ">
  <div class="col-md-8">


  <?php
  if ( have_posts() ) : while ( have_posts() ) : the_post();
  ?>
    <div class="page-header">
      <a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>">
    		<?php the_title( '<h2 class="blog-post-title">', '</h2>'); ?>
    	</a>
    </div>
   <!-- Example row of columns -->
   <div class="content">
     <?php the_excerpt(); ?>
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
