@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Kelola Kontak</h2>

    <!-- Form Tambah Kontak -->
    <div class="mb-4">
        <h4>Tambah Kontak</h4>
        <form action="{{ route('kontak.tambah') }}" method="POST">
            @csrf
            <div class="mb-3">
                <label for="nama" class="form-label">Nama</label>
                <input type="text" name="nama" id="nama" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" name="email" id="email" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="no_telp" class="form-label">No. Telepon</label>
                <input type="text" name="no_telp" id="no_telp" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="role" class="form-label">Role</label>
                <select name="role" id="role" class="form-control" required>
                    <option value="User">User</option>
                    <option value="Admin">Admin</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Tambah Kontak</button>
        </form>
    </div>

    <!-- Tabel Daftar Kontak -->
    <table class="table">
        <thead>
            <tr>
                <th>Nama</th>
                <th>Email</th>
                <th>No. Telepon</th>
                <th>Role</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($kontak as $k)
            <tr>
                <td>{{ $k->nama }}</td>
                <td>{{ $k->email }}</td>
                <td>{{ $k->no_telp }}</td>
                <td>{{ $k->role }}</td>
                <td>
                    @if ($k->is_blocked)
                        <form action="{{ route('kontak.buka-blokir', $k->id) }}" method="POST" style="display:inline;">
                            @csrf
                            <button type="submit" class="btn btn-success">Buka Blokir</button>
                        </form>
                    @else
                        <form action="{{ route('kontak.blokir', $k->id) }}" method="POST" style="display:inline;">
                            @csrf
                            <button type="submit" class="btn btn-warning">Blokir</button>
                        </form>
                    @endif
                    <form action="{{ route('kontak.hapus', $k->id) }}" method="POST" style="display:inline;">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger">Hapus</button>
                    </form>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection
