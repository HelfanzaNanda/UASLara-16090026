<?php
/**
 * Created by PhpStorm.
 * User: Elfan N
 * Date: 06/07/2019
 * Time: 21:15
 */

?>

@extends('templates.default')

@section('content')
    <div class="md-card">
        <div class="md-card-content">
            <h3 class="heading_a">Edit semester</h3>
            <form action="{{route('semester.update', $semester->id)}}" method="post">
                {{csrf_field()}}
                {{method_field('PATCH')}}
                <div class="uk-grid" data-uk-grid-margin>
                    <div class="form-group" style="margin-top:10px !important;">
                        <label>semester</label>
                        <input type="text" class="input-count md-input" name="semester" required
                               value="{{$semester->semester}}" {{$errors->has('semester')?'is-invalid':''}}/>

                        @if ($errors->has('semester'))
                            <span class="invalid-feedback" role="alert">
                                    <p><b>{{ $errors->first('semester') }}</b></p>
                                </span>
                        @endif
                    </div>

                    <div class="form-group">
                        <button class="md-btn md-btn-success">Save</button>
                    </div>

                </div>
            </form>

        </div>
    </div>
@endsection


