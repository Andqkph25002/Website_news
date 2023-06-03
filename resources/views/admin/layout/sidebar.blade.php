<div class="main-sidebar">
    <aside id="sidebar-wrapper">
        <div class="sidebar-brand">
            <a href="{{ route('admin_profile') }}">Admin Panel</a>
        </div>
        <div class="sidebar-brand sidebar-brand-sm">
            <a href="index.html"></a>
        </div>

        <ul class="sidebar-menu">

            <li class="{{ Request::is('admin/home') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_home') }}"><i class="fas fa-hand-point-right"></i> <span>Dashboard</span></a></li>

            <li class="nav-item dropdown active">
                <a href="#" class="nav-link has-dropdown"><i class="fas fa-hand-point-right"></i><span>Advertisement</span></a>
                <ul class="dropdown-menu">
                    <li class="{{ Request::is('admin/top-advertisement') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_top_ad_show') }}"><i class="fas fa-angle-right"></i>Top Advertisement</a></li>
                    <li class="{{ Request::is('admin/home-advertisement') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_home_ad_show') }}"><i class="fas fa-angle-right"></i>Home Advertisement</a></li>
                    <li class="{{ Request::is('admin/sidebar-advertisement-view') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_sidebar_ad_show') }}"><i class="fas fa-angle-right"></i>Sidebar Advertisement</a></li>
                </ul>
            </li>

            <li class="nav-item dropdown">
                <a href="#" class="nav-link has-dropdown"><i class="fas fa-hand-point-right"></i><span>News</span></a>
                <ul class="dropdown-menu">
                    <li class=""><a class="nav-link" href="{{ route('admin_category_show') }}"><i class="fas fa-angle-right"></i>Category</a></li>
                    <li class=""><a class="nav-link" href="{{ route('admin_sub_category_show') }}"><i class="fas fa-angle-right"></i>Sub Category</a></li>
                    {{-- <li class=""><a class="nav-link" href="{{ route('admin_post_show') }}"><i class="fas fa-angle-right"></i>Posts</a></li> --}}
                </ul>
            </li>
            <li class="{{ Request::is('admin/setting') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_setting') }}"><i class="fas fa-hand-point-right"></i> <span>Setting</span></a></li>
            <li class="{{ Request::is('admin/photo') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_photo_show') }}"><i class="fas fa-hand-point-right"></i> <span>Photo Gallery</span></a></li>
            <li class="{{ Request::is('admin/video') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_video_show') }}"><i class="fas fa-hand-point-right"></i> <span>Video Gallery</span></a></li>
            

            <li class="nav-item dropdown active">
                <a href="#" class="nav-link has-dropdown"><i class="fas fa-hand-point-right"></i><span>Pages</span></a>
                <ul class="dropdown-menu">
                    <li class="{{ Request::is('admin/page/about') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_page_about') }}"><i class="fas fa-angle-right"></i> About</a></li>
                    <li class="{{ Request::is('admin/page/faq') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_page_faq') }}"><i class="fas fa-angle-right"></i> FAQ</a></li>
                    <li class="{{ Request::is('admin/page/contact') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_page_contact') }}"><i class="fas fa-angle-right"></i> Contact</a></li>
                    <li class="{{ Request::is('admin/page/login') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_page_login') }}"><i class="fas fa-angle-right"></i> Login</a></li>
                    <li class="{{ Request::is('admin/page/terms') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_page_terms') }}"><i class="fas fa-angle-right"></i> Terms and Conditions</a></li>
                    <li class="{{ Request::is('admin/page/privacy') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_page_privacy') }}"><i class="fas fa-angle-right"></i> Privacy Policy</a></li>
                    <li class="{{ Request::is('admin/page/disclaimer') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_page_disclaimer') }}"><i class="fas fa-angle-right"></i> Disclaimer</a></li>
                  
                </ul>
            </li>
            <li class="nav-item dropdown active">
                <a href="#" class="nav-link has-dropdown"><i class="fas fa-hand-point-right"></i><span>Subscribers</span></a>
                <ul class="dropdown-menu">
                    <li class="{{ Request::is('admin/subscriber/all') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_subscriber') }}"><i class="fas fa-angle-right"></i>All Subscribers</a></li>
                    <li class="{{ Request::is('admin/subscriber/send-email') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_subscriber_send_email') }}"><i class="fas fa-angle-right"></i>Send Email To All</a></li>
                </ul>
            </li>
            <li class="{{ Request::is('admin/live-channel/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_live_channel_show') }}" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-title="Live Channel"><i class="fab fa-google-drive"></i> <span>Live Channel</span></a></li>
            <li class="{{ Request::is('admin/online-poll/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_online_poll_show') }}" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-title="Online Poll"><i class="fas fa-vote-yea"></i> <span>Online Poll</span></a></li>
            <li class="{{ Request::is('admin/social-item/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_social_item_show') }}" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-title="Social Items"><i class="fas fa-share-alt"></i> <span>Social Items</span></a></li>
            <li class="{{ Request::is('admin/author/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_author_show') }}" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-title="Author List"><i class="fas fa-user-edit"></i> <span>Author List</span></a></li>
        </ul>
    </aside>
</div>