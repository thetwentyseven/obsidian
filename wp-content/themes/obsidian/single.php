<?php get_header(); ?>

<div class="container main-content ">

    <?php
    if ( have_posts() ) : while ( have_posts() ) : the_post();
    ?>
    <div class="page-header">
        <?php the_title( '<h1 class="blog-post-title">', '</h1>'); ?>
    </div>

    <div class="col-md-8">
     <!-- Example row of columns -->
     <div class="content">
       <?php the_content(); ?>
       <br>
       <p class="blog-post-meta"><?php the_date('F j, Y'); ?> by <a href="#"><?php the_author(); ?></a></p>
     </div>
    </div>
    <?php
    endwhile;
    else :
        _e( 'Sorry, no posts matched your criteria.', 'obsidian' );
    endif;
    ?>


  <div class="col-md-4 sidebar">
    <?php dynamic_sidebar( 'events_right_1' ); ?>
  </div>

</div>

<?php get_footer(); ?>
