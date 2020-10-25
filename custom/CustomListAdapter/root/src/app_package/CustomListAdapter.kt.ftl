package ${kotlinEscapedPackageName}

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>

class ${adapterClass}: ListAdapter<${dataClass}, ${viewHolderClass}>(DIFF_CALLBACK) {

    companion object {
        val DIFF_CALLBACK = object : DiffUtil.ItemCallback<${dataClass}>() {
            override fun areItemsTheSame(oldItem: ${dataClass}, newItem: ${dataClass}): Boolean {
                return true
            }

            override fun areContentsTheSame(oldItem: ${dataClass}, newItem: ${dataClass}): Boolean {
                return true
            }
        }
    }

    interface OnItemClickListener {
        fun onItemClick(position: Int)
    }

    interface OnSelectItemListener {
        fun onSelectItem(position: Int, isSelected: Boolean)
    }

    var onItemClickListener: OnItemClickListener? = null
    var onSelectItemListener: OnSelectItemListener? = null

    fun setOnItemClickListener(onItemClick: (Int) -> Unit) {
        onItemClickListener = object : OnItemClickListener {
            override fun onItemClick(position: Int) {
                onItemClick.invoke(position)
            }
        }
    }

    fun setOnSelectItemListener(onSelectItem: (Int, Boolean) -> Unit) {
        onSelectItemListener = object : OnSelectItemListener {
            override fun onSelectItem(position: Int, isSelected: Boolean) {
                onSelectItem.invoke(position, isSelected)
            }
        }
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ${viewHolderClass} {
        val itemView = LayoutInflater.from(parent.context)
            .inflate(R.layout.${layoutName}, parent, false)
        return ${viewHolderClass}(itemView)
    }

    override fun onBindViewHolder(holder: ${viewHolderClass}, position: Int) {
        holder.bind(getItem(position), onItemClickListener)
    }
}