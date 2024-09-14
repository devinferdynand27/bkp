@extends('layouts.member')

@section('content')
@php
use Carbon\Carbon;

    $date = Carbon::parse($kalender->waktu_kegiatan);
    $formattedDate = $date->format('l, F j, Y \a\t g:i A'); // Format as "Day, Month Day, Year at Time"
@endphp
<div class="container"><br><br><br><br><br>
     <center>
        <h3>Kegiatan Terbaru!!</h3><br><br>
     </center>
    <div class="row ">
        <div class="col-md-6">
            <img src="{{asset('dokumentasi_kegiatan/'.$kalender->dokumentasi)}}" style="width: 100%; border-radius: 20px">
        </div>
        <div class="col-md-6">
             <h4>{{$kalender->nama_kegiatan}}</h4>
             <span>{{$formattedDate }}</span><br><br>
             <p>{{$kalender->deskripsi}}</p>
        </div>
    </div>
</div>
@endsection