<?php

function bootstrapstarter_enqueue_styles() {
    wp_enqueue_style( 'obsidian-bootstrap-style', get_template_directory_uri() . '/bootstrap/css/bootstrap.min.css' );
    wp_enqueue_style( 'obsidian-animate', get_template_directory_uri() . '/animate/animate.css' );
    wp_enqueue_style( 'obsidian-style', get_template_directory_uri() . '/style.css' );
    wp_enqueue_style( 'obsidian-shop-style', get_template_directory_uri() . '/css/shop.css' );
}

function bootstrapstarter_enqueue_scripts() {
    wp_enqueue_script('obsidian-bootstrap-js', get_template_directory_uri().'/bootstrap/js/bootstrap.min.js', '3.3.6', false );
    wp_enqueue_script('obsidian-animate-js', get_template_directory_uri().'/animate/animate.js', '1.0.0', false );
    wp_enqueue_script( 'twitterFetcher', get_template_directory_uri() . '/js/twitterFetcher.js', array(), '6.0.3', true );
}

add_action( 'wp_enqueue_scripts', 'bootstrapstarter_enqueue_styles' );
add_action( 'wp_enqueue_scripts', 'bootstrapstarter_enqueue_scripts' );



// Register Custom Navigation Walker
require_once('wp_bootstrap_navwalker.php');

/**
 * Register a new menu.
 *
 *
 */
function register_my_menus() {
  register_nav_menus(
    array(
      'header-menu' => __( 'Header Menu' ),
      'extra-menu' => __( 'Extra Menu' )
     )
   );
 }
 add_action( 'init', 'register_my_menus' );



/**
 * Create a new custom post type of events.
 *
 *
 */
add_action('init', 'custom_events_post_type');

function custom_events_post_type(){
	register_post_type('events',
											array(
												'labels' => array('name' => 'Events'),
												'public' => true,
												'menu_position' => 5,
												'menu_icon' => 'dashicons-calendar',
												'has_archive' => true,
												'supports' => array( 'title', 'editor', 'thumbnail' ),
												'can_export' => true,
												'hierarchical' => true,
												'taxonomies' => array('category', 'post_tag'),
											)
										);
}


add_action('init', 'custom_djs_post_type');

function custom_djs_post_type(){
	register_post_type('dj',
											array(
												'labels' => array('name' => 'DJs'),
												'public' => true,
												'menu_position' => 4,
												'menu_icon' => 'dashicons-album',
												'has_archive' => true,
												'supports' => array( 'title', 'editor', 'thumbnail' ),
												'can_export' => true,
												'hierarchical' => true,
												'taxonomies' => array('category', 'post_tag'),
											)
										);
}


function obsidian_theme_customizer( $wp_customize ) {
    // Fun code will go here
    $wp_customize->add_section( 'obsidian_logo_section' , array(
    'title'       => __( 'Logo', 'obsidian' ),
    'priority'    => 30,
    'description' => 'Upload a logo to replace the default site name and description in the header',
    ) );

    $wp_customize->add_setting( 'obsidian_logo' );

    $wp_customize->add_control( new WP_Customize_Image_Control( $wp_customize, 'obsidian_logo', array(
        'label'    => __( 'Logo', 'obsidian' ),
        'section'  => 'obsidian_logo_section',
        'settings' => 'obsidian_logo',
    ) ) );

}
add_action( 'customize_register', 'obsidian_theme_customizer' );


/**
 * Register widget areas.
 *
 */
function obsidian_footer_widgets_init() {

	register_sidebar( array(
		'name'          => 'Footer right sidebar',
		'id'            => 'footer_right_1',
		'before_widget' => '<div>',
		'after_widget'  => '</div>',
		'before_title'  => '<h2 class="rounded">',
		'after_title'   => '</h2>',
	) );

}
add_action( 'widgets_init', 'obsidian_footer_widgets_init' );


function obsidian_events_widgets_init() {

	register_sidebar( array(
		'name'          => 'Events right sidebar',
		'id'            => 'events_right_1',
		'before_widget' => '<div>',
		'after_widget'  => '</div>',
		'before_title'  => '<h2 class="rounded">',
		'after_title'   => '</h2>',
	) );

}
add_action( 'widgets_init', 'obsidian_events_widgets_init' );


function obsidian_shop_widgets_init() {

	register_sidebar( array(
		'name'          => 'Shop right sidebar',
		'id'            => 'shop_right_1',
    'before_widget' => '<div>',
    'after_widget'  => '</div>',
    'before_title'  => '<h2 class="rounded">',
    'after_title'   => '</h2>',
  ) );

}
add_action( 'widgets_init', 'obsidian_shop_widgets_init' );


function obsidian_blog_widgets_init() {

	register_sidebar( array(
		'name'          => 'Blog right sidebar',
		'id'            => 'blog_right_1',
    'before_widget' => '<div>',
    'after_widget'  => '</div>',
    'before_title'  => '<h2 class="rounded">',
    'after_title'   => '</h2>',
  ) );

}
add_action( 'widgets_init', 'obsidian_blog_widgets_init' );


/* Disable breadcrumbs in WooCommerce */
remove_action( 'woocommerce_before_main_content','woocommerce_breadcrumb', 20, 0);
