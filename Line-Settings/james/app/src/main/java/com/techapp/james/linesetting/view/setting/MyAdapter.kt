package com.techapp.james.linesetting.view.setting

import android.app.Activity
import android.graphics.Color
import android.support.v7.widget.RecyclerView
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import com.techapp.james.linesetting.R
import com.techapp.james.linesetting.view.setting.modelData.ViewData


/**
 * Created by James on 2018/3/2.
 */
class MyAdapter : RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private val data = ViewData

    constructor(activity: Activity) {
        this.activity = activity

    }

    private var activity: Activity? = null

    override fun onBindViewHolder(holder: RecyclerView.ViewHolder?, position: Int) {
        if (data.get(position).name.equals("")) {
            (holder as ItemViewHolder).textView!!.visibility = View.INVISIBLE
            (holder as ItemViewHolder).imageView!!.visibility = View.INVISIBLE
        } else {
            (holder as ItemViewHolder).textView!!.visibility = View.VISIBLE
            (holder as ItemViewHolder).imageView!!.visibility = View.VISIBLE
            (holder as ItemViewHolder).textView!!.text = this.data.get(position).name
           (holder as ItemViewHolder).imageView!!.setImageResource(R.drawable.ic_action_test)
        }
    }


    override fun onCreateViewHolder(parent: ViewGroup?, viewType: Int): RecyclerView.ViewHolder {

        var holder: RecyclerView.ViewHolder? = null
        var view = LayoutInflater.from(activity!!.applicationContext).inflate(R.layout.item_layout, parent, false)
        holder = ItemViewHolder(view)

        return holder!!
    }

    override fun getItemCount(): Int {
        return data.size
    }

}