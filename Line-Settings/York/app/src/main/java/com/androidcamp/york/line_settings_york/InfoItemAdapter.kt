package com.androidcamp.york.line_settings_york

import android.content.Context
import android.support.v7.widget.RecyclerView
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.CheckBox
import android.widget.TextView

/**
 * Created by York on 2018/3/2.
 */
class InfoItemAdapter(var infoItems: List<InfoItem>, val context: Context): RecyclerView.Adapter<InfoItemAdapter.InfoItemHolder>() {

    override fun getItemCount(): Int {
        return infoItems.size
    }

    override fun onBindViewHolder(holder: InfoItemHolder?, position: Int) {
        holder?.setTitle(infoItems[position].title)
        holder?.setContent(infoItems[position].content)
        if(!infoItems[position].hasCheckBox) {
            holder?.noCheckBox()
        }
    }

    override fun onCreateViewHolder(parent: ViewGroup?, viewType: Int): InfoItemHolder {
        val view = LayoutInflater.from(context).inflate(R.layout.infoitem_personalinfo_checkbox, parent, false)
        val holder = InfoItemHolder(view)
        return holder
    }

    inner class InfoItemHolder(itemView: View?): RecyclerView.ViewHolder(itemView) {
        val textViewTitle = itemView?.findViewById<TextView>(R.id.textView_infoItem_title)
        val textViewContent = itemView?.findViewById<TextView>(R.id.textView_infoItem_content)
        val checkBox = itemView?.findViewById<CheckBox>(R.id.checkBox_infoItem)

        fun noCheckBox() {
            checkBox?.visibility = View.GONE
        }

        fun setTitle(title: String) {
            textViewTitle?.setText(title)
        }

        fun setContent(content: String) {
            textViewContent?.setText(content)
        }

        fun setChecked(checked: Boolean) {
            checkBox?.isChecked = checked
        }
    }
}