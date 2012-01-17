<?php

$video=simplexml_load_file('http://gdata.youtube.com/feeds/api/videos/1LqYBfaXeyk');

echo $video->title.'<br/>';
echo $video->category.'<br/>';
echo $video->id.'<br/>';
echo $video->published.'<br/>';
echo $video->updated.'<br/>';
echo $video->author->name.'<br/>';
echo $video->content.'<br/>';
echo $video->author->uri.'<br/>';
?>