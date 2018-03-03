package com.techapp.james.linesetting.view.second

import android.app.Activity
import android.content.Intent
import android.support.v7.widget.RecyclerView
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import com.techapp.james.linesetting.Model.itemModel.SaveModel
import com.techapp.james.linesetting.R
import com.techapp.james.linesetting.view.setting.ItemViewHolder
import com.techapp.james.linesetting.view.setting.modelData.ViewData
import com.techapp.james.linesetting.view.third.ThirdActivity
import kotlinx.android.synthetic.main.second_item.view.*

/**
 * Created by James on 2018/3/2.
 */
class MyAdapter : RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private val data = UIData
    private val TYPE_TITLE = 0
    private val TYPE_CONTENT = 1
    var saveModel: SaveModel? = null

    constructor(activity: Activity) {
        this.activity = activity
        saveModel = SaveModel(activity)
    }

    override fun getItemViewType(position: Int): Int {
        return if (position == 0) TYPE_TITLE else TYPE_CONTENT
    }

    private var activity: Activity? = null

    override fun onBindViewHolder(holder: RecyclerView.ViewHolder?, position: Int) {
        println("position  " + position)
        if (position == 1 || position == 5) {
            (holder as ContentHolder).itemTitle!!.visibility = View.VISIBLE
            holder.itemTitle!!.text = UIData.get(position).title
            (holder as ContentHolder).itemContent!!.visibility = View.VISIBLE
            holder.itemContent!!.text = UIData.get(position).content
            (holder as ContentHolder).checkBox!!.visibility = View.VISIBLE
            (holder as ContentHolder).itemQRCode!!.visibility = View.INVISIBLE

        } else if (position == 6) {
            (holder as ContentHolder).itemQRCode!!.visibility = View.VISIBLE
            holder.itemQRCode!!.text = UIData.get(position).content
            (holder as ContentHolder).checkBox!!.visibility = View.INVISIBLE
            (holder as ContentHolder).itemTitle!!.visibility = View.INVISIBLE
            (holder as ContentHolder).itemContent!!.visibility = View.INVISIBLE
        } else if (position != 0) {
            (holder as ContentHolder).itemTitle!!.visibility = View.VISIBLE
            holder.itemTitle!!.text = UIData.get(position).title
            (holder as ContentHolder).itemContent!!.visibility = View.VISIBLE
            holder.itemContent!!.text = UIData.get(position).content
            (holder as ContentHolder).checkBox!!.visibility = View.INVISIBLE
            (holder as ContentHolder).itemQRCode!!.visibility = View.INVISIBLE
        }
        if (position == 2) {
            (holder as ContentHolder).view!!.itemContent.text=saveModel!!.readData()
            (holder as ContentHolder).view!!.setOnClickListener {
                val intent = Intent()
                intent.setClass(activity!!, ThirdActivity::class.java)
                activity!!.startActivity(intent)
            }
        }
    }


    override fun onCreateViewHolder(parent: ViewGroup?, viewType: Int): RecyclerView.ViewHolder {
        var holder: RecyclerView.ViewHolder? = null
        when (viewType) {
            TYPE_TITLE -> {
                var view = LayoutInflater.from(activity!!.applicationContext).inflate(R.layout.seconditem_layout_title, parent, false)
                holder = TitleHolder(view)
            }
            TYPE_CONTENT -> {
                var view = LayoutInflater.from(activity!!.applicationContext).inflate(R.layout.second_item, parent, false)
                holder = ContentHolder(view)
            }
        }
        return holder!!
    }

    override fun getItemCount(): Int {
        return data.size
    }

}