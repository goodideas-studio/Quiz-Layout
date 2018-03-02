package com.techapp.james.linesetting.view.setting

import android.app.Activity
import android.os.Bundle
import android.support.v7.widget.LinearLayoutManager
import com.techapp.james.linesetting.R
import kotlinx.android.synthetic.main.activity_setting.*

class SettingActivity : Activity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_setting)
        var myAdapter: MyAdapter = MyAdapter(this)
        settingRecyclerView.layoutManager = LinearLayoutManager(this)
        settingRecyclerView.adapter = myAdapter
        //settingRecyclerView
    }
}
