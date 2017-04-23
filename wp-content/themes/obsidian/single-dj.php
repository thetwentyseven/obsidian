<?php get_header(); ?>
<div class="container main-content ">

  <?php
  if ( have_posts() ) : while ( have_posts() ) : the_post();
  ?>
    <div class="row">
      <div class="page-header">
      		<?php the_title( '<h2 class="blog-post-title">', '</h2>'); ?>
      </div>
    </div>

    <div class="row">
      <div class="col-md-2 single-dj-image">
        <?php the_post_thumbnail('thumbnail');  ?>
      </div>
      <div class="col-md-6">
       <div class="content">
         <?php the_content(); ?>
         <p class="dj-cat">Music: <?php the_category(); ?></p>
         <p class="dj-tag">Obsidian: <?php the_tags( '<ul class="post-tags"><li>', '</li><li>', '</li></ul>' ); ?></p>
         <p class="dj-social">
           <a href="https://www.facebook.com/mediaobsidian/" target="_blank">Facebook</a>
           /
           <a href="https://twitter.com/MediaObsidian" target="_blank">Twitter</a>
         </p>
       </div>
      </div>
      <div class="col-md-4">
        <?php dynamic_sidebar( 'dj_right_1' ); ?>
      </div>
    </div>

  <?php
  endwhile;
  else :
      _e( 'Sorry, no posts matched your criteria.', 'obsidian' );
  endif;
  ?>


</div>

<?php get_footer(); ?>
