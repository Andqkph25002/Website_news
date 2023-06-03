<?php

use App\Http\Controllers\Admin\AdminAdvertisementController;
use App\Http\Controllers\Admin\AdminAuthorController;
use App\Http\Controllers\Admin\AdminHomeController;
use App\Http\Controllers\Admin\AdminLiveChannelController;
use App\Http\Controllers\Admin\AdminLoginController;
use App\Http\Controllers\Admin\AdminOnlinePollController;
use App\Http\Controllers\Admin\AdminPageController;
use App\Http\Controllers\Admin\AdminPhotoController;
use App\Http\Controllers\Admin\AdminProfileController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\SubCategoryController;
use App\Http\Controllers\Admin\AdminPostController;
use App\Http\Controllers\Admin\AdminSettingController;
use App\Http\Controllers\Admin\AdminSocialItemController;
use App\Http\Controllers\Admin\AdminSubscriberController;
use App\Http\Controllers\Admin\AdminVideoController;
use App\Http\Controllers\Author\AuthorHomeController;
use App\Http\Controllers\Author\AuthorPostController;
use App\Http\Controllers\Author\AuthorProfileController;
use App\Http\Controllers\Front\AboutController;
use App\Http\Controllers\Front\ArchiveController;
use App\Http\Controllers\Front\ContactController;
use App\Http\Controllers\Front\HomeController;
use App\Http\Controllers\Front\LoginController;
use App\Http\Controllers\Front\PhotoController;
use App\Http\Controllers\Front\PollController;
use App\Http\Controllers\Front\PostController;
use App\Http\Controllers\Front\SubCategoryController as FrontSubCategoryController;
use App\Http\Controllers\Front\SubscriberController;
use App\Http\Controllers\Front\TagController;
use App\Http\Controllers\Front\VideoController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/




/* Admin */

Route::get('/admin/home', [AdminHomeController::class, 'index'])->name('admin_home')->middleware('admin:admin');
Route::get('/admin/login', [AdminLoginController::class, 'index'])->name('admin_login');
Route::get('/admin/logout', [AdminLoginController::class, 'logout'])->name('admin_logout');
Route::post('/admin/login-submit', [AdminLoginController::class, 'login_submit'])->name('admin_login_submit');
Route::get('/admin/forget-password', [AdminLoginController::class, 'forget_password'])->name('admin_forget_password');
Route::post('/admin/forget-password-submit', [AdminLoginController::class, 'forget_password_submit'])->name('admin_forget_password_submit');
Route::get('/admin/reset-password/{token}/{email}', [AdminLoginController::class, 'reset_password'])->name('admin_reset_password');
Route::post('/admin/reset-password-submit', [AdminLoginController::class, 'reset_password_submit'])->name('admin_reset_password_submit');


