package com.techapp.james.linesetting.view.second

import android.support.v7.widget.RecyclerView
import android.view.View
import android.widget.CheckBox
import android.widget.TextView
import kotlinx.android.synthetic.main.item_layout.view.*
import kotlinx.android.synthetic.main.second_item.view.*

/**
 * Created by James on 2018/3/2.
 */
class ContentHolder : RecyclerView.ViewHolder {
    var itemTitle: TextView? = null
    var itemContent: TextView? = null
    var itemQRCode: TextView? = null
    var checkBox: CheckBox? = null
    var view: View? = null

    constructor(itemView: View) : super(itemView) {
        itemTitle = itemView.itemTitle
        itemContent = itemView.itemContent
        itemQRCode = itemView.qrCode
        checkBox = itemView.checkBox
        this.view=itemView
    }
}