<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />
    <dependency mavenUrl="com.android.support:support-v4:${buildApi}.+"/>

    <instantiate from="root/res/layout/fragment_layout.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutName)}.xml" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutName)}.xml" />

    <instantiate from="root/src/app_package/Fragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentClass}.kt" />
    <instantiate from="root/src/app_package/di/Component.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/di/${screenName}Component.kt" />
    <instantiate from="root/src/app_package/di/Module.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/di/${screenName}Module.kt" />
    <instantiate from="root/src/app_package/di/Scope.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/di/${screenName}Scope.kt" />
</recipe>