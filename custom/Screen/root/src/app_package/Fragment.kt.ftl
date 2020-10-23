package ${escapeKotlinIdentifiers(packageName)}

import android.content.Context
import android.os.Bundle
import android.view.View
import ${getMaterialComponentName('android.support.v4.app.Fragment', useAndroidX)}
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>
import ${escapeKotlinIdentifiers(packageName)}.di.${screenName}Component
import kotlinx.android.synthetic.main.${layoutName}.*

class ${fragmentClass} : Fragment(R.layout.${layoutName}) {

    private lateinit var component: ${screenName}Component

    override fun onAttach(context: Context) {
        super.onAttach(context)

        initDagger()
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        initViews()
    }

    private fun initDagger() {
        component = //TODO - Create your screen component here
        component.inject(this)
    }

    private fun initViews() {
        setListeners()
    }

    private fun setListeners() {

    }
}