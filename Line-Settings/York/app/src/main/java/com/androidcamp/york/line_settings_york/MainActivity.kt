package com.androidcamp.york.line_settings_york

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.support.v7.widget.LinearLayoutManager
import kotlinx.android.synthetic.main.activity_main.*
import java.security.acl.Group

class MainActivity : AppCompatActivity() {
    val items = ArrayList<Item>()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        setItems()
        initRecyclerView()
    }

    fun setItems() {
        val item1 = Item("我的資訊", 0)
        val item2 = Item("個人資料", R.drawable.ic_build_black_24dp)
        val item5 = Item("我的帳號", R.drawable.ic_build_black_24dp)
        val item3 = Item("隱私設定", R.drawable.ic_build_black_24dp)
        val item4 = Item("移動帳號設定", R.drawable.ic_build_black_24dp)

        val item6 = Item("商店", 0)
        val item7 = Item("貼圖", R.drawable.ic_build_black_24dp)
        val item8 = Item("主題", R.drawable.ic_build_black_24dp)
        val item9 = Item("我的錢包", R.drawable.ic_build_black_24dp)

        val item10 = Item("基本設定", 0)
        val item11 = Item("提醒", R.drawable.ic_build_black_24dp)
        val item12 = Item("照片、影片", R.drawable.ic_build_black_24dp)
        val item13 = Item("聊天", R.drawable.ic_build_black_24dp)

//        items.add(item1)
//        items.add(item2)
//        items.add(item3)

        items.add(item1)
        items.add(item2)
        items.add(item3)
        items.add(item4)
        items.add(item5)
        items.add(item6)
        items.add(item7)
        items.add(item8)
        items.add(item9)
        items.add(item10)
        items.add(item11)
        items.add(item12)
        items.add(item13)

    }

    fun initRecyclerView() {
        val layoutManager = LinearLayoutManager(this)
//        val groups = ArrayList<com.androidcamp.york.line_settings_york.Group>()


//        groups.add(com.androidcamp.york.line_settings_york.Group("我的資訊", items))

        recyclerView_main.layoutManager = layoutManager
        recyclerView_main.adapter = GroupAdapter(items, this)

    }
}
