package com.techapp.james.linesetting.view.setting.modelData

import com.techapp.james.linesetting.R
import com.techapp.james.linesetting.Model.itemModel.Group
import com.techapp.james.linesetting.Model.itemModel.Item


/**
 * Created by James on 2018/3/2.
 */
object ViewData : ArrayList<Item>() {
    init {
        this.add(Item(null,"我的資訊"))
        this.add(Item(R.drawable.ic_action_test,"個人資料"))
        this.add(Item(R.drawable.ic_action_test,"我的帳號"))
        this.add(Item(R.drawable.ic_action_test,"隱私權設定"))
        this.add(Item(R.drawable.ic_action_test,"移動帳號設定"))
        this.add(Item(R.drawable.ic_action_test,"Keep"))
        this.add(Item(null,"商店"))
        this.add(Item(R.drawable.ic_action_test,"貼圖"))
        this.add(Item(R.drawable.ic_action_test,"主題"))
        this.add(Item(R.drawable.ic_action_test,"我的錢包"))
        this.add(Item(null,"基本設定"))
        this.add(Item(R.drawable.ic_action_test,"提醒"))
        this.add(Item(R.drawable.ic_action_test,"照片、影片"))
        this.add(Item(R.drawable.ic_action_test,"聊天"))
       // this.add(Item(R.drawable.ic_action_test,"聊天"))
    }
}