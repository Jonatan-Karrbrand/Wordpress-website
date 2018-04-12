<?php
// Egen Funktion 1 - Egna bild storlekar
add_image_size( 'del1_bild', 600 );
add_image_size( 'face', 200 );
add_image_size( 'bilar', 400 );

// Egen Funktion 2 - Dölj inloggs fel
function no_error(){
  return'Något är fel!';
}
add_filter('login_errors' , 'no_error');

// Egen Funktion 3 - Ta bort välkommen panelen
remove_action('welcome_panel' , 'wp_welcome_panel');

// Egen Funktion 4 - Short codes
function add_shortcode1(){
  return'<p>Kolla gärna in våra <a href="http://localhost/slutprojekt/bilar_post_type/">bilar</a></p>';
}
add_shortcode('kolla' , 'add_shortcode1');

// Egen Funktion 5 - Pris filter
function mitt_pris_filter($bil_pris){
  if (get_locale() === 'sv_SE'){
    return $bil_pris . ' Kr';
  }
  else {
    return $bil_pris / 10 . ' Euro';
  }
}
add_filter ('mitt_pris_filter' , 'mitt_pris_filter');

// Egen Funktion 6 - Excerpt redigera längd
function excerpt_custom_lengt(){
  return 20;
}
add_filter('excerpt_length', 'excerpt_custom_lengt');

// Egen Funktion 7 - Excerpt redigera mer text
function edit_more_text(){
  return "<a href=".get_permalink()." > (Läs mer)</a>";
}
add_filter('excerpt_more', 'edit_more_text');

// Registrerar menyer i temat
function registrera_meny() {
register_nav_menus(array("main-menu" => __("Main Menu")));
}
add_action('init', 'registrera_meny');

// Widgets
function min_widgets_init() {

    // Widget 1.
    register_sidebar( array(
        'name' => __( 'Blogg Widget 1' ),
        'id' => 'widget1',
        'description' => __( 'The first header widget area' ),
        'before_widget' => '<div id="%1$s" class="widget %2$s">',
        'after_widget' => '</div>',
        'before_title' => '<h4 class="widget-title">',
        'after_title' => '</h4>',
    ) );
}
add_action( 'widgets_init', 'min_widgets_init' );

// Enque styles
function queCss(){
  wp_enqueue_style( 'fonts', 'https://fonts.googleapis.com/css?family=Open+Sans' );
  wp_enqueue_style( 'main', get_template_directory_uri().'/css/style.css' );
  wp_enqueue_script( 'fontawesome', 'https://use.fontawesome.com/releases/v5.0.3/js/all.js' );

}
add_action('wp_enqueue_scripts', 'queCss');

// Thumbnail support
add_theme_support( 'post-thumbnails' );
