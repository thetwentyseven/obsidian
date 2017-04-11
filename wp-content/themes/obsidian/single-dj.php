<?php get_header(); ?>
<div class="container main-content ">

  <?php
  if ( have_posts() ) : while ( have_posts() ) : the_post();
  ?>
    <div class="col-md-2 single-dj-image">
      <?php the_post_thumbnail('thumbnail');  ?>
    </div>
    <div class="col-md-6">
      <div class="page-header">
      		<?php the_title( '<h2 class="blog-post-title">', '</h2>'); ?>
      </div>
     <!-- Example row of columns -->
     <div class="content">
       <?php the_content(); ?>
       <p class="dj-cat">Music: <?php the_category(); ?></p>
       <p class="dj-tag">Obsidian: <?php the_tags( '<ul class="post-tags"><li>', '</li><li>', '</li></ul>' ); ?></p>
     </div>
    </div>
  <?php
  endwhile;
  else :
      _e( 'Sorry, no posts matched your criteria.', 'obsidian' );
  endif;
  ?>


  <div class="col-md-4">
    <?php dynamic_sidebar( 'blog_right_1' ); ?>
  </div>

</div>

<?php get_footer(); ?>
