var checkStraightLine = function(coordinates) {
    for (let i = 2; i < coordinates.length; i++) {
        const [x1, y1] = coordinates[i - 2], [x2, y2] = coordinates[i - 1], [x3, y3] = coordinates[i];
        if ((y2 - y1) * (x3 - x2) !== (y3 - y2) * (x2 - x1))
         return false;
    }
    return true;

};console.log(checkStraightLine(coordinates = [[1,2],[2,3],[3,4],[4,5],[5,6],[6,7]]));