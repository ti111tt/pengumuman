@extends('layouts.app')

@section('content')
    <h1>Daftar Laporan</h1>
    <table border="1">
        <tr>
            <th>Nama Barang</th>
            <th>Total Penawaran</th>
            <th>Harga Akhir</th>
            <th>Tanggal Laporan</th>
        </tr>
        @foreach($laporan as $item)
            <tr>
                <td>{{ $item->lelang->barang->nama_barang }}</td>
                <td>{{ $item->total_penawaran }}</td>
                <td>{{ $item->harga_akhir }}</td>
                <td>{{ $item->created_at }}</td>
            </tr>
        @endforeach
    </table>
@endsection
