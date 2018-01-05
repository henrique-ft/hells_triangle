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

	