<?php
/**
 * Created by PhpStorm.
 * User: Elfan N
 * Date: 06/07/2019
 * Time: 21:10
 */
?><?php
/**
 * Created by PhpStorm.
 * User: Elfan N
 * Date: 12/05/2019
 * Time: 11:41
 */
?>

@extends('templates.default')

@section('content')
    @if($message = Session::get('success'))
        <div class="uk-alert uk-alert-success" data-uk-alert>
            <a href="#" class="uk-alert-close uk-close"></a>
            <p style="color: white">{{$message}}</p>
        </div>
    @endif

    @if($message = Session::get('update'))
        <div class="uk-alert uk-alert-success" data-uk-alert>
            <a href="#" class="uk-alert-close uk-close"></a>
            <p style="color: white">{{$message}}</p>
        </div>
    @endif
    @if($message = Session::get('delete'))
        <div class="uk-alert uk-alert-success" data-uk-alert>
            <a href="#" class="uk-alert-close uk-close"></a>
            <p style="color: white">{{$message}}</p>
        </div>
    @endif

    <h3 class="heading_b uk-margin-bottom">agama</h3>
    <div class="md-card uk-margin-medium-bottom">
        <div class="md-card-content">
            @if(count($agama) == 0)
                <center><h3>Tidak Ada Data</h3></center>
            @else
                <table id="dt_default" class="uk-table" cellspacing="0" width="100%">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Agama</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>

                    <?php $no = 1; ?>
                    @foreach($agama as $agama)
                        <tr>
                            <td>{{$no}}</td>
                            <td>{{$agama->agama}}</td>
                            <td>
                                <a href="{{route('agama.edit', $agama->id)}}"
                                   class="md-btn md-btn-warning md-btn-mini md-btn-wave-light waves-effect waves-button waves-light"><i
                                            class="uk-icon-edit"></i></a>

                                <a href="{{route('agama.destroy', $agama->id)}}"
                                   class="md-btn md-btn-danger md-btn-mini md-btn-wave-light waves-effect waves-button waves-light"
                                   onclick="return confirm('Are You Sure to Delete This?')"><i
                                            class="uk-icon-trash-o"></i></a>
                            </td>
                        </tr>
                        <?php $no++ ?>
                    @endforeach
                    @endif
                    </tbody>
                    <div class="md-fab-wrapper">
                        <a class="md-fab md-fab-accent" href="{{route('agama.create')}}">
                            <i class="material-icons">&#xE145;</i>
                        </a>
                    </div>
                </table>

        </div>
    </div>
@endsection
