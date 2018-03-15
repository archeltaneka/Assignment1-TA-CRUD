<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\UserModel;
use DB;

class UserController extends Controller
{
  protected $user;

  public function __construct(UserModel $user) {
    $this->user = $user;
  }

  public function register(Request $request) {
    // echo $request->name;
    // echo " ";
    // echo $request->email;
    // echo " ";
    // echo $request->password;
    // echo " ";
    $user = [
      "name" => $request->name,
      "email" => $request->email,
      "password" => md5($request->password)
    ];

    $user = $this->user->create($user);

    if($user) {
      return "Successfully created <a href='/form'>Click here</a> to insert data again<br>Or <a href='/all'>view</a> all records";
    }

    return "Failed";
  }

  public function all() {
    $users = $this->user->all();

    return view("all")->with('users', $users);
  }

  public function find($id) {
    $user = $this->user->find($id);
    //$user = $this->user->where("id", "=", $id);

    return $user;
  }

  public function deleteUser($id) {
    $deletedUser = $this->user->find($id);
    $deletedUser->delete();
    echo "Record successfully deleted.<br>";
    echo "<a href='/all'>Click Here</a> to go back.";
  }

  public function show($id) {
    $users = DB::select('select * from users where id = ?',[$id]);

    return view('edituser', ['users'=>$users]);
  }

  public function updateUser(Request $request, $id) {
    $newName = $request->input('name');
    $newEmail = $request->input('email');
    DB::update('update users set name = ?, email = ? where id = ?', [$newName, $newEmail, $id]);
    echo 'Record updated successfully.<br>';
    echo '<a href="/all">Click Here</a> to go back.';
  }
}
