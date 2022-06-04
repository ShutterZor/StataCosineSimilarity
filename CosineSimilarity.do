*- 验证
	clear	
	set obs 4
	generate var1 = 0 in 1
	replace var1 = 1 in 2
	replace var1 = 1 in 3
	replace var1 = 0 in 4
	generate var2 = 1 in 1
	replace var2 = 2 in 2
	replace var2 = 2 in 3
	replace var2 = 1 in 4
	
	gen frac1 = var1*var2
	
	egen sumfrac1 = sum(frac1)

	foreach v in var1 var2{
		gen `v'frac2 = `v' * `v'
		egen `v'sumfrac2 = sum(`v'frac2)
		gen sqrt`v' = sqrt(`v'sumfrac2)
	}
	gen frac2 = sqrtvar1 * sqrtvar2
	gen cs = sumfrac1/frac2


*- 对于一般性的数据
*- 生成数据
	clear
	set obs 100
	set seed 100
	gen Sentence1 = int(10*runiform())
	gen Sentence2 = int(10*runiform())


***************** 下面为正式代码 ********************
*- 计算分子
	gen timesFraction1 = Sentence1 * Sentence2	// 按需更改
	egen Fraction1 = sum(timesFraction1)

*- 计算分母
	foreach v in Sentence1 Sentence2{	//按需更改
		gen times`v' = `v' * `v'
		egen sum`v' = sum(times`v')
		gen sqrt`v' = sqrt(sum`v')
	}
	gen Fraction2 = sqrtSentence1 * sqrtSentence2
	gen cs = Fraction1 / Fraction2
	drop times* sum* sqrt* Fraction*
	

