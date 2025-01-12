@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Pembayaran SPP</h2>

    <!-- Form untuk mencatat pembayaran -->
    <form action="{{ route('recordPayment') }}" method="POST">
        @csrf
        <div class="form-group">
            <label for="id_user">Nama Siswa</label>
            <select name="id_user" class="form-control" required>
                @foreach ($students as $student)
                <option value="{{ $student->id }}">{{ $student->name }}</option>
                @endforeach
            </select>
        </div>

        <div class="form-group">
            <label for="amount">Jumlah Pembayaran</label>
            <input type="text" name="amount" class="form-control" required>
        </div>

        <div class="form-group">
            <label for="payment_status">Status Pembayaran</label>
            <select name="payment_status" class="form-control" required>
                <option value="pending">Pending</option>
                <option value="completed">Completed</option>
            </select>
        </div
