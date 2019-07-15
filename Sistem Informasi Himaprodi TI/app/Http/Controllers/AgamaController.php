<?php

namespace App\Http\Controllers;

use App\Agama;
use Illuminate\Http\Request;

class AgamaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $agama = Agama::all();
        return view('pages.admin.agama.agama', compact('agama'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pages.admin.agama.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $agama = new Agama();
        $agama->agama = $request->agama;
        $agama->save();
        return redirect()->route('agama')->with('create', 'berhasil menambahkan agama');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Agama  $agama
     * @return \Illuminate\Http\Response
     */
    public function show(Agama $agama)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Agama  $agama
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $agama = Agama::find($id);
        return view('pages.admin.agama.edit', compact('agama'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Agama  $agama
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $agama = Agama::find($id);
        $agama->agama = $request->agama;
        $agama->update();
        return redirect()->route('agama')->with('update', 'berhasil mengupdate agama');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Agama  $agama
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $agama = Agama::find($id);
        $agama->delete();
        return redirect()->route('agama')->with('delete', 'berhasil menghapus agama');
    }
}
