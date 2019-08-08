$(document).on('turbolinks:load',function(){
  $('.header__btn__new').on('mouseover', function(){
    $('.top-header__container__navi__left__l__category__list__search').show();
  });

  $('.top-header__container__navi__left__l__category__list__search, .top-header__container__navi__left__l__category__list').on('mouseleave', function(){
    $('.top-header__container__navi__left__l__category__list__search').hide();
  });

  $(document).on('mouseover', '.top-header__container__navi__left__l__category__list__search__li', function(){
    $(this).find('.top-header__container__navi__left__l__category__list__search__li__detail').show();
  });

  $(document).on('mouseleave', '.top-header__container__navi__left__l__category__list__search__li', function(){
    $(this).find('.top-header__container__navi__left__l__category__list__search__li__detail').hide();
  });

  $(document).on('mouseover', '.top-header__container__navi__left__l__category__list__search__li__detail__list', function(){
    $(this).find('.top-header__container__navi__left__l__category__list__search__li__detail__list__de').show();
  });

  $(document).on('mouseleave', '.top-header__container__navi__left__l__category__list__search__li__detail__list', function(){
    $(this).find('.top-header__container__navi__left__l__category__list__search__li__detail__list__de').hide();
  });

});