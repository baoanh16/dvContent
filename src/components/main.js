$(document).ready(function () {
	// ============ header ============
	$('header .btn-search').on('click', function () {
		$('header .searchbox').toggle(500)
	})
	$('header .d-language .current').on('click', function () {
		$('header .language-list').slideToggle()
	})
	$('header .m-hamburger').on('click', function () {
		$(this).find('.button').toggleClass('active')
		$('header .m-navbar').toggleClass('active')
		$('header .backdrop').toggleClass('active')
	})
	const moveLanguage = new MappingListener({
		selector: 'header .d-language .language-wrap',
		mobileWrapper: 'header .m-language',
		mobileMethod: 'appendTo',
		desktopWrapper: 'header .d-language',
		desktopMethod: 'appendTo',
		breakpoint: 993,
	}).watch()
	const moveNavBar = new MappingListener({
		selector: 'header .d-navbar ul',
		mobileWrapper: 'header .m-navbar .nav',
		mobileMethod: 'appendTo',
		desktopWrapper: 'header .d-navbar',
		desktopMethod: 'appendTo',
		breakpoint: 993,
	}).watch()

	//banner-home
	var bannerHome = new Swiper('.banner-home .swiper-container', {
		slidesPerView: 1,
		effect: 'cube',
		cubeEffect: {
			shadow: false,
		},
		loop: true,
		autoplay: {
			delay: 2500,
			disableOnInteraction: false,
		},
		speed: 1500,
		pagination: {
			el: '.banner-home .pagination',
			clickable: true,
			bulletClass: 'pagination-bullet',
			bulletActiveClass: 'active',
		},
	});

	//home-cam-nhan
	var homeCamNhan = new Swiper('.home-cam-nhan .swiper-container', {
		slidesPerView: 1,
		// effect: 'fade',
		loop: true,
		autoplay: {
			delay: 2000,
			disableOnInteraction: false,
		},
		speed: 1500,
		pagination: {
			el: '.home-cam-nhan .pagination',
			clickable: true,
			bulletClass: 'pagination-bullet',
			bulletActiveClass: 'active',
		},
	});

	//home-tin-tuc
	var homeTinTuc = new Swiper('.home-tin-tuc .swiper-container', {
		slidesPerView: 3,
		spaceBetween: 30,
		loop: true,
		autoplay: {
			delay: 2000,
			disableOnInteraction: false,
		},
		speed: 1500,
		breakpoints: {
			768: {
				slidesPerView: 2,
			},
			576: {
				slidesPerView: 1,
			}
		},
		navigation: {
			nextEl: '.home-tin-tuc .btn-next',
			prevEl: '.home-tin-tuc .btn-prev'
		},
		pagination: {
			el: '.home-tin-tuc .pagination',
			clickable: true,
			bulletClass: 'pagination-bullet',
			bulletActiveClass: 'active',
		},
	});

	//home-doi-tac
	var homeDoiTac = new Swiper('.home-doi-tac .swiper-container', {
		slidesPerView: 4,
		spaceBetween: 30,
		loop: true,
		autoplay: {
			delay: 2200,
			disableOnInteraction: false,
		},
		speed: 1000,
		breakpoints: {
			768: {
				slidesPerView: 2,
			},
			576: {
				slidesPerView: 1,
			}
		},
		navigation: {
			nextEl: '.home-doi-tac .btn-next',
			prevEl: '.home-doi-tac .btn-prev'
		},
		pagination: {
			el: '.home-doi-tac .pagination',
			clickable: true,
			bulletClass: 'pagination-bullet',
			bulletActiveClass: 'active',
		},
	});

	//about-doi-ngu
	var aboutDoiNgu = new Swiper('.about-doi-ngu .swiper-container', {
		slidesPerView: 4,
		spaceBetween: 30,
		loop: true,
		autoplay: {
			delay: 2200,
			disableOnInteraction: false,
		},
		speed: 1000,
		breakpoints: {
			768: {
				slidesPerView: 2,
			},
			576: {
				slidesPerView: 1,
			}
		},
		navigation: {
			nextEl: '.about-doi-ngu .btn-next',
			prevEl: '.about-doi-ngu .btn-prev'
		},
		pagination: {
			el: '.about-doi-ngu .pagination',
			clickable: true,
			bulletClass: 'pagination-bullet',
			bulletActiveClass: 'active',
		},
	});
	$('main').css({
		'padding-top': $('header').outerHeight() + 'px'
	})
	$('.breadcrumb').after('<h1 class="title">' + $('.breadcrumb li').last().text() + '</h1>')
	$('.btn-apply').click(function () {
		$('.form-apply').slideToggle()
	})
	AOS.init()
});