package ${packageName};

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;

<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>

class ${adapterClass} extends ListAdapter<${dataClass}, ${viewHolderClass}> {

    public ${adapterClass}() {
        super(DIFF_CALLBACK);
    }

    private static final DiffUtil.ItemCallback<${dataClass}> DIFF_CALLBACK = new DiffUtil.ItemCallback<${dataClass}>() {
        @Override
        public boolean areItemsTheSame(@NonNull ${dataClass} oldItem, @NonNull ${dataClass} newItem) {
            return true;
        }

        @Override
        public boolean areContentsTheSame(@NonNull ${dataClass} oldItem, @NonNull ${dataClass} newItem) {
            return true;
        }
    };

    interface OnItemClickListener {
        void onItemClick(int position);
    }

    interface OnSelectItemListener {
        void onSelectItem(int position, boolean isSelected);
    }

    private OnItemClickListener onItemClickListener;
    private OnSelectItemListener onSelectItemListener;

    public OnItemClickListener getOnItemClickListener() {
        return onItemClickListener;
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.onItemClickListener = onItemClickListener;
    }

    public OnSelectItemListener getOnSelectItemListener() {
        return onSelectItemListener;
    }

    public void setOnSelectItemListener(OnSelectItemListener onSelectItemListener) {
        this.onSelectItemListener = onSelectItemListener;
    }

    @NonNull
    @Override
    public ${viewHolderClass} onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View itemView = LayoutInflater.from(parent.getContext())
            .inflate(R.layout.k, parent, false);
        return new ${viewHolderClass}(itemView);
    }

    @Override
    public void onBindViewHolder(@NonNull ${viewHolderClass} holder, int position) {
        holder.bind(getItem(position), onItemClickListener);
    }
}