<?php
/**
 * The template for displaying the header
 *
 * Displays all of the head element and everything up until the "site-content" div.
 */
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"
  integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
  crossorigin="anonymous"></script>
	<script src="https://use.fontawesome.com/cf23e52540.js"></script>
	<?php wp_head(); ?>
</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed">
    <div class="container">
			<div class="nav-pills navbar-left nav-info">
				<ul class="inline">
					<li>Contact: 0845 260 6040</li>
					<li>Opening Hours: Thursday-Saturday: 8:00PM - 3:00AM</li>
				</ul>
			</div>
			<div class="nav-pills navbar-right nav-social">
				<ul class="inline">
					<li><a href="https://www.facebook.com/mediaobsidian/" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
					<li><a href="https://twitter.com/MediaObsidian" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
					<li><a href="#" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
					<li><a href="#" target="_blank"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
				</ul>
			</div>
    </div>
  </nav>

	<nav class="navbar navbar-default" role="navigation">
	  <div class="container">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
				<?php if ( get_theme_mod( 'obsidian_logo' ) ) : ?>
				    <div class='site-logo'>
				        <a href='<?php echo esc_url( home_url( '/' ) ); ?>' title='<?php echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>' rel='home'><img src='<?php echo esc_url( get_theme_mod( 'obsidian_logo' ) ); ?>' alt='<?php echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>'></a>
				    </div>
				<?php else : ?>
				    <hgroup>
				        <h1 class='site-title'><a href='<?php echo esc_url( home_url( '/' ) ); ?>' title='<?php echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>' rel='home'><?php bloginfo( 'name' ); ?></a></h1>
				        <h2 class='site-description'><?php bloginfo( 'description' ); ?></h2>
				    </hgroup>
				<?php endif; ?>
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
	    </div>
        <?php
            wp_nav_menu( array(
                'menu'              => 'main-menu',
                'theme_location'    => 'Main Menu',
                'depth'             => 2,
                'container'         => 'div',
                'container_class'   => 'collapse navbar-collapse',
        				'container_id'      => 'bs-example-navbar-collapse-1',
                'menu_class'        => 'nav navbar-nav navbar-right',
                'fallback_cb'       => 'wp_bootstrap_navwalker::fallback',
                'walker'            => new wp_bootstrap_navwalker())
            );
        ?>
	  </div>
	</nav>
