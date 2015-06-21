# This function calculates the inverse of a matrix "x", and saves it in the working directory as the file "inverseMatrixX"

makeCacheMatrix <- function(x = matrix()) {
	inverse = solve(x)
	save(inverse, file = "inverseMatrixX.RData")
	inverse
}

# This function initially searches the working directory for a file names "inverseMatrixX.RData". If the file is found, it loads the file, which is the inverse of the matrix "x" otherwise it calls the "makeCacheMatrix" function in order to calculate the same and cache the result

cacheSolve <- function(x, ...) {
	list = ls()
	if (sum(list == "inverseMatrixX.RData")) {
		load(inverseMatrixX.RData)
	}
	else {
		inverse = makeCacheMatrix(x)
	}
	inverse
}