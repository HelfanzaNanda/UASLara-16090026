<!-- main sidebar -->
<aside id="sidebar_main">

    <div class="sidebar_main_header">
        <div class="sidebar_logo">

            <span class="align-middle">ADMIN HIMAPRODI TI</span>

            <a href="#" class="sSidebar_show sidebar_logo_small">
                <img class="logo_regular" src="{{asset('assets/img/logo_main_small.png')}}" alt="" height="32"
                     width="32"/>
                <img class="logo_light" src="{{asset('assets/img/logo_main_small_light.png')}}" alt="" height="32"
                     width="32"/>
            </a>
        </div>
    </div>

    <div class="menu_section">
        <ul>
            <li title="Dashboard">
                <a href="{{route('dashboard')}}">
                    <span class="menu_icon"><i class="material-icons">&#xE871;</i></span>
                    <span class="menu_title">Dashboard</span>
                </a>

            </li>

            <li title="Anggota">
                <a href="{{route('anggota')}}">
                    <span class="menu_icon"><i class="material-icons">people</i></span>
                    <span class="menu_title">Anggota</span>
                </a>

            </li>

            <li title="Inventaris">
                <a href="{{route('inventaris')}}">
                    <span class="menu_icon"><i class="material-icons">featured_video</i></span>
                    <span class="menu_title">Inventaris</span>
                </a>

            </li>
            <li title="ProgramKerja">
                <a href="{{route('proker')}}">
                    <span class="menu_icon"><i class="material-icons">donut_large</i></span>
                    <span class="menu_title">Program Kerja</span>
                </a>

            </li>
            <li title="Rapat">
                <a href="{{route('rapat')}}">
                    <span class="menu_icon"><i class="material-icons">calendar_today</i></span>
                    <span class="menu_title">Rapat</span>
                </a>

            </li>

            <li title="Other">
                <a href="#">
                    <span class="menu_icon"><i class="material-icons">menu</i></span>
                    <span class="menu_title">Other</span>
                </a>
                <ul>
                    <li><a href="{{route('kelas')}}">Kelas</a></li>
                    <li><a href="{{route('semester')}}">Semester</a></li>
                    <li><a href="{{route('agama')}}">Agama</a></li>
                    <li><a href="{{route('jabatan')}}">Jabatan</a></li>
                </ul>
            </li>

        </ul>
    </div>
</aside>
<!-- main sidebar end -->