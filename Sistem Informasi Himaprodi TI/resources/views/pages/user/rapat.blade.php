<?php
/**
 * Created by PhpStorm.
 * User: Elfan N
 * Date: 04/05/2019
 * Time: 15:47
 */

?>

@extends('templates.app')

@section('user')
    <!--================ Schedule section Start =================-->
    <section class="section-margin mb-5 pb-5">
        <div class="container">
            <div class="section-intro text-center pb-98px">
                <h2 class="primary-text">Jadwal Rapat</h2>
                <img src="{{asset('user-assets/img/home/section-style.png')}}" alt="">
            </div>

            <div class="row">
                <div class="col-xl-10 offset-xl-1">
                    <div class="scheduleTab">
                        <ul class="nav nav-tabs">
                            <?php $no = 1 ?>
                            @foreach($rapat as $rapat)
                                <li class="nav-item text-center">
                                    <a data-toggle="tab" href="#day{{$no}}">
                                        <p>{{$rapat->tanggal}}</p>
                                    </a>
                                </li>
                                <?php $no++ ?>
                            @endforeach
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">
                            <?php $no = 1 ?>
                            @foreach($rapats as $r)
                                <div id="day{{$no}}" class="tab-pane">
                                    <div class="schedule-card">
                                        <div class="row no-gutters">
                                            <div class="col-md-3">
                                                <div class="card-identity">
                                                    @foreach($anggota as $ang)
                                                        @if($ang->id == $r->id_anggota)
                                                            <h3>{{$ang->nama}}</h3>
                                                            @foreach($jabatan as $jab)
                                                                @if($jab->id == $ang->id_jabatan)
                                                                    <p>{{$jab->jabatan}}</p>
                                                                @endif
                                                            @endforeach
                                                        @endif
                                                    @endforeach
                                                </div>
                                            </div>
                                            <div class="col-md-9 align-self-center">
                                                <div class="schedule-content">
                                                    <p class="schedule-date">{{$r->tanggal}} {{$r->jam}}</p>
                                                    <a class="schedule-title">
                                                        <h3>{{$r->nama_rapat}}</h3>
                                                    </a>
                                                    <p>{{$r->pembahasan}}</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <?php $no++ ?>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================ Schedule section End =================-->
@endsection
