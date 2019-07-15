<?php
/**
 * Created by PhpStorm.
 * User: Elfan N
 * Date: 06/07/2019
 * Time: 21:15
 */

?>

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
            <h3 class="heading_a">Edit Agama</h3>
            <form action="{{route('agama.update', $agama->id)}}" method="post">
                {{csrf_field()}}
                {{method_field('PATCH')}}
                <div class="uk-grid" data-uk-grid-margin>
                    <div class="form-group" style="margin-top:10px !important;">
                        <label>Agama</label>
                        <input type="text" class="input-count md-input" name="agama" required
                               value="{{$agama->agama}}" {{$errors->has('agama')?'is-invalid':''}}/>

                        @if ($errors->has('agama'))
                            <span class="invalid-feedback" role="alert">
                                    <p><b>{{ $errors->first('agama') }}</b></p>
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


