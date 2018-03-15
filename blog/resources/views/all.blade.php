<!DOCTYPE HTML>
<html>
  <head>
    <title>Laravel Exercise</title>
  </head>
  <body>
    <table border='1' style='border-collapse: collapse'>
      <th>Name</th>
      <th>Email</th>
      @foreach($users as $user)
        <tr>
          <td>{{ $user->name }}</td>
          <td>{{ $user->email }}</td>
          <td><a href="/user/{{ $user->id }}">Detail</a></td>
          <td><a href="/user/delete/{{ $user->id }}">Delete</a></td>
          <td><a href="/user/edit/{{ $user-> id }}">Edit</a></td>
        </tr>
      @endforeach
    </table>
  </body>
</html>
