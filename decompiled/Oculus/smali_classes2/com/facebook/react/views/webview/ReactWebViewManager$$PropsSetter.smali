.class public Lcom/facebook/react/views/webview/ReactWebViewManager$$PropsSetter;
.super Ljava/lang/Object;
.source "ReactWebViewManager$$PropsSetter.java"

# interfaces
.implements Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater$ViewManagerSetter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater$ViewManagerSetter",
        "<",
        "Lcom/facebook/react/views/webview/ReactWebViewManager;",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProperties(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    const-string v0, "accessibilityActions"

    const-string v1, "Array"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v0, "accessibilityHint"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v0, "accessibilityLabel"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v0, "accessibilityLiveRegion"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v0, "accessibilityRole"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v0, "accessibilityState"

    const-string v1, "Map"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v0, "accessibilityStates"

    const-string v1, "Array"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v0, "allowFileAccess"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v0, "allowUniversalAccessFromFileURLs"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v0, "backgroundColor"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v0, "domStorageEnabled"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v0, "elevation"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v0, "geolocationEnabled"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v0, "hardwareAccelerationEnabledExperimental"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v0, "importantForAccessibility"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v0, "injectedJavaScript"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v0, "javaScriptEnabled"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v0, "mediaPlaybackRequiresUserAction"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v0, "messagingEnabled"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v0, "mixedContentMode"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v0, "nativeID"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v0, "onContentSizeChange"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v0, "opacity"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v0, "originWhitelist"

    const-string v1, "Array"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v0, "renderToHardwareTextureAndroid"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v0, "rotation"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v0, "saveFormDataDisabled"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v0, "scaleX"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v0, "scaleY"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v0, "scalesPageToFit"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v0, "source"

    const-string v1, "Map"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v0, "testID"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v0, "thirdPartyCookiesEnabled"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v0, "transform"

    const-string v1, "Array"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v0, "translateX"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v0, "translateY"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v0, "urlPrefixesForDefaultIntent"

    const-string v1, "Array"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v0, "userAgent"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v0, "zIndex"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method public bridge synthetic setProperty(Lcom/facebook/react/uimanager/ViewManager;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/facebook/react/views/webview/ReactWebViewManager;

    check-cast p2, Landroid/webkit/WebView;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/react/views/webview/ReactWebViewManager$$PropsSetter;->setProperty(Lcom/facebook/react/views/webview/ReactWebViewManager;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProperty(Lcom/facebook/react/views/webview/ReactWebViewManager;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 14
    const/4 v5, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 133
    :goto_1
    return-void

    .line 14
    :sswitch_0
    const-string v6, "accessibilityActions"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v0

    goto :goto_0

    :sswitch_1
    const-string v6, "accessibilityHint"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v3

    goto :goto_0

    :sswitch_2
    const-string v6, "accessibilityLabel"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x2

    goto :goto_0

    :sswitch_3
    const-string v6, "accessibilityLiveRegion"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x3

    goto :goto_0

    :sswitch_4
    const-string v6, "accessibilityRole"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :sswitch_5
    const-string v6, "accessibilityState"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x5

    goto :goto_0

    :sswitch_6
    const-string v6, "accessibilityStates"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x6

    goto :goto_0

    :sswitch_7
    const-string v6, "allowFileAccess"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x7

    goto :goto_0

    :sswitch_8
    const-string v6, "allowUniversalAccessFromFileURLs"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x8

    goto :goto_0

    :sswitch_9
    const-string v6, "backgroundColor"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x9

    goto :goto_0

    :sswitch_a
    const-string v6, "domStorageEnabled"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xa

    goto :goto_0

    :sswitch_b
    const-string v6, "elevation"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xb

    goto :goto_0

    :sswitch_c
    const-string v6, "geolocationEnabled"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v6, "hardwareAccelerationEnabledExperimental"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v6, "importantForAccessibility"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v6, "injectedJavaScript"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v6, "javaScriptEnabled"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v6, "mediaPlaybackRequiresUserAction"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v6, "messagingEnabled"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v6, "mixedContentMode"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string v6, "nativeID"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string v6, "onContentSizeChange"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string v6, "opacity"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string v6, "originWhitelist"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string v6, "renderToHardwareTextureAndroid"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string v6, "rotation"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x19

    goto/16 :goto_0

    :sswitch_1a
    const-string v6, "saveFormDataDisabled"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1a

    goto/16 :goto_0

    :sswitch_1b
    const-string v6, "scaleX"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1b

    goto/16 :goto_0

    :sswitch_1c
    const-string v6, "scaleY"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1c

    goto/16 :goto_0

    :sswitch_1d
    const-string v6, "scalesPageToFit"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1d

    goto/16 :goto_0

    :sswitch_1e
    const-string v6, "source"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1e

    goto/16 :goto_0

    :sswitch_1f
    const-string v6, "testID"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1f

    goto/16 :goto_0

    :sswitch_20
    const-string v6, "thirdPartyCookiesEnabled"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x20

    goto/16 :goto_0

    :sswitch_21
    const-string v6, "transform"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x21

    goto/16 :goto_0

    :sswitch_22
    const-string v6, "translateX"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x22

    goto/16 :goto_0

    :sswitch_23
    const-string v6, "translateY"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x23

    goto/16 :goto_0

    :sswitch_24
    const-string v6, "urlPrefixesForDefaultIntent"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x24

    goto/16 :goto_0

    :sswitch_25
    const-string v6, "userAgent"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x25

    goto/16 :goto_0

    :sswitch_26
    const-string v6, "zIndex"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x26

    goto/16 :goto_0

    .line 16
    :pswitch_0
    check-cast p4, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setAccessibilityActions(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_1

    .line 19
    :pswitch_1
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setAccessibilityHint(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 22
    :pswitch_2
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setAccessibilityLabel(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 25
    :pswitch_3
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setAccessibilityLiveRegion(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 28
    :pswitch_4
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setAccessibilityRole(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 31
    :pswitch_5
    check-cast p4, Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setViewState(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_1

    .line 34
    :pswitch_6
    check-cast p4, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setViewStates(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_1

    .line 37
    :pswitch_7
    if-nez p4, :cond_1

    move-object v0, v1

    :goto_2
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setAllowFileAccess(Landroid/webkit/WebView;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    :cond_1
    if-nez p4, :cond_2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    :cond_2
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3

    .line 40
    :pswitch_8
    if-nez p4, :cond_3

    :goto_4
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setAllowUniversalAccessFromFileURLs(Landroid/webkit/WebView;Z)V

    goto/16 :goto_1

    :cond_3
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_4

    .line 43
    :pswitch_9
    if-nez p4, :cond_4

    :goto_5
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setBackgroundColor(Landroid/view/View;I)V

    goto/16 :goto_1

    :cond_4
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_5

    .line 46
    :pswitch_a
    if-nez p4, :cond_5

    :goto_6
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setDomStorageEnabled(Landroid/webkit/WebView;Z)V

    goto/16 :goto_1

    :cond_5
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_6

    .line 49
    :pswitch_b
    if-nez p4, :cond_6

    move v0, v2

    :goto_7
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setElevation(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_6
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_7

    .line 52
    :pswitch_c
    if-nez p4, :cond_7

    :goto_8
    invoke-virtual {p1, p2, v1}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setGeolocationEnabled(Landroid/webkit/WebView;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    :cond_7
    if-nez p4, :cond_8

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_8

    :cond_8
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_9

    .line 55
    :pswitch_d
    if-nez p4, :cond_9

    move v0, v3

    :goto_a
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/webview/ReactWebViewManager;->sethardwareAccelerationEnabledExperimental(Landroid/webkit/WebView;Z)V

    goto/16 :goto_1

    :cond_9
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_a

    .line 58
    :pswitch_e
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setImportantForAccessibility(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 61
    :pswitch_f
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setInjectedJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 64
    :pswitch_10
    if-nez p4, :cond_a

    :goto_b
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setJavaScriptEnabled(Landroid/webkit/WebView;Z)V

    goto/16 :goto_1

    :cond_a
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_b

    .line 67
    :pswitch_11
    if-nez p4, :cond_b

    :goto_c
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setMediaPlaybackRequiresUserAction(Landroid/webkit/WebView;Z)V

    goto/16 :goto_1

    :cond_b
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_c

    .line 70
    :pswitch_12
    if-nez p4, :cond_c

    :goto_d
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setMessagingEnabled(Landroid/webkit/WebView;Z)V

    goto/16 :goto_1

    :cond_c
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_d

    .line 73
    :pswitch_13
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setMixedContentMode(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 76
    :pswitch_14
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setNativeId(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 79
    :pswitch_15
    if-nez p4, :cond_d

    :goto_e
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setOnContentSizeChange(Landroid/webkit/WebView;Z)V

    goto/16 :goto_1

    :cond_d
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_e

    .line 82
    :pswitch_16
    if-nez p4, :cond_e

    move v0, v4

    :goto_f
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setOpacity(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_e
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_f

    .line 85
    :pswitch_17
    check-cast p4, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setOriginWhitelist(Landroid/webkit/WebView;Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_1

    .line 88
    :pswitch_18
    if-nez p4, :cond_f

    :goto_10
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setRenderToHardwareTexture(Landroid/view/View;Z)V

    goto/16 :goto_1

    :cond_f
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_10

    .line 91
    :pswitch_19
    if-nez p4, :cond_10

    :goto_11
    invoke-virtual {p1, p2, v2}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setRotation(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_10
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_11

    .line 94
    :pswitch_1a
    if-nez p4, :cond_11

    :goto_12
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setSaveFormDataDisabled(Landroid/webkit/WebView;Z)V

    goto/16 :goto_1

    :cond_11
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_12

    .line 97
    :pswitch_1b
    if-nez p4, :cond_12

    :goto_13
    invoke-virtual {p1, p2, v4}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setScaleX(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_12
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v4

    goto :goto_13

    .line 100
    :pswitch_1c
    if-nez p4, :cond_13

    :goto_14
    invoke-virtual {p1, p2, v4}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setScaleY(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_13
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v4

    goto :goto_14

    .line 103
    :pswitch_1d
    if-nez p4, :cond_14

    :goto_15
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setScalesPageToFit(Landroid/webkit/WebView;Z)V

    goto/16 :goto_1

    :cond_14
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_15

    .line 106
    :pswitch_1e
    check-cast p4, Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setSource(Landroid/webkit/WebView;Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_1

    .line 109
    :pswitch_1f
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setTestId(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 112
    :pswitch_20
    if-nez p4, :cond_15

    :goto_16
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setThirdPartyCookiesEnabled(Landroid/webkit/WebView;Z)V

    goto/16 :goto_1

    :cond_15
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_16

    .line 115
    :pswitch_21
    check-cast p4, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setTransform(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_1

    .line 118
    :pswitch_22
    if-nez p4, :cond_16

    :goto_17
    invoke-virtual {p1, p2, v2}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setTranslateX(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_16
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_17

    .line 121
    :pswitch_23
    if-nez p4, :cond_17

    :goto_18
    invoke-virtual {p1, p2, v2}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setTranslateY(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_17
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_18

    .line 124
    :pswitch_24
    check-cast p4, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setUrlPrefixesForDefaultIntent(Landroid/webkit/WebView;Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_1

    .line 127
    :pswitch_25
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setUserAgent(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 130
    :pswitch_26
    if-nez p4, :cond_18

    :goto_19
    invoke-virtual {p1, p2, v2}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setZIndex(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_18
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_19

    .line 14
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6aa7a43f -> :sswitch_17
        -0x66d9f539 -> :sswitch_1a
        -0x66a2c736 -> :sswitch_22
        -0x66a2c735 -> :sswitch_23
        -0x5fd28b0c -> :sswitch_10
        -0x5d1a4063 -> :sswitch_12
        -0x4b8807f5 -> :sswitch_16
        -0x4458d9d8 -> :sswitch_a
        -0x3621dfb2 -> :sswitch_1b
        -0x3621dfb1 -> :sswitch_1c
        -0x356f97e5 -> :sswitch_1e
        -0x34488ed3 -> :sswitch_1f
        -0x2b988b88 -> :sswitch_26
        -0x2b64a590 -> :sswitch_8
        -0x60f430b -> :sswitch_1
        -0x60aa11c -> :sswitch_4
        -0x4d24f13 -> :sswitch_18
        -0x4c4a4df -> :sswitch_d
        -0x266f082 -> :sswitch_19
        -0x42d1a3 -> :sswitch_b
        0x22936ee -> :sswitch_3
        0xcd48b9d -> :sswitch_f
        0x12900dfa -> :sswitch_25
        0x2c861b47 -> :sswitch_e
        0x2d5b5ec1 -> :sswitch_13
        0x3ebe6b6c -> :sswitch_21
        0x3ef4744b -> :sswitch_15
        0x43d84229 -> :sswitch_7
        0x445b6e46 -> :sswitch_2
        0x44c6b3e3 -> :sswitch_5
        0x4cb7f6d5 -> :sswitch_9
        0x5022225b -> :sswitch_c
        0x540fc8f0 -> :sswitch_6
        0x59bdabcf -> :sswitch_0
        0x69ca70ae -> :sswitch_11
        0x6c08f151 -> :sswitch_20
        0x6fa66963 -> :sswitch_24
        0x79eeaf72 -> :sswitch_14
        0x7ba883de -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
    .end packed-switch
.end method
