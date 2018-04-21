<?php 

// правильный способ подключить стили и скрипты темы
add_action( 'wp_enqueue_scripts', 'portfolio_scripts' );
function portfolio_scripts() {
    // подключаем файл стилей темы
    wp_enqueue_style( 'font-awesome-css', get_template_directory_uri().'/assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css' );
    wp_enqueue_style( 'header-css', get_template_directory_uri().'/assets/header/header.css' );
    wp_enqueue_style( 'animate-css', get_template_directory_uri().'/assets/libs/wow/animate.min.css' );
    wp_enqueue_style( 'style-name', get_stylesheet_uri() );

    // подключаем js файл темы
    wp_enqueue_script( 'jquery-js', 'https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js', [], null, true );
    wp_enqueue_script( 'jquery-migrate', get_template_directory_uri().'/assets/libs/jquery-migrate/jquery-migrate.min.js', ['jquery-js'], null, true );
    wp_enqueue_script( 'jquery-easy-scroll', get_template_directory_uri().'/assets/libs/jquery-easy-scroll/jquery.easeScroll.js', ['jquery-js'], null, true );
    wp_enqueue_script( 'slick-js', get_template_directory_uri().'/assets/libs/slick/slick.min.js', ['jquery-js'], null, true );
    wp_enqueue_script( 'main-js', get_template_directory_uri().'/assets/js/main.js', ['jquery-js'], null, true );
}

add_action('after_setup_theme', 'portfolio_after_setup');

function portfolio_after_setup()
{
    add_theme_support( 'post-thumbnails' );
} 