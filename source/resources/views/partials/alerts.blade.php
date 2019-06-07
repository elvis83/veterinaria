@if (session()->has('message.success'))
    <div class="alert alert-success" role="alert">
        <button class="close" data-close="alert"></button>
        <span>{{ session()->get('message.success') }}</span>
    </div>
@endif

@if (session()->has('message.danger'))
    <div class="alert alert-danger" role="alert">
        <button class="close" data-close="alert"></button>
        <span>{{ session()->get('message.danger') }}</span>
    </div>
@endif