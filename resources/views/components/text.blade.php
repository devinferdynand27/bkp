@props(['id'])
@php
    $text = App\Models\ModuleText::find($id);
@endphp
<div>
    <h5 class="text--primary mb-4 mt-4">{{ $text->judul }}</h5>
    {{-- {{ $id }} --}}
    <p>{!! $text->text !!}</p>
</div>
