package com.androidcamp.york.line_settings_york

import android.content.Context
import android.content.SharedPreferences
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.support.v7.widget.Toolbar
import android.util.Log
import kotlinx.android.synthetic.main.activity_name.*
import kotlinx.android.synthetic.main.activity_name.view.*

class NameActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_name)

        toolbar_name.title = "姓名"
        button_name_save.setOnClickListener {
            writeSharedPref(editText_name_input.text.toString())
        }
    }

    fun writeSharedPref(name: String) {
        val personalName = getString(R.string.personal_name)
        val sharedPref = this.getSharedPreferences(personalName, Context.MODE_PRIVATE)
        val editor = sharedPref.edit()
        editor.putString(getString(R.string.personal_name), name)
        editor.commit()
        Log.d("preference", "NameActivity ${sharedPref.getString(personalName, "none")}")

        finish()
    }
}
