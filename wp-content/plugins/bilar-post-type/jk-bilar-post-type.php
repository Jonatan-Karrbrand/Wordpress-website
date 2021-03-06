<?php
/*
Plugin Name: Anpassad Post Type Bilar
Description: Plugin för anpassade post typer
Author: Jonatan
*/
// Register Custom Post Type
function bilar_post_type() {

	$labels = array(
		'name'                  => _x( 'Bilar', 'Post Type General Name', 'text_domain' ),
		'singular_name'         => _x( 'Bil', 'Post Type Singular Name', 'text_domain' ),
		'menu_name'             => __( 'Bilar', 'text_domain' ),
		'name_admin_bar'        => __( 'Bilar', 'text_domain' ),
		'archives'              => __( 'Bilar Arkiv', 'text_domain' ),
		'attributes'            => __( 'Item Attributes', 'text_domain' ),
		'parent_item_colon'     => __( 'Parent Item:', 'text_domain' ),
		'all_items'             => __( 'Alla Bilar', 'text_domain' ),
		'add_new_item'          => __( 'Lägg till ny Bil', 'text_domain' ),
		'add_new'               => __( 'Lägg till ny Bil', 'text_domain' ),
		'new_item'              => __( 'Ny Bil', 'text_domain' ),
		'edit_item'             => __( 'Redigera bil', 'text_domain' ),
		'update_item'           => __( 'Uppdatera bil', 'text_domain' ),
		'view_item'             => __( 'Visa Bil', 'text_domain' ),
		'view_items'            => __( 'Visa Bilar', 'text_domain' ),
		'search_items'          => __( 'Search Item', 'text_domain' ),
		'not_found'             => __( 'Not found', 'text_domain' ),
		'not_found_in_trash'    => __( 'Not found in Trash', 'text_domain' ),
		'featured_image'        => __( 'Featured Image', 'text_domain' ),
		'set_featured_image'    => __( 'Set featured image', 'text_domain' ),
		'remove_featured_image' => __( 'Remove featured image', 'text_domain' ),
		'use_featured_image'    => __( 'Use as featured image', 'text_domain' ),
		'insert_into_item'      => __( 'Insert into item', 'text_domain' ),
		'uploaded_to_this_item' => __( 'Uploaded to this item', 'text_domain' ),
		'items_list'            => __( 'Items list', 'text_domain' ),
		'items_list_navigation' => __( 'Items list navigation', 'text_domain' ),
		'filter_items_list'     => __( 'Filter items list', 'text_domain' ),
	);
	$args = array(
		'label'                 => __( 'Bil', 'text_domain' ),
		'description'           => __( 'Post Type Description', 'text_domain' ),
		'labels'                => $labels,
		'supports'              => array( 'title' ),
		'taxonomies'            => array( 'category', 'post_tag' ),
		'hierarchical'          => true,
		'public'                => true,
		'show_ui'               => true,
		'show_in_menu'          => true,
		'menu_position'         => 5,
		'show_in_admin_bar'     => true,
		'show_in_nav_menus'     => true,
		'can_export'            => true,
		'has_archive'           => true,
		'exclude_from_search'   => false,
		'publicly_queryable'    => true,
		'capability_type'       => 'page',
	);
	register_post_type( 'bilar_post_type', $args );

}
add_action( 'init', 'bilar_post_type', 0 );
add_image_size( 'arkiv', 400 );
?>
