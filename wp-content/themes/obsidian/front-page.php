<?php get_header(); ?>

<div class="container content-transparent">
  <div class="front-page-header">
    <?php echo do_shortcode("[metaslider id=1866]"); ?>
  </div>
</div> <!-- end container -->

<?php
// Events custom type
$args = array(
  'post_type' => 'events',
  'orderby' => 'date',
  'order' => ASC,
  'posts_per_page' => 6 );

$loop = new WP_Query( $args );
?>

<div class="container marketing">
  <div class="row">
    <div class="col-lg-12 text-center">
      <h2 class="sub-heading"><b>THIS WEEKEND</b></h2>
    </div>
  </div>
  <div class="row">
    <?php while ( $loop->have_posts() ) : $loop->the_post(); ?>
    <div class="col-lg-4">
      <h3><b><?php the_title(); ?></b></h3>
      <?php the_post_thumbnail('post-thumbnail', ['class' => 'img-thumbnail', 'title' => 'Feature image']); ?>
      <a class="btn btn-hero" role="button" href="<?php the_permalink(); ?> ">View details &raquo;</a>
    </div><!-- /.col-lg-4 -->
    <?php endwhile; ?>
  </div><!-- /.row -->
</div><!-- /.container -->


<?php
// DJs custom type
$args = array(
  'post_type' => 'dj',
  'posts_per_page' => 6);

$loop = new WP_Query( $args );
?>

<div class="obsidian-section">
  <div class="container">
    <div class="col-lg-12 text-center">
        <h2 class="sub-heading"><b>OUR RESIDENT DJS</b></h2>
    </div>
    <?php while ( $loop->have_posts() ) : $loop->the_post(); ?>
    <div class="col-sm-4 dj-profile">
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
