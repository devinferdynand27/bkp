@if (Auth::user()->hasRole('admin'))
    <script>
        window.location = "/master-admin/login";
    </script>
@elseif(Auth::user()->hasRole('member'))
    <script>
        window.location = "/member";
    </script>
@endif
