# Learning Golang

# Input and in Golang
```
var input int
fmt.Scanln(&input)
fmt.Println("The number that we input :", input)
 
input2 := bufio.NewReader(os.Stdin)
fmt.Println("Enter the rating for our pizza:")
```
# Variables
// define a variable based on datatype
```
var variable_name datatype = value <br />
```
// self assign datatype depending onn values
```
variable_name := value <br /> 
```

# Const
```
const variable_name = value
```

# loops
```
for i := 0; i < range ; i++ {
    // functionality
  }
for index,value := range values{
  // functionality
}
```

# Arrays
```
var a [size] int

b := [5]int{1, 2, 3, 4, 5}

var twoD [2][3]int
```
# Slices
// declaration
```
s := make([]string, len(variable))
twoD := make([][]datatype, size)


```
// adding a new element
```
s = append(s, "d")
```
// copying 
```
copy(c, s)

c := s[start_index:end_index(not included)]
```