Route::prefix('admin')->middleware('admin:admin')->group(function () {
    Route::get('edit-profile', [AdminProfileController::class, 'index'])->name('admin_profile');
    Route::post('edit-profile-submit', [AdminProfileController::class, 'profile_submit'])->name('admin_profile_submit');
    Route::get('home-advertisement', [AdminAdvertisementController::class, 'home_ad_show'])->name('admin_home_ad_show');
    Route::post('home-advertisement-update', [AdminAdvertisementController::class, 'home_ad_update'])->name('admin_home_ad_update');
    Route::get('top-advertisement', [AdminAdvertisementController::class, 'top_ad_show'])->name('admin_top_ad_show');
    Route::post('top-advertisement-update', [AdminAdvertisementController::class, 'top_ad_update'])->name('admin_top_ad_update');
    Route::get('sidebar-advertisement-view', [AdminAdvertisementController::class, 'sidebar_ad_show'])->name('admin_sidebar_ad_show');
    Route::get('sidebar-advertisement-create', [AdminAdvertisementController::class, 'sidebar_ad_create'])->name('admin_sidebar_ad_create');
    Route::post('sidebar-advertisement-store', [AdminAdvertisementController::class, 'sidebar_ad_store'])->name('admin_sidebar_ad_store');
    Route::get('sidebar-advertisement-edit/{id}', [AdminAdvertisementController::class, 'sidebar_ad_edit'])->name('admin_sidebar_ad_edit');
    Route::post('sidebar-advertisement-update', [AdminAdvertisementController::class, 'sidebar_ad_update'])->name('admin_sidebar_ad_update');
    Route::get('sidebar-advertisement-delete/{id}', [AdminAdvertisementController::class, 'sidebar_ad_delete'])->name('admin_sidebar_ad_delete');

    Route::get('category/show', [CategoryController::class, 'show'])->name('admin_category_show');
    Route::get('category/create', [CategoryController::class, 'create'])->name('admin_category_create');
    Route::post('category/store', [CategoryController::class, 'store'])->name('admin_category_store');
    Route::get('category/edit/{id}', [CategoryController::class, 'edit'])->name('admin_category_edit');
    Route::post('category/update', [CategoryController::class, 'update'])->name('admin_category_update');
    Route::get('category/delete/{id}', [CategoryController::class, 'delete'])->name('admin_category_delete');

    Route::get('sub_category/show', [SubCategoryController::class, 'show'])->name('admin_sub_category_show');
    Route::get('sub_category/create', [SubCategoryController::class, 'create'])->name('admin_sub_category_create');
    Route::post('sub_category/store', [SubCategoryController::class, 'store'])->name('admin_sub_category_store');
    Route::get('sub_category/edit/{id}', [SubCategoryController::class, 'edit'])->name('admin_sub_category_edit');
    Route::post('sub_category/update', [SubCategoryController::class, 'update'])->name('admin_sub_category_update');
    Route::get('sub_category/delete/{id}', [SubCategoryController::class, 'delete'])->name('admin_sub_category_delete');

    // Route::get('post/show', [AdminPostController::class, 'show'])->name('admin_post_show');
    // Route::get('post/create', [AdminPostController::class, 'create'])->name('admin_post_create');
    // Route::post('post/store', [AdminPostController::class, 'store'])->name('admin_post_store');
    // Route::get('post/edit/{id}', [AdminPostController::class, 'edit'])->name('admin_post_edit');
    // Route::post('post/update', [AdminPostController::class, 'update'])->name('admin_post_update');
    // Route::get('post/delete/{id}', [AdminPostController::class, 'delete'])->name('admin_post_delete');
    // Route::get('post/tag/delete/{id}/{id1}', [AdminPostController::class, 'TagDelete'])->name('admin_post_tag_delete');

    Route::get('photo/show', [AdminPhotoController::class, 'show'])->name('admin_photo_show');
    Route::get('photo/create', [AdminPhotoController::class, 'create'])->name('admin_photo_create');
    Route::post('photo/store', [AdminPhotoController::class, 'store'])->name('admin_photo_store');
    Route::get('photo/edit/{id}', [AdminPhotoController::class, 'edit'])->name('admin_photo_edit');
    Route::post('photo/update', [AdminPhotoController::class, 'update'])->name('admin_photo_update');
    Route::get('photo/delete/{id}', [AdminPhotoController::class, 'delete'])->name('admin_photo_delete');

    Route::get('video/show', [AdminVideoController::class, 'show'])->name('admin_video_show');
    Route::get('video/create', [AdminVideoController::class, 'create'])->name('admin_video_create');
    Route::post('video/store', [AdminVideoController::class, 'store'])->name('admin_video_store');
    Route::get('video/edit/{id}', [AdminVideoController::class, 'edit'])->name('admin_video_edit');
    Route::post('video/update', [AdminVideoController::class, 'update'])->name('admin_video_update');
    Route::get('video/delete/{id}', [AdminVideoController::class, 'delete'])->name('admin_video_delete');

    Route::get('setting', [AdminSettingController::class, 'index'])->name('admin_setting');
    Route::post('setting/update', [AdminSettingController::class, 'update'])->name('admin_setting_update');

    Route::get('page/about', [AdminPageController::class, 'about'])->name('admin_page_about');
    Route::post('page/about/update', [AdminPageController::class, 'update'])->name('admin_page_about_update');


    Route::get('page/faq', [AdminPageController::class, 'faq'])->name('admin_page_faq');
    Route::post('page/faq/update', [AdminPageController::class, 'faq_update'])->name('admin_page_faq_update');

    Route::get('page/terms', [AdminPageController::class, 'terms'])->name('admin_page_terms');
    Route::post('page/terms/update', [AdminPageController::class, 'terms_update'])->name('admin_page_terms_update');

    Route::get('page/privacy', [AdminPageController::class, 'privacy'])->name('admin_page_privacy');
    Route::post('page/privacy/update', [AdminPageController::class, 'privacy_update'])->name('admin_page_privacy_update');

    Route::get('page/disclaimer', [AdminPageController::class, 'disclaimer'])->name('admin_page_disclaimer');
    Route::post('page/disclaimer/update', [AdminPageController::class, 'disclaimer_update'])->name('admin_page_disclaimer_update');

    Route::get('page/login', [AdminPageController::class, 'login'])->name('admin_page_login');
    Route::post('page/login/update', [AdminPageController::class, 'login_update'])->name('admin_page_login_update');

    Route::get('page/contact', [AdminPageController::class, 'contact'])->name('admin_page_contact');
    Route::post('page/contact/update', [AdminPageController::class, 'contact_update'])->name('admin_page_contact_update');


    Route::get('faq/show', [AdminFaqController::class, 'show'])->name('admin_faq_show');
    Route::get('faq/create', [AdminFaqController::class, 'create'])->name('admin_faq_create');
    Route::post('faq/store', [AdminFaqController::class, 'store'])->name('admin_faq_store');
    Route::get('faq/edit/{id}', [AdminFaqController::class, 'edit'])->name('admin_faq_edit');
    Route::post('faq/update/{id}', [AdminFaqController::class, 'update'])->name('admin_faq_update');
    Route::get('faq/delete/{id}', [AdminFaqController::class, 'delete'])->name('admin_faq_delete');
    Route::get('/subscriber/all', [AdminSubscriberController::class, 'show_all'])->name('admin_subscriber');
    Route::get('subscriber/send-email', [AdminSubscriberController::class, 'send_email'])->name('admin_subscriber_send_email');
    Route::post('subscriber/send-email-submit', [AdminSubscriberController::class, 'send_email_submit'])->name('admin_subscriber_send_email_submit');

    Route::get('live-channel/show', [AdminLiveChannelController::class, 'show'])->name('admin_live_channel_show');
    Route::get('live-channel/create', [AdminLiveChannelController::class, 'create'])->name('admin_live_channel_create');
    Route::post('live-channel/store', [AdminLiveChannelController::class, 'store'])->name('admin_live_channel_store');
    Route::get('live-channel/edit/{id}', [AdminLiveChannelController::class, 'edit'])->name('admin_live_channel_edit');
    Route::post('live-channel/update/{id}', [AdminLiveChannelController::class, 'update'])->name('admin_live_channel_update');
    Route::get('live-channel/delete/{id}', [AdminLiveChannelController::class, 'delete'])->name('admin_live_channel_delete');

    Route::get('online-poll/show', [AdminOnlinePollController::class, 'show'])->name('admin_online_poll_show');
    Route::get('online-poll/create', [AdminOnlinePollController::class, 'create'])->name('admin_online_poll_create');
    Route::post('online-poll/store', [AdminOnlinePollController::class, 'store'])->name('admin_online_poll_store');
    Route::get('online-poll/edit/{id}', [AdminOnlinePollController::class, 'edit'])->name('admin_online_poll_edit');
    Route::post('online-poll/update/{id}', [AdminOnlinePollController::class, 'update'])->name('admin_online_poll_update');
    Route::get('online-poll/delete/{id}', [AdminOnlinePollController::class, 'delete'])->name('admin_online_poll_delete');

    Route::get('social-item/show', [AdminSocialItemController::class, 'show'])->name('admin_social_item_show');
    Route::get('social-item/create', [AdminSocialItemController::class, 'create'])->name('admin_social_item_create');
    Route::post('social-item/store', [AdminSocialItemController::class, 'store'])->name('admin_social_item_store');
    Route::get('social-item/edit/{id}', [AdminSocialItemController::class, 'edit'])->name('admin_social_item_edit');
    Route::post('social-item/update/{id}', [AdminSocialItemController::class, 'update'])->name('admin_social_item_update');
    Route::get('social-item/delete/{id}', [AdminSocialItemController::class, 'delete'])->name('admin_social_item_delete');

    Route::get('author/show', [AdminAuthorController::class, 'show'])->name('admin_author_show');
Route::get('author/create', [AdminAuthorController::class, 'create'])->name('admin_author_create');
Route::post('author/store', [AdminAuthorController::class, 'store'])->name('admin_author_store');
Route::get('author/edit/{id}', [AdminAuthorController::class, 'edit'])->name('admin_author_edit');
Route::post('author/update/{id}', [AdminAuthorController::class, 'update'])->name('admin_author_update');
Route::get('author/delete/{id}', [AdminAuthorController::class, 'delete'])->name('admin_author_delete');
});






