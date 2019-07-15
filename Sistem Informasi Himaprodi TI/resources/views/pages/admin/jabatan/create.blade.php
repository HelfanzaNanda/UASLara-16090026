<?php
/**
 * Created by PhpStorm.
 * User: Elfan N
 * Date: 06/07/2019
 * Time: 21:11
 */

?>

<?php
/**
 * Created by PhpStorm.
 * User: Elfan N
 * Date: 13/05/2019
 * Time: 14:44
 */
?>

@extends('templates.default')

@section('content')
    <div class="md-card">
        <div class="md-card-content">
            <h3 class="heading_a">Add jabatan</h3>
            <form action="{{route('jabatan.store')}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}
                <div class="uk-grid" data-uk-grid-margin>
                        <div class="form-group" style="margin-top:10px !important;">
                            <label>jabatan</label>
                            <input type="text" class="input-count md-input" name="jabatan" required
                                   value="{{old('jabatan')}}" {{$errors->has('jabatan')?'is-invalid':''}}/>

                            @if ($errors->has('jabatan'))
                                <span class="invalid-feedback" role="alert">
                                    <p><b>{{ $errors->first('jabatan') }}</b></p>
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

