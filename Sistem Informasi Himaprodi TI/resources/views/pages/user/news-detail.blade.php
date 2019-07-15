<?php
/**
 * Created by PhpStorm.
 * User: Elfan N
 * Date: 04/05/2019
 * Time: 15:35
 */
?>

@extends('templates.app')

@section('user')
    <!--================Blog Area =================-->
    <section class="blog_area single-post-area section-margin">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 posts-list">
                    <div class="single-post">
                        <div class="feature-img">
                            <img class="img-fluid" src="{{asset('uploads/proker/'. $newsDetail->filename)}}" alt="">
                        </div>

                        <div class="blog_details">
                            <h2>{{ $newsDetail->nama_proker }}</h2>
                            <ul class="blog-info-link mt-3 mb-4">
                                <li><a href="#"><i class="far fa-user"></i>{{$newsDetail->created_by}}</a></li>
                            </ul>
                            <p class="excert"></p>
                            <p>{{$newsDetail->deskripsi}}</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!--================Blog Area =================-->
@endsection

