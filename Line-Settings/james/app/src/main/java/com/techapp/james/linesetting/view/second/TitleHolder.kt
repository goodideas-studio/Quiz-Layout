package com.techapp.james.linesetting.view.second

import android.support.v7.widget.RecyclerView
import android.view.View
import com.techapp.james.linesetting.R
import kotlinx.android.synthetic.main.seconditem_layout_title.view.*

/**
 * Created by James on 2018/3/2.
 */
class TitleHolder : RecyclerView.ViewHolder {
    constructor(itemView: View) : super(itemView) {
        itemView.photo.setImageResource(R.drawable.ic_action_test)
    }
}