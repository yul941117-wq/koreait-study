package kr.co.koreait;

import java.util.ArrayList;

import kr.co.training.Ex21_3_CharaterAbility;
import kr.co.training.Ex21_3_Sorceress;

public class Ex22_Main {

	public static void main(String[] args) {
		Ex22_1_Samsong samsong = new Ex22_1_Samsong();
		samsong.powerOn();
		samsong.powerOff();
		
		Ex22_1_Computer computer = new Ex22_1_Computer();
		samsong.powerOn();
		samsong.powerOff();
		
		Ex22_2_Dog d= new Ex22_2_Dog();
		d.makeSound();
		
		//강아지들을 담을 리스트
		ArrayList<Ex22_2_Dog> list = new ArrayList<>();
		list.add(d);
		list.add(new Ex22_2_Dog());
		
		System.out.println(list.get(0));
		
		
		list.get(0).makeSound();
		list.get(1).makeSound();
	//-----------------------------------------------
		//케릭터의 능력치를 가진 객체
		Ex21_3_CharaterAbility ca = new Ex21_3_CharaterAbility();
		//소서리스 객체
		Ex21_3_Sorceress sorceress = new Ex21_3_Sorceress (ca);
		sorceress.attack(ca);
		
	
	}

}
