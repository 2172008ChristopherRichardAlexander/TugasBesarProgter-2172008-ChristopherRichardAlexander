@extends('layouts.master')

@section('content')
    <link rel="stylesheet" href="{{ asset('css/pendaftaran.css') }}">
    <div class="container d-flex justify-content-center my-5">
        <div class="card">
            <h3 class="card-header">Form Sunting Kegiatan</h3>
            <div class="card-body">
                <form enctype="multipart/form-data" method="post" action="/kegiatan/{{ $kegiatan->id }}">
                    @csrf
                    @method('put')
                    <div class="form-group">
                        <label for="title">Judul:</label> <span class="text-danger">*</span>
                        <input type="text" class="form-control" name="title" id="title" placeholder="Input Judul"
                            value="{{ $kegiatan->title }}" required>
                    </div>
                    <div class="form-group">
                        <label for="desc">Deskripsi:</label> <span class="text-danger">*</span>
                        <input type="text" class="form-control" name="desc" id="desc" placeholder="Deskripsi"
                            value="{{ $kegiatan->desc }}" required>
                    </div>
                    <div class="form-group mt-3">
                        <label for="cover">Cover:</label>
                        <input type="hidden" name='oldImage' value="{{ $kegiatan->cover }}">
                        @if ($kegiatan->cover)
                            <img src="{{ asset('storage/' . $kegiatan->cover) }}" class="img-preview img-fluid mb-3 d-block"
                                id="frame" style="max-height: 500px; overflow:hidden">
                        @else
                            <img src="" class="img-preview img-fluid mb-3" id="frame"
                                style="max-height: 400px; overflow:hidden; max-width: 400px;">
                        @endif
                        <input class="form-control" type="file" accept="img/*" name="cover" id="cover"
                            onchange="preview()" value="{{ $kegiatan->cover }}">
                    </div>
                    <div class="button mt-4 d-flex justify-content-end">
                        <button href="/kegiatan" class="btn btn-danger me-2">Cancel</button>
                        <input type="submit" class="btn btn-primary" value="Update">
                    </div>
                </form>
            </div>
        </div>
    </div>
    </div>
    <script>
        function preview() {
            frame.src = URL.createObjectURL(event.target.files[0]);
        }
    </script>
@endsection
