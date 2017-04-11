<?php get_header(); ?>
<div class="container main-content ">
  <div class="col-md-8">
    <div class="page-header">
        <h2><b>OUR RESIDENT DJS</b></h2>
    </div>
  <?php
  if ( have_posts() ) : while ( have_posts() ) : the_post();
  ?>

  <div class="col-sm-6 archive-dj-image">
    <a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>">
    <div class="col-sm-12 dj-image">
      <?php the_post_thumbnail('post-thumbnail', ['class' => 'img-square img-responsive', 'title' => 'Feature image']); ?>
    </div>
    <div class="col-sm-12 dj-content">
      <h3 class="dj-title"><?php the_title(); ?></h3>  </a>
      <p class="dj-cat">Music: <?php the_category(); ?></p>
      <p class="dj-social">
        <a href="https://www.facebook.com/mediaobsidian/" target="_blank">Facebook</a>
        /
        <a href="https://twitter.com/MediaObsidian" target="_blank">Twitter</a>
      </p>
    </div>
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
