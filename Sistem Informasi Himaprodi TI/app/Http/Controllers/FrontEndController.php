<?php

namespace App\Http\Controllers;

use App\Rapat;
use Illuminate\Http\Request;
use App\Anggota;
use App\Jabatan;
use App\Proker;

class FrontEndController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth:anggota')->except([
            'userIndex', 'userAbout', 'userAnggota',
            'userRapat', 'userNews', 'userNewsDetail'
        ]);
    }

    public function userIndex()
    {
        $anggota = Anggota::all();
        return view('pages.user.home', compact('anggota'));
    }

    public function userAbout(){
        return view('pages.user.about');
    }

    public function  userAnggota(){
        $anggota = Anggota::all();
        $jabatan = Jabatan::all();
        return view('pages.user.anggota',compact('anggota', 'jabatan'));
    }

    public function userRapat(){
        $anggota = Anggota::where('status', '1')->get();
        $jabatan = Jabatan::all();
        $rapat = Rapat::where('status', '1')->orderBy('tanggal', 'ASC')->get();
        $rapats = Rapat::where('status', '1')->orderBy('tanggal', 'ASC')->get();
        return view('pages.user.rapat', compact('rapat', 'rapats', 'anggota', 'jabatan'));
    }

    public function userNews(){
        $news = Proker::all();
        $newss = Proker::orderBy('created_at','DESC')->paginate(3);
        //dd($newss);
        return view('pages.user.news', compact('news', 'newss'));
    }

    public function userNewsDetail($slug){

        $newsDetail = Proker::where('slug', $slug)->first();
//        dd($newsDetail);
        return view('pages.user.news-detail', [
            'newsDetail' => $newsDetail,
        ]);
    }
}
