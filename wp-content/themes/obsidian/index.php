<?php get_header(); ?>
<div class="container main-content ">
  <div class="col-md-8">
    <div class="page-header">
        <h2 class="blog-post-title">Blog</h2>
    </div>
  <?php
  if ( have_posts() ) : while ( have_posts() ) : the_post();
  ?>
    <div class="page-header-single-post">
      <a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>">
    		<?php the_title( '<h2 class="blog-post-title">', '</h2>'); ?>
    	</a>
    </div>
   <!-- Example row of columns -->
   <div class="content">
     <?php the_excerpt(); ?>
     <?php the_date(); ?> - <?php the_author(); ?>
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
