<?php /* Template Name: Events Template */ ?>
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
         <div class="col-md-5">
           <?php the_post_thumbnail( array( 255, 360 ) );  ?>
         </div>
         <div class="col-md-7">
           <?php the_content(); ?>
         </div>
       </div>
    <?php
    endwhile;
    else :
        _e( 'Sorry, no posts matched your criteria.', 'obsidian' );
    endif;
    ?>

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
        <div class="row">
          <div class="col-lg-12 text-center">
              <h2 class="sub-heading"><b>OUR RESIDENT DJS</b></h2>
          </div>
        </div>

        <div class="row">
          <div class="owl-carousel-dj owl-carousel owl-theme">
            <?php while ( $loop->have_posts() ) : $loop->the_post(); ?>
            <div class="item dj-profile">
              <a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>">
              <div class="dj-image">
                <?php the_post_thumbnail('post-thumbnail', ['class' => 'img-square img-responsive']); ?>
              </div>
              <div class="dj-content">
                <h3 class="dj-title"><?php the_title(); ?></h3>
                </a>
                <p class="dj-cat"><?php the_category(); ?></p>
              </div>
            </div>
            <?php endwhile; ?>
          </div>
        </div>
      </div>
    </div>

    <?php wp_reset_query();	 // Restore global post data stomped by the_post(). ?>

<?php get_footer(); ?>
