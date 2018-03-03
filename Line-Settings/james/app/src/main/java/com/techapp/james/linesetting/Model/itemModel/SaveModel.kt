package com.techapp.james.linesetting.Model.itemModel

import android.app.Activity
import android.content.SharedPreferences

/**
 * Created by James on 2018/3/2.
 */
class SaveModel {
    var settings: SharedPreferences? = null
    var activity: Activity? = null

    constructor(activity: Activity) {
        this.activity = activity
    }

    companion object {
        val data: String = "DATA"
        val name: String = "NAME"
    }

    public fun readData(): String {
        settings = activity!!.getSharedPreferences(data, 0)
        return settings!!.getString(name, "")
    }
    public fun saveData(name:String){
        settings=activity!!.getSharedPreferences(data,0);
        settings!!.edit().putString(SaveModel.name,name).commit()
    }
}