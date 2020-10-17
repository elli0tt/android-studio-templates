<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />
    <dependency mavenUrl="com.android.support:support-v4:${buildApi}.+"/>
    <dependency mavenUrl="com.android.support:recyclerview-v7:${buildApi}.+" />
    <merge from="root/res/values/strings.xml" to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <instantiate from="root/res/layout/list_item_custom.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutName)}.xml" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutName)}.xml" />

    <instantiate from="root/src/app_package/CustomListAdapter.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${adapterClass}.${ktOrJavaExt}" />
    <instantiate from="root/src/app_package/CustomViewHolder.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${viewHolderClass}.${ktOrJavaExt}" />
    <instantiate from="root/src/app_package/DataModel.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${dataClass}.${ktOrJavaExt}" />

    <open file="${escapeXmlAttribute(srcOut)}/${adapterClass}.${ktOrJavaExt}" />
    <open file="${escapeXmlAttribute(srcOut)}/${viewHolderClass}.${ktOrJavaExt}" />
</recipe>
