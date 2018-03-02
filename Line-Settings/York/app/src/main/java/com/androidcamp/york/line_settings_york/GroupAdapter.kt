package com.androidcamp.york.line_settings_york

import android.content.Context
import android.content.Intent
import android.support.v7.widget.RecyclerView
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import android.widget.Toast

/**
 * Created by York on 2018/3/2.
 */
class GroupAdapter(var items: List<Item>, val context: Context) : RecyclerView.Adapter<GroupAdapter.ItemHolder>() {

    override fun getItemCount(): Int {
        return items.size
    }

    override fun onBindViewHolder(holder: ItemHolder?, position: Int) {
        val item = items[position]
        if (item.imageId == 0) {
            holder?.setIconVisibility(true)
            holder?.setItemName(item.name)
        } else {
            holder?.setItemName(item.name)
            holder?.setItemIcon(item.imageId)
        }

        if(item.imageId != 0) {
            holder?.itemView?.setOnClickListener {
                Log.d("onBindViewHolder", "position: ${position}")
                when (item.name) {
                    "個人資料" -> startActivity()
                    else -> showEnterMessage(item.name)
                }
            }
        }
    }

    fun startActivity() {
        val intent = Intent()
        intent.setClass(context, PersonalInfoActivity::class.java)
        context.startActivity(intent)
    }

    fun showEnterMessage(itemName: String) {
        Toast.makeText(context, "進入${itemName}畫面", Toast.LENGTH_SHORT).show()
    }

    fun showClickTitleMessage(itemName: String) {
        Toast.makeText(context, "${itemName}畫面", Toast.LENGTH_SHORT).show()
    }

    override fun onCreateViewHolder(parent: ViewGroup?, viewType: Int): ItemHolder {
        val view = LayoutInflater.from(context).inflate(R.layout.item_main, parent, false)
        val holder = ItemHolder(view)
        return holder
    }

    inner class ItemHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {
        val textViewItemName = itemView.findViewById<TextView>(R.id.textView_item_name)
        var imageViewIcon = itemView.findViewById<ImageView>(R.id.imageView_item_icon)

        fun setIconVisibility(gone: Boolean) {
            if (gone) {
                imageViewIcon.visibility = View.GONE
            }
        }

        fun setItemName(name: String) {
            textViewItemName.setText(name)
        }

        fun setItemIcon(iconId: Int) {
            imageViewIcon.setImageDrawable(context.resources.getDrawable(iconId))
        }
    }

}