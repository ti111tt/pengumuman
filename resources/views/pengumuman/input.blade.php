@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Buat Pengumuman</h2>
    <form action="{{ route('pengumuman.kirim') }}" method="POST">
        @csrf
        <div class="mb-3">
            <label for="judul" class="form-label">Judul</label>
            <input type="text" name="judul" class="form-control" required>
        </div>
       
        <div class="mb-3">
            <label for="target" class="form-label">Target</label>
            <select name="target" class="form-control" required>
                <option value="semua">Semua</option>
                <option value="kelas">Per Kelas</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="kelas_id" class="form-label">Kelas (Jika Target Per Kelas)</label>
            <select name="kelas_id" class="form-control">
                <option value="">Pilih Kelas</option>
                @foreach ($kelas as $k)
                <option value="{{ $k }}">{{ $k }}</option>
                @endforeach
            </select>
        </div>
        <form action="{{ route('home.kirimPengumuman') }}" method="POST">
    @csrf
    <div>
        <label for="pesan">Pesan Pengumuman:</label>
        <textarea name="pesan" id="pesan" rows="4" required></textarea>
    </div>
    <button type="submit">Kirim</button>
</form>

@if(session('success'))
    <p style="color: green;">{{ session('success') }}</p>
@endif

    </form>
</div>
@endsection
