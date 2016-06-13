/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Black_Jack;

import java.util.ArrayList;
import java.util.Random;
/**
 *
 * @author 1999itukinao
 */

//1．Humanという抽象クラスを作成し、以下を実装してください。
//・openというabstractな公開メソッドを用意してください。
//・setCardというArrayListを引数とした、abstractな公開メソッドを用意してください。
//・checkSumというabstractな公開メソッドを用意してください。
//・myCardsというArrayListの変数を用意してください。

//2．1で作成した抽象クラスを継承して、以下のクラスを作成してください。
//・Dealerクラス
//・Userクラス

//3．まずはDealerクラスを完成させます。
//・cardsというArrayListの変数を用意し、初期処理でこのcardsに全てのトランプを持たせてください。
//・dealという公開メソッドを用意し、cardsからランダムで2枚のカードをArrayListにして返却してください。
//・hitという公開メソッドを用意し、cardsからランダムで1枚のカードをArrayListにして返却してください。

//4．DealerとUser両方に必要な処理を実装し、完成させます。
//・setCardは、ArrayListで受けたカード情報をmyCardsに追加するように実装してください。
//・checkSumは、myCardsを確認し、まだカードが必要ならtrue、必要無ければfalseを返却するように実装してください。
//・openは、myCardsのカードの合計値を返却するように実装してください。

//5．ブラックジャックの準備は整いました。ゲームが成り立つよう、2つのクラスを利用してコーディングしてみてください。

abstract class Human {
    abstract public Integer open();
    abstract public void setCard(ArrayList[] Integer);
    abstract public boolean checkSum();
    ArrayList<Integer> myCards = new ArrayList<Integer>();
    
    public Integer ehuda = 10;  //10, Jack, Queen, Kingの宣言
    
}
class Dealer extends Human {
    //ArrayListを用いてトランプ52枚をcardsに持たせる。
        ArrayList<Integer> cards = new ArrayList<Integer>();
    {
        for( int x = 0 ; x < 4 ; x++ ){
            for( int num = 1 ; num < 10 ; num++ ){
                cards.add(num);
            }
            for(int y = 0; y < 4; y++){
                cards.add(ehuda);
            }
        }
    }
    
    public ArrayList deal(){
        //乱数を用いてカード2枚をArrayList handに返却する。
        Random r = new Random();
        ArrayList<Integer> hand = new ArrayList<Integer>();
        for(int i = 0; i < 2; i++){
            int index = r.nextInt(cards.size());
            hand.add(cards.get(index));
            cards.remove(index);
        }
        return hand;
    }
    
    public ArrayList hit(){
        //乱数を用いてカード1枚をArrayList Hitに返却する。
        Random r = new Random();
        int index = r.nextInt(cards.size());
        ArrayList<Integer> Hit= new ArrayList<Integer>();
        Hit.add(cards.get(index));
        cards.remove(index);
        return Hit;
    }
    
    public Integer open() {
        int total = 0;
        for(int i = 0; i < myCards.size(); i++) {
                total += myCards.get(i);
       }
        return total;
    }
    
    public void setCard(ArrayList<Integer> setC) {
        for(int i = 0; i < setC.size(); i++) {
            myCards.add(setC.get(i));
        }
    }
    public boolean checkSum() {
        int total = open();
        //カード合計が11以下でカードにAがあった場合、Aの数を11に変化。
        if(total < 11) {
            for(int i = 0; i < myCards.size(); i++) {
                if(myCards.get(i) == 1) {
                    myCards.set(i, 11);
                    break;
                }
            }
        }
        //カード合計が16以下ならtrue、17以上ならfalseを返却。
        return total < 16;
    }
            
    @Override
    public void setCard(ArrayList[] Integer) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}

class User extends Human{
    public Integer open() {
        int total = 0;
        for(int i = 0; i < myCards.size(); i++) {
            total += myCards.get(i);
        }
        return total;
    }
    
    public void setCard(ArrayList<Integer> setC) {
        for(int i = 0; i < setC.size(); i++) {
            myCards.add(setC.get(i));
        }
    }
    public boolean checkSum() {
        int total = open();
        //カード合計が11以下でカードにAがあった場合、Aの数を11に変化。
        if(total < 11) {
            for(int i = 0; i < myCards.size(); i++) {
                if(myCards.get(i) == 1) {
                    myCards.set(i, 11);
                    break;
                }
            }
        }
        //カード合計が16以下ならtrue、17以上ならfalseを返却。
        return total < 16;
    }

    @Override
    public void setCard(ArrayList[] Integer) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
