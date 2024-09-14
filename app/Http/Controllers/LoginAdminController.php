<?php

namespace App\Http\Controllers;

use App\Models\Tb_pengguna;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class LoginAdminController extends Controller
{
    public function index()
    {
        return view('admin.login');
    }
    public function authenticate(Request $request)
    {
        $credentials = $request->validate([
            'email' => ['required', 'email'],
            'password' => ['required'],
        ]);

        if (Auth::attempt($credentials)) {
            $penggunas = Tb_pengguna::where('id_user', Auth::user()->id)->get();
            foreach ($penggunas as $pengguna) {
                $pengguna;
            }
            if ($request->user()->id === 1 || $pengguna->isActive == 1) {
                session()->put('success', 'Anda telah berhasil login');
                return redirect('/master-admin/dashboard');
            } else {
                Auth::logout();
                toastr()->error(
                    'Akun Anda Di nonaktifkan Untuk Sementara',
                    'Gagal Login'
                );
                return redirect('/master-admin/login');
            }
        }
        toastr()->error('Akun Tidak Di Temukan', 'Gagal Login');
        return back();
    }

    public function logout(Request $request)
    {
        Auth::logout();

        return redirect('/master-admin/login');
    }
    public function profile_update(Request $request)
    {
        $user = Auth::user();
        $passwordOld = $request->input('password_old');
        if (Hash::check($passwordOld, $user->password)) {
            $user = User::find($user->id);
            $user->email = $request->email_new;
            $user->password = Hash::make($request->password_new);
            $user->save();
            session()->put('success', 'Berhasil Setting Akun');
            return redirect()->back();
        } else {
            session()->danger('danger', 'Password Lama Anda Salah');
            return redirect()->back();
        }
    }
}
