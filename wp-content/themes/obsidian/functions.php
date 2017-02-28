<?php

function bootstrapstarter_enqueue_styles() {
    wp_enqueue_style( 'obsidian-bootstrap-style', get_template_directory_uri() . '/bootstrap/css/bootstrap.min.css' );
    wp_enqueue_style( 'obsidian-style', get_template_directory_uri() . '/style.css' );
}

function bootstrapstarter_enqueue_scripts() {
    wp_enqueue_script('obsidian-bootstrap-js', get_template_directory_uri().'/bootstrap/js/bootstrap.min.js', '3.3.6', false );
}

add_action( 'wp_enqueue_scripts', 'bootstrapstarter_enqueue_styles' );
add_action( 'wp_enqueue_scripts', 'bootstrapstarter_enqueue_scripts' );


//remove_filter( 'the_content', 'wpautop');

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
												'menu_position' => 2,
												'menu_icon' => 'dashicons-calendar',
												'has_archive' => true,
												'supports' => array( 'title', 'editor', 'thumbnail' ),
												'can_export' => true,
												'hierarchical' => true,
												'taxonomies' => array('category', 'post_tag'),
											)
										);
}
