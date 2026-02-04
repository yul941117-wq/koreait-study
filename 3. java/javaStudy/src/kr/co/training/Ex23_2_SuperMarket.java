package kr.co.training;

public class Ex23_2_SuperMarket {
	private int milkCount;
	public void goSuperMarket(Ex23_2_AvocadoCondition condition) {
		if(condition.hasAvocado()) {
			milkCount = 6;
		}else {
			milkCount = 1;
		}
		public int getMilkCount() {
			return milkCount;
}
}
