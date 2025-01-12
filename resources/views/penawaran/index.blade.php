@extends('layouts.app')

@section('content')
    <h1>Daftar Penawaran</h1>
    <table border="1">
        <tr>
            <th>Nama Barang</th>
            <th>User</th>
            <th>Harga Penawaran</th>
            <th>Waktu Penawaran</th>
        </tr>
        @foreach($penawaran as $item)
            <tr>
                <td>{{ $item->lelang->barang->nama_barang }}</td>
                <td>{{ $item->user->username }}</td>
                <td>{{ $item->harga_penawaran }}</td>
                <td>{{ $item->waktu_penawaran }}</td>
            </tr>
        @endforeach
    </table>
@endsection
