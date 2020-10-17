package ${packageName};

import android.view.View;

import androidx.annotation.NonNull;
import ${getMaterialComponentName('android.support.v7.widget.RecyclerView', useAndroidX)};

class ${viewHolderClass} extends RecyclerView.ViewHolder {
    public ${viewHolderClass}(@NonNull View itemView) {
        super(itemView);
    }

    public void bind(${dataClass} model, ${adapterClass}.OnItemClickListener onItemClickListener) {


        itemView.setOnClickListener(view -> {
            if (onItemClickListener != null) {
                onItemClickListener.onItemClick(getAdapterPosition());
            }
        });
    }
}