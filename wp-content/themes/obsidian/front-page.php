<?php get_header(); ?>

<div class="container content-transparent">
  <div class="front-page-header">
    <?php echo do_shortcode("[metaslider id=1866]"); ?>
  </div>
</div> <!-- end container -->

<div class="container">
  <div class="row">
    <div class="col-lg-12 text-center">
      <h2 class="sub-heading"><b>ABOUT US</b></h2>
    </div>
  </div>
	<div class="row">
		<div class="jumbotron">
          <h1>Obsidian Club</h1>
          <p>Obsidian opened on 25th October 2016; though it started as an idea many years prior to that.
            The building alone took over three years to convert but the club now stands proudly in
            the renovated space of the Old Town of Edinburgh.</p>
          <p>The Obsidian team promises a tailored event experience, executed to your specifications.
            The club is available for hire Sunday to Wednesday. Potential events include corporate parties &
            drink receptions, conferences & presentations, fashion shows, formal dinners and award ceremonies.</p>
          <p><a class="button btn-lg">Learn more</a></p>
        </div>
	</div>
</div>


<?php
// Events custom type
$args = array(
  'post_type' => 'events',
  'orderby' => 'date',
  'order' => ASC,
  'posts_per_page' => 3);

$loop = new WP_Query( $args );
?>

<div class="container marketing">
  <div class="row">
    <div class="col-lg-12 text-center">
      <h2 class="sub-heading"><b>THIS WEEKEND</b></h2>
    </div>
  </div>
  <div class="row">
    <div class="owl-carousel owl-theme">
      <?php while ( $loop->have_posts() ) : $loop->the_post(); ?>
      <div class="item">
        <a class="event-link" href="<?php the_permalink(); ?> ">
          <h3 class="event-title"><b><?php the_title(); ?></b></h3>
          <?php the_post_thumbnail('post-thumbnail', ['class' => 'img-thumbnail']); ?>
        </a>
      </div><!-- /.col-lg-4 -->
      <?php endwhile; ?>
    </div><!-- /.row -->
  </div>
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
            <p class="dj-cat">Music: <?php the_category(); ?></p>
            <p class="dj-tag">Obsidian: <?php the_tags( '<ul class="post-tags"><li>', '</li><li>', '</li></ul>' ); ?></p>
            <p class="dj-social">
              <a href="https://www.facebook.com/mediaobsidian/" target="_blank">Facebook</a>
              /
              <a href="https://twitter.com/MediaObsidian" target="_blank">Twitter</a>
            </p>
          </div>
          <div class="dj-quote">
            <p><?php the_content(); ?></p>
          </div>
        </div>
        <?php endwhile; ?>
      </div>
    </div>
  </div>
</div>

<?php wp_reset_query();	 // Restore global post data stomped by the_post(). ?>

<?php get_footer(); ?>
