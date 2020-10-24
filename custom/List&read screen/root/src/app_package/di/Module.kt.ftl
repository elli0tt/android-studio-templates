package ${escapeKotlinIdentifiers(packageName)}.di

import dagger.Module

@Module(subcomponents = [${screenName}Component::class])
class ${screenName}Module {
}