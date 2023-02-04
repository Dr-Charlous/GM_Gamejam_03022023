function shuffle_array(array) {
    randomize();
    for (var i = array_length(array)-1; i >= 1; --i) {
        var rand = irandom(i);
        var temp = array[i];
        array[@i] = array[rand];
        array[@rand] = temp;
    }
    return array;
}