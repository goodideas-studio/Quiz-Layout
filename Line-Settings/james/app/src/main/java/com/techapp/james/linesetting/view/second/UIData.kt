package com.techapp.james.linesetting.view.second

/**
 * Created by James on 2018/3/2.
 */
object UIData :ArrayList<Item>(){
    var item:Item=Item("姓名","")
    init {
        this.add(Item("",""))
        this.add(Item("自動投稿變更後的個人圖片","個人圖片變更完畢之後，將會自動投稿到動態消息上。"))
        this.add(item)
        this.add(Item("狀態消息","慢就是快"))
        this.add(Item("ID","sliver0319"))
        this.add(Item("允許利用ID加好友","其他用戶可透過ID搜尋將您加入好友"))
        this.add(Item("","行動條碼"))
        this.add(Item("生日","尚未設定"))
    }
    public fun setName(name:String){
        item.content=name;
    }
}