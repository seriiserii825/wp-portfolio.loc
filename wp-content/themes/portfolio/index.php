<!doctype html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Portfolio</title>
        <?php wp_head(); ?>
    </head>
    <body>
        <header class="main-header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <div class="img-wrap">
                            <img src="<?php bloginfo('template_url'); ?>/assets/i/header-photo.png" alt="alt">
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="designer">
                            <div class="img-wrap">
                                <img src="<?php bloginfo('template_url'); ?>/assets/i/user.png" alt="alt">
                            </div>
                            <h5 class="designer__title">Верстальщик</h5>
                        </div>
                        <ul class="main-menu">
                            <li class="main-menu__item">
                                <a href="" class="main-menu__link">Работы</a>
                            </li>
                            <li class="main-menu__item">
                                <a href="#js-about" class="main-menu__link">Мои навыки</a>
                            </li>
                            <li class="main-menu__item">
                                <a href="#js-work" class="main-menu__link">Контакты</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>
        <div class="main">
            <div class="container">
                <!--slider-->
                <div class="row">
                    <div class="col-12">
                        <div class="slider-wrap">
                            <div class="slider__header border-bottom">
                                <h3 class="title">selected works</h3>
                                <div class="buttons-wrap"></div>
                            </div>
                            <h3 class="title title_small">Слайды кликабельны и открываются в новой вкладке...</h3>

                            <div class="slider__content" id="slider">
                                <?php $slider = new WP_Query([
                                    'post_type' => 'post',
                                    'posts_per_page' => -1,
                                    'cat' => 3    
                                    ]); ?>

                                <?php if ( $slider->have_posts() ) : while ( $slider->have_posts() ) : $slider->the_post(); ?>
                                  <div class="slider__item">
                                        <a href="<?php the_field('portfolio_link'); ?>" target="_blank">
                                            <?php the_post_thumbnail( 'full' ); ?>
                                        </a>
                                    </div>
                                  <?php endwhile; ?>
                                  <!-- post navigation -->
                                  <?php else: ?>
                                  <!-- no posts found -->
                                <?php endif; ?>
                            </div>


                        </div>
                    </div>
                </div>
                <!--slider-2-->
                <div class="row">
                    <div class="col-12">
                        <div class="slider__content-2" id="slider-small">
                            <?php $slider = new WP_Query([
                                'post_type' => 'post',
                                'posts_per_page' => -1,
                                'cat' => 3    
                                ]); ?>

                            <?php if ( $slider->have_posts() ) : while ( $slider->have_posts() ) : $slider->the_post(); ?>
                              <div class="slider-small__item">
                                <a href="#">
                                    <img src="<?php echo the_field('small-img'); ?>" alt="alt">
                                </a>
                                </div>
                              <?php endwhile; ?>
                              <!-- post navigation -->
                              <?php else: ?>
                              <!-- no posts found -->
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
                <!--about-->
                <div class="row">
                    <div class="col-12">
                        <div class="section-top"></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8">
                        <h3 class="title border-bottom" id="js-about">Мои навыки</h3>
                        <ul class="about-list">
                            <li class="about-list__item">Landing page</li>
                            <li class="about-list__item">Промо-сайты</li>
                            <li class="about-list__item">Сайты на WordPress</li>
                            <li class="about-list__item">Интернет-магазины</li>
                            
                        </ul>
                        <h3 class="title border-bottom" id="js-about">Мои контакты</h3>
                        <ul class="about-list">
                            <li class="about-list__item">Почта: seriiburduja@gmail.com</li>
                            <li class="about-list__item">Skype: seriiserii825</li>
                            <li class="about-list__item">vk: https://vk.com/serii1981</li>
                            <li class="about-list__item">Телефон: +37360562168</li>
                            
                        </ul>
                    </div>
                    <div class="col-lg-4">
                        <div class="sidebar">
                            <div class="sidebar-block">
                                <h4 class="title title_small border-bottom">skillset</h4>
                                <ul class="skill-list">
                                    <li class="skill-list__item">
                                        <span class="skill-list__text">HTML/CSS</span>
                                        <div class="stars">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </li>
                                    <li class="skill-list__item">
                                        <span class="skill-list__text">Inkscape</span>
                                        <span class="stars">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                        </span>
                                    </li>
                                    <li class="skill-list__item">
                                        <span class="skill-list__text">Adobe Photoshop</span>
                                        <span class="stars">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                        </span>
                                    </li>
                                    <li class="skill-list__item">
                                        <span class="skill-list__text">JavaScript</span>
                                        <span class="stars">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                        </span>
                                    </li>
                                    <li class="skill-list__item">
                                        <span class="skill-list__text">jQuery</span>
                                        <span class="stars">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                        </span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    </div><!--row-->
                    </div><!--container-->
                    <button class="btn-up">to up</button>
                </div>
                <?php wp_footer(); ?>
            </body>
        </html>