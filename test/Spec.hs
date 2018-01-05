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
	