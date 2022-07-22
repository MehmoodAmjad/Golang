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

# comma ok || error ok
```
input, e := reader.ReadString('\n') // if there is ann error it returns it
fmt.Println("Thannks for rating, ", input)
fmt.Printf("Type of rating %T \n", input)
fmt.Println("Error value, ", e)
```
# Conversion in golang
```
changeToInt, err := strconv.ParseFloat(strings.TrimSpace(input), 64)
if err != nil {
  fmt.Println(err)
} else {
	 fmt.Println("New rating : ", changeToInt+1)
}
```
# Time generation
```
presentTime := time.Now()
fmt.Println(presentTime.Format("01-02-2006 15:04:05 Monday")) // this format nneeds to be followed
createTime := time.Date(2020, time.August, 10, 23, 23, 0, 0, time.UTC)
fmt.Println(createTime.Format("01-02-2006 15:04:05 Monnday"))
```
# seed for random number
```
rand.Seed(time.Now().UnixNano())
coin := rand.Intn(2)
fmt.Println("Coin flipped : ", coin)
```

# File Handling

# Writing to file
```
content := "This needs to go in a file"
file, err := os.Create("./testgologfile.txt")

if err != nil {
 	panic(err)
}
length, e := io.WriteString(file, content)

if e != nil {
 	panic(err)
}
fmt.Println("Length : ", length)
defer file.Close()
```
# Reading from file
// reads in bytes
```
	databyte, err := ioutil.ReadFile("./testgologfile.txt")
	if err != nil {
		panic(err)
	}
	fmt.Println("Data in file : ", string(databyte))
	fmt.Printf("type of error %T\n", err)
```
