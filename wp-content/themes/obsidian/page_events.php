<?php /* Template Name: Events Template */ ?>
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
     <div class="col-md-5">
       <?php the_post_thumbnail( array( 255, 360 ) );  ?>
     </div>
     <div class="col-md-7">
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
      <?php dynamic_sidebar( 'events_right_1' ); ?>
    </div>
</div>
    <?php
    switch ($theme) {
      case 'Drum & Bass':
        $theme = 'DRUM&BASS';
        break;
      case 'EDM':
        break;
      case 'POP':
        break;
      default:
        $theme = 'DRUM&BASS';
    }

    $args = array(
      'post_type' => 'dj',
      'category_name' => $theme,
      'posts_per_page' => 6 );

    $loop = new WP_Query( $args );
    ?>

    <div class="obsidian-section">
      <div class="container">
        <div class="col-lg-12 text-center">
            <h2 class="sub-heading"><b>OUR RESIDENT DJS</b></h2>
        </div>
        <?php while ( $loop->have_posts() ) : $loop->the_post(); ?>
        <div class="col-sm-6 dj-profile">
          <div class="col-sm-12 dj-image">
            <?php the_post_thumbnail('post-thumbnail', ['class' => 'img-square img-responsive', 'title' => 'Feature image']); ?>
          </div>
          <div class="col-sm-12 dj-content">
            <h3 class="dj-title"><?php the_title(); ?></h3>
            <p class="dj-cat">Music: <?php the_category(); ?></p>
            <p class="dj-tag">Obsidian: <?php the_tags( '<ul class="post-tags"><li>', '</li><li>', '</li></ul>' ); ?></p>
            <p class="dj-social">
              <a href="https://www.facebook.com/mediaobsidian/" target="_blank">Facebook</a>
              /
              <a href="https://twitter.com/MediaObsidian" target="_blank">Twitter</a>
            </p>
          </div>
          <div class="col-sm-12 dj-quote">
            <p><?php the_content(); ?></p>
          </div>
        </div>
        <?php endwhile; ?>
      </div>
    </div>
    <?php wp_reset_query();	 // Restore global post data stomped by the_post(). ?>

<?php get_footer(); ?>
