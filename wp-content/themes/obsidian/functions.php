<?php
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
