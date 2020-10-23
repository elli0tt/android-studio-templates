package ${escapeKotlinIdentifiers(packageName)}.di

import ${escapeKotlinIdentifiers(packageName)}.${fragmentClass}
import dagger.Subcomponent

@${screenName}Scope
@Subcomponent
interface ${screenName}Component {

    @Subcomponent.Factory
    interface Factory {
        fun create(): ${screenName}Component
    }

    fun inject(fragment: ${fragmentClass})
}