package com.techapp.james.linesetting.view.second

import android.app.Activity
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.support.v7.widget.LinearLayoutManager
import com.techapp.james.linesetting.Model.itemModel.SaveModel
import com.techapp.james.linesetting.R
import kotlinx.android.synthetic.main.activity_second.*
import kotlinx.android.synthetic.main.activity_setting.*

class SecondActivity : Activity() {
    var myAdapter: MyAdapter? =null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_second)
        myAdapter= MyAdapter(this)
        secondRecycleView.layoutManager = LinearLayoutManager(this)
        secondRecycleView.adapter = myAdapter
    }

    override fun onRestart() {
        myAdapter!!.notifyDataSetChanged()
        super.onRestart()
    }
}