/* ----- */

/* Front end */
Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('/about', [AboutController::class, 'index'])->name('about');
Route::get('/contact', [ContactController::class, 'index'])->name('contact');
Route::post('/contact/send-email', [ContactController::class, 'send_email'])->name('contact_form_submit');
Route::get('/new-detail/{id}', [PostController::class, 'detail'])->name('news_detail');
Route::get('/category/{id}', [FrontSubCategoryController::class, 'index'])->name('category');
Route::get('/photo_gallery', [PhotoController::class, 'index'])->name('photo_gallery');
Route::get('/video_gallery', [VideoController::class, 'index'])->name('video_gallery');
Route::get('/login', [LoginController::class, 'index'])->name('login');
Route::post('/subscriber', [SubscriberController::class, 'index'])->name('subscriber');
Route::get('/subscriber/verify/{token}/{email}', [SubscriberController::class, 'verify'])->name('subscriber_verify');

Route::post('/poll/submit', [PollController::class, 'submit'])->name('poll_submit');
Route::get('/poll/previous', [PollController::class, 'previous'])->name('poll_previous');

Route::post('/archive/show', [ArchiveController::class, 'show'])->name('archive_show');
Route::get('/archive/{year}/{month}', [ArchiveController::class, 'detail'])->name('archive_detail');

