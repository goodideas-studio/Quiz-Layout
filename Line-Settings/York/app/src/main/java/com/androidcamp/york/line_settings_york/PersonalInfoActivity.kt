package com.androidcamp.york.line_settings_york

import android.content.Context
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.support.v7.widget.LinearLayoutManager
import android.util.Log
import kotlinx.android.synthetic.main.activity_personal_info.*

class PersonalInfoActivity : AppCompatActivity() {
    val infoItems = ArrayList<InfoItem>()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_personal_info)



        setInfoItems()
        initRecyclerView()
    }

    override fun onResume() {
        super.onResume()
        Log.d("PersonalInfoActivity", "onRestart")
        changeName()
        initRecyclerView()
    }

    fun changeName() {
        val sharedPref = this.getSharedPreferences(getString(R.string.personal_name), Context.MODE_PRIVATE)
        val name = sharedPref.getString("PERSONAL_NAME","none")
        Log.d("preference", "PersonalInfoActivity name: ${name}")
        infoItems[1].content = name
    }

    fun setInfoItems() {
        val sharedPref = this.getSharedPreferences(getString(R.string.personal_name), Context.MODE_PRIVATE)
        val name = sharedPref.getString("PERSONAL_NAME","none")

        val itemChangeAvatar = InfoItem("自動投稿變更後的個人圖片", "個人圖片變更完畢後，將會自動投稿到動態消息", true, false)
        val itemName = InfoItem("姓名", name, false, false)
        val itemStatus = InfoItem("狀態消息", "尚未設定", false, false)
        val itemID = InfoItem("ID", "xxxxx", false, false)
        val itemAccept = InfoItem("允許利用ID加入好友", "其他用戶可透過ID搜尋將您加入好友", true, false)
        val itemQRCode = InfoItem("行動條碼", "", false, false)
        val itemBirth = InfoItem("生日", "尚未設定", false, false)

        infoItems.add(itemChangeAvatar)
        infoItems.add(itemName)
        infoItems.add(itemStatus)
        infoItems.add(itemID)
        infoItems.add(itemAccept)
        infoItems.add(itemQRCode)
        infoItems.add(itemBirth)

        Log.d("PersonalInfoActivity", "infoItems.size: ${infoItems.size}")
    }

    fun initRecyclerView() {
        recyclerView_personalInfo_menu.layoutManager = LinearLayoutManager(this)
        recyclerView_personalInfo_menu.adapter = InfoItemAdapter(infoItems, this)
    }

}
