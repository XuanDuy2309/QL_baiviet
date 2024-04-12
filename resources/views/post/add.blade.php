<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Post action</title>
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">

</head>
<body>
    <div class="mx-auto" style="max-width: 980px">
        <h1 class="text-success text-center">ADD NEW POST</h1>
        <a href="{{ route('post.index') }}" class="btn btn-primary my-3">Back to list of posts</a>
        <form action="{{ route('post.store') }}" method="post">
            @csrf
            <div class="form-group text-center">
                <input type="number" class="form-control my-3" placeholder="enter user id" max="50" min="1" name="user_id" required>
                <input type="text" class="form-control my-3" placeholder="enter title" name="title" required>
                <input type="text" class="form-control my-3" placeholder="enter content" name="content" required>
                <button type="submit" class="btn btn-success">Save</button>
            </div>

        </form>
    </div>
</body>
</html>