Route::get('/tag/{tag_name}', [TagController::class, 'show'])->name('tag_post_show');
Route::get('/subcategory-by-category/{id}', [HomeController::class, 'get_subcategory_by_category'])->name('subcategory_by_category');
Route::post('/search/result', [HomeController::class, 'search'])->name('search_result');

Route::post('/login-submit', [LoginController::class, 'login_submit'])->name('login_submit');
Route::get('/logout', [LoginController::class, 'logout'])->name('logout');
Route::get('/forget-password', [LoginController::class, 'forget_password'])->name('forget_password');
Route::post('/forget-password-submit', [LoginController::class, 'forget_password_submit'])->name('forget_password_submit');
Route::get('/reset-password/{token}/{email}', [LoginController::class, 'reset_password'])->name('reset_password');
Route::post('/reset-password-submit', [LoginController::class, 'reset_password_submit'])->name('reset_password_submit');

Route::get('/author/home', [AuthorHomeController::class, 'index'])->name('author_home')->middleware('author:author');
Route::get('/author/edit-profile', [AuthorProfileController::class, 'index'])->name('author_profile')->middleware('author:author');
Route::post('/author/edit-profile-submit', [AuthorProfileController::class, 'profile_submit'])->name('author_profile_submit');
Route::get('/author/post/show', [AuthorPostController::class, 'show'])->name('author_post_show')->middleware('author:author');
Route::get('/author/post/create', [AuthorPostController::class, 'create'])->name('author_post_create')->middleware('author:author');
Route::post('/author/post/store', [AuthorPostController::class, 'store'])->name('author_post_store');
Route::get('/author/post/edit/{id}', [AuthorPostController::class, 'edit'])->name('author_post_edit')->middleware('author:author');
Route::post('/author/post/update/{id}', [AuthorPostController::class, 'update'])->name('author_post_update');
Route::get('/author/post/delete/{id}', [AuthorPostController::class, 'delete'])->name('author_post_delete')->middleware('author:author');
Route::get('/author/post/tag/delete/{id}/{id1}', [AuthorPostController::class, 'delete_tag'])->name('author_post_delete_tag')->middleware('author:author');
/*---------- */