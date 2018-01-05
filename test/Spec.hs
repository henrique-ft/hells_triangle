import Test.Hspec
import Lib

main :: IO ()
main = hspec $ do -- A partir desse primeiro do teremos uma ou mais descrições do teste
	describe "returnValueByIndexOrReturnZero function" $ do -- A partir daqui teremos uma ou mais afirmações do teste

		it "Return a correct value by list index" $ do 
			(returnValueByIndexOrReturnZero 3 [1,2,3,4]) `shouldBe` 4

		it "Return zero if index don't exist" $ do 
			(returnValueByIndexOrReturnZero 30 [1,2,3,4]) `shouldBe` 0

		it "Return zero if index is negative" $ do 
			(returnValueByIndexOrReturnZero (-1) [1,2,3,4]) `shouldBe` 0

	describe "mapWithIteration works" $ do
		
		it "receive a function and a list" $ do
			(mapWithIteration (\k v -> v+1) [1,2,3,4]) `shouldBe` [2,3,4,5]

		it "receive the index of iteration" $ do
			(mapWithIteration (\k v -> v+k) [1,2,3,4]) `shouldBe` [1,3,5,7]
	
	describe "getValuesThatCanBeSummedAndSum function" $ do

		it "Sum max value near from list to another by index" $ do
			(getValuesThatCanBeSummedAndSum [1,2] [1] 1 10) `shouldBe` 12

		it "Works with equal values in list" $ do
			(getValuesThatCanBeSummedAndSum [2,2] [1] 1 10) `shouldBe` 12

	describe "sumHellsTriangleFromBottom function" $ do

		it "Dont cause effects when there is a empty list in first param" $ do
			(sumHellsTriangleFromBottom [] [1,2,3]) `shouldBe` [1,2,3]

		it "Find corresponding max value of 'triangle' and sum" $ do
			(sumHellsTriangleFromBottom [1,2,3] [2,3]) `shouldBe` [4,6]

	describe "Principal Functionality" $ do

		it "find the maximum total" $ do
			(findMaximumTotal [[6],[3,5],[9,7,1],[4,6,8,4]]) `shouldBe` 26