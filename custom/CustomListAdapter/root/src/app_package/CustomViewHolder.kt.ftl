package ${kotlinEscapedPackageName}

import android.view.View
import ${getMaterialComponentName('android.support.v7.widget.RecyclerView', useAndroidX)}

import kotlinx.android.synthetic.main.${layoutName}.view.*

class ${viewHolderClass}(itemView: View) : RecyclerView.ViewHolder(itemView) {

    fun bind(
        model: ${dataClass},
        onItemClickListener: ${adapterClass}.OnItemClickListener?
        ) {
            itemView.apply {


            onItemClickListener?.let {
                setOnClickListener {
                    onItemClickListener.onItemClick(adapterPosition)
                }
            }
        }
    }
}