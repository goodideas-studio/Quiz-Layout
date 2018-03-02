package com.techapp.james.linesetting.view.setting

import android.support.v7.widget.RecyclerView
import android.view.View
import android.widget.ImageView
import android.widget.TextView
import kotlinx.android.synthetic.main.item_layout.view.*
import org.w3c.dom.Text

/**
 * Created by James on 2018/3/2.
 */
class ItemViewHolder : RecyclerView.ViewHolder {
    public var textView: TextView? = null
    public var imageView: ImageView? = null
    var tiTextView: TextView? = null

    constructor(itemView: View) : super(itemView) {
        //here can get item layout's components
        textView = itemView.textView
        imageView = itemView.imageView
        tiTextView=itemView.titleTextView
    }
}