import Fun
import Test.HUnit

testFactorial1 = TestCase $ assertEqual "4! = 24" 24 (factorial 4)

testDown1 = TestCase $ assertEqual "5 down 2 = 5*4 = 20" 20 ( 5 `down` 2)

main = runTestTT $ TestList [testFactorial1, testDown1]
