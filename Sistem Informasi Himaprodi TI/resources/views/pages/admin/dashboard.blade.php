<?php
/**
 * Created by PhpStorm.
 * User: Elfan N
 * Date: 18/06/2019
 * Time: 17:27
 */
?>

<?php
/**
 * Created by PhpStorm.
 * User: Elfan N
 * Date: 04/06/2019
 * Time: 10:17
 */
?>

@extends('templates.default')

@section('content')
    <h3 class="heading_b uk-margin-bottom">dashboard</h3>


    <!-- statistics (small charts) -->
    <div class="uk-grid uk-grid-width-large-1-4 uk-grid-width-medium-1-2 uk-grid-medium uk-sortable sortable-handler hierarchical_show" data-uk-sortable data-uk-grid-margin>
        <div>
            <div class="md-card">
                <div class="md-card-content">
                    <div class="uk-float-right uk-margin-top uk-margin-small-right"><span class="peity_visitors peity_data">5,3,9,6,5,9,7</span></div>
                    <span class="uk-text-muted uk-text-small">Anggota</span>
                    <h2 class="uk-margin-remove"><span class="countUpMe">{{count($anggota)}}</span></h2>
                </div>
            </div>
        </div>

        <div>
            <div class="md-card">
                <div class="md-card-content">
                    <div class="uk-float-right uk-margin-top uk-margin-small-right"><span class="peity_visitors peity_data">5,3,9,6,5,9,7</span></div>
                    <span class="uk-text-muted uk-text-small">Inventaris</span>
                    <h2 class="uk-margin-remove"><span class="countUpMe">{{count($inventaris)}}</span></h2>
                </div>
            </div>
        </div>
        <div>
            <div class="md-card">
                <div class="md-card-content">
                    <div class="uk-float-right uk-margin-top uk-margin-small-right"><span class="peity_visitors peity_data">5,3,9,6,5,9,7</span></div>
                    <span class="uk-text-muted uk-text-small">Program Kerja</span>
                    <h2 class="uk-margin-remove"><span class="countUpMe">{{count($proker)}}</span></h2>
                </div>
            </div>
        </div>
        <div>
            <div class="md-card">
                <div class="md-card-content">
                    <div class="uk-float-right uk-margin-top uk-margin-small-right"><span class="peity_visitors peity_data">5,3,9,6,5,9,7</span></div>
                    <span class="uk-text-muted uk-text-small">Rapat</span>
                    <h2 class="uk-margin-remove"><span class="countUpMe">{{count($rapat)}}</span></h2>
                </div>
            </div>
        </div>
    </div>


@endsection


