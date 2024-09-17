@props(['id'])
@php
    $text = App\Models\ModuleText::find($id);
@endphp
<div>
    {{ $sub_text }}
    {{ $id }}

    {!! $text->text !!}
</div>
