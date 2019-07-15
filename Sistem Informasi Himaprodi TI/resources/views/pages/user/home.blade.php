<?php
/**
 * Created by PhpStorm.
 * User: Elfan N
 * Date: 04/05/2019
 * Time: 8:22
 */
?>


@extends('templates.app')

@section('user')

    <!--================ Sponsor section Start =================-->
    <section class="section-padding--small sponsor-bg">
        <div class="container">

            <div class="section-intro text-center pb-80px">
                <h2 class="primary-text">Apakah Kamu Mau</h2>
                <img src="{{asset('user-assets/img/home/section-style.png')}}" alt="">

            </div>

            <div class="sponsor-wrapper mb-5 pb-4">
                <h3 class="sponsor-title mb-5">Mengenal HIMAPRODI TI Lebih Dekat</h3>
                <a href="{{route('user.about')}}" class="btn btn-outline-primary">MENGENAL HIMAPRODI TI</a>
            </div>


        </div>
    </section>
    <!--================ Sponsor section End =================-->

    <!--================ Blog section Start =================-->
    <section class="section-margin">
        <div class="container">
            <div class="section-intro text-center pb-98px">
                {{--<p class="section-intro__title">Join the event</p>--}}
                <h2 class="primary-text">Quote</h2>
                <img src="{{asset('user-assets/img/home/section-style.png')}}" alt="">
            </div>

            <div class="owl-theme owl-carousel blogCarousel pb-xl-1">

                {{--foreach disini--}}
                @foreach($anggota as $anggota)
                <div class="card-blog">
                    <div class="blog-body">
                        <a href="#">
                            <h3>{{$anggota->quote}}</h3>
                        </a>
                        <ul class="blog-info">
                            <li><a href="#">Nama : @ {{$anggota->nama}}</a></li>
                            <li><a href="#">Instagram : @ {{$anggota->instagram}}</a></li>
                        </ul>
                    </div>
                </div>
                @endforeach
                {{--endforeach disini--}}

            </div>
        </div>
    </section>
    <!--================ Blog section End =================-->
@endsection
