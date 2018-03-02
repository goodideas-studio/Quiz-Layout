package com.techapp.james.linesetting.view.third

import android.app.Activity
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.widget.EditText
import com.techapp.james.linesetting.Model.itemModel.SaveModel
import com.techapp.james.linesetting.R
import com.techapp.james.linesetting.view.second.UIData
import kotlinx.android.synthetic.main.activity_third.*

class ThirdActivity : Activity() {
    var name: EditText? = null
    var saveModel:SaveModel?=null
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_third)
        saveModel= SaveModel(this)
        name=editText
        saveButton.setOnClickListener {
            UIData.setName(name!!.text.toString())
            this@ThirdActivity.saveModel!!.saveData(name!!.text.toString())
            this.finish()
        }
    }
}
