.class public Lcom/facebook/react/views/view/ReactViewManager$$PropsSetter;
.super Ljava/lang/Object;
.source "ReactViewManager$$PropsSetter.java"

# interfaces
.implements Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater$ViewManagerSetter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater$ViewManagerSetter",
        "<",
        "Lcom/facebook/react/views/view/ReactViewManager;",
        "Lcom/facebook/react/views/view/ReactViewGroup;",
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
    .line 207
    const-string v0, "accessibilityActions"

    const-string v1, "Array"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v0, "accessibilityHint"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v0, "accessibilityLabel"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v0, "accessibilityLiveRegion"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v0, "accessibilityRole"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v0, "accessibilityState"

    const-string v1, "Map"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v0, "accessibilityStates"

    const-string v1, "Array"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v0, "accessible"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v0, "backfaceVisibility"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v0, "backgroundColor"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v0, "borderBottomColor"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v0, "borderBottomEndRadius"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v0, "borderBottomLeftRadius"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v0, "borderBottomRightRadius"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v0, "borderBottomStartRadius"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v0, "borderBottomWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v0, "borderColor"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v0, "borderEndColor"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v0, "borderEndWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v0, "borderLeftColor"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v0, "borderLeftWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v0, "borderRadius"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v0, "borderRightColor"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v0, "borderRightWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v0, "borderStartColor"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v0, "borderStartWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v0, "borderStyle"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v0, "borderTopColor"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v0, "borderTopEndRadius"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v0, "borderTopLeftRadius"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v0, "borderTopRightRadius"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v0, "borderTopStartRadius"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v0, "borderTopWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v0, "borderWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v0, "collapsable"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v0, "elevation"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v0, "focusable"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v0, "hasTVPreferredFocus"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v0, "hitSlop"

    const-string v1, "Map"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v0, "importantForAccessibility"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v0, "nativeBackgroundAndroid"

    const-string v1, "Map"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v0, "nativeForegroundAndroid"

    const-string v1, "Map"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v0, "nativeID"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v0, "needsOffscreenAlphaCompositing"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v0, "nextFocusDown"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v0, "nextFocusForward"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v0, "nextFocusLeft"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v0, "nextFocusRight"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v0, "nextFocusUp"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v0, "opacity"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v0, "overflow"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v0, "pointerEvents"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v0, "removeClippedSubviews"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v0, "renderToHardwareTextureAndroid"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v0, "rotation"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v0, "scaleX"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v0, "scaleY"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v0, "testID"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v0, "transform"

    const-string v1, "Array"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v0, "translateX"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v0, "translateY"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v0, "zIndex"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    return-void
.end method

.method public bridge synthetic setProperty(Lcom/facebook/react/uimanager/ViewManager;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/facebook/react/views/view/ReactViewManager;

    check-cast p2, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/react/views/view/ReactViewManager$$PropsSetter;->setProperty(Lcom/facebook/react/views/view/ReactViewManager;Lcom/facebook/react/views/view/ReactViewGroup;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProperty(Lcom/facebook/react/views/view/ReactViewManager;Lcom/facebook/react/views/view/ReactViewGroup;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x0

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    move v5, v4

    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 203
    :goto_1
    return-void

    .line 15
    :sswitch_0
    const-string v5, "accessibilityActions"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v0

    goto :goto_0

    :sswitch_1
    const-string v5, "accessibilityHint"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :sswitch_2
    const-string v5, "accessibilityLabel"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    goto :goto_0

    :sswitch_3
    const-string v5, "accessibilityLiveRegion"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    goto :goto_0

    :sswitch_4
    const-string v5, "accessibilityRole"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :sswitch_5
    const-string v5, "accessibilityState"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x5

    goto :goto_0

    :sswitch_6
    const-string v5, "accessibilityStates"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x6

    goto :goto_0

    :sswitch_7
    const-string v5, "accessible"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x7

    goto :goto_0

    :sswitch_8
    const-string v5, "backfaceVisibility"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x8

    goto :goto_0

    :sswitch_9
    const-string v5, "backgroundColor"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x9

    goto :goto_0

    :sswitch_a
    const-string v5, "borderBottomColor"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xa

    goto :goto_0

    :sswitch_b
    const-string v5, "borderBottomEndRadius"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xb

    goto :goto_0

    :sswitch_c
    const-string v5, "borderBottomLeftRadius"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v5, "borderBottomRightRadius"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v5, "borderBottomStartRadius"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v5, "borderBottomWidth"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v5, "borderColor"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v5, "borderEndColor"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v5, "borderEndWidth"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v5, "borderLeftColor"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string v5, "borderLeftWidth"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string v5, "borderRadius"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string v5, "borderRightColor"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string v5, "borderRightWidth"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string v5, "borderStartColor"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string v5, "borderStartWidth"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x19

    goto/16 :goto_0

    :sswitch_1a
    const-string v5, "borderStyle"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x1a

    goto/16 :goto_0

    :sswitch_1b
    const-string v5, "borderTopColor"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x1b

    goto/16 :goto_0

    :sswitch_1c
    const-string v5, "borderTopEndRadius"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x1c

    goto/16 :goto_0

    :sswitch_1d
    const-string v5, "borderTopLeftRadius"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x1d

    goto/16 :goto_0

    :sswitch_1e
    const-string v5, "borderTopRightRadius"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x1e

    goto/16 :goto_0

    :sswitch_1f
    const-string v5, "borderTopStartRadius"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x1f

    goto/16 :goto_0

    :sswitch_20
    const-string v5, "borderTopWidth"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x20

    goto/16 :goto_0

    :sswitch_21
    const-string v5, "borderWidth"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x21

    goto/16 :goto_0

    :sswitch_22
    const-string v5, "collapsable"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x22

    goto/16 :goto_0

    :sswitch_23
    const-string v5, "elevation"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x23

    goto/16 :goto_0

    :sswitch_24
    const-string v5, "focusable"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x24

    goto/16 :goto_0

    :sswitch_25
    const-string v5, "hasTVPreferredFocus"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x25

    goto/16 :goto_0

    :sswitch_26
    const-string v5, "hitSlop"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x26

    goto/16 :goto_0

    :sswitch_27
    const-string v5, "importantForAccessibility"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x27

    goto/16 :goto_0

    :sswitch_28
    const-string v5, "nativeBackgroundAndroid"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x28

    goto/16 :goto_0

    :sswitch_29
    const-string v5, "nativeForegroundAndroid"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x29

    goto/16 :goto_0

    :sswitch_2a
    const-string v5, "nativeID"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x2a

    goto/16 :goto_0

    :sswitch_2b
    const-string v5, "needsOffscreenAlphaCompositing"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x2b

    goto/16 :goto_0

    :sswitch_2c
    const-string v5, "nextFocusDown"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x2c

    goto/16 :goto_0

    :sswitch_2d
    const-string v5, "nextFocusForward"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x2d

    goto/16 :goto_0

    :sswitch_2e
    const-string v5, "nextFocusLeft"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x2e

    goto/16 :goto_0

    :sswitch_2f
    const-string v5, "nextFocusRight"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x2f

    goto/16 :goto_0

    :sswitch_30
    const-string v5, "nextFocusUp"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x30

    goto/16 :goto_0

    :sswitch_31
    const-string v5, "opacity"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x31

    goto/16 :goto_0

    :sswitch_32
    const-string v5, "overflow"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x32

    goto/16 :goto_0

    :sswitch_33
    const-string v5, "pointerEvents"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x33

    goto/16 :goto_0

    :sswitch_34
    const-string v5, "removeClippedSubviews"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x34

    goto/16 :goto_0

    :sswitch_35
    const-string v5, "renderToHardwareTextureAndroid"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x35

    goto/16 :goto_0

    :sswitch_36
    const-string v5, "rotation"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x36

    goto/16 :goto_0

    :sswitch_37
    const-string v5, "scaleX"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x37

    goto/16 :goto_0

    :sswitch_38
    const-string v5, "scaleY"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x38

    goto/16 :goto_0

    :sswitch_39
    const-string v5, "testID"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x39

    goto/16 :goto_0

    :sswitch_3a
    const-string v5, "transform"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x3a

    goto/16 :goto_0

    :sswitch_3b
    const-string v5, "translateX"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x3b

    goto/16 :goto_0

    :sswitch_3c
    const-string v5, "translateY"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x3c

    goto/16 :goto_0

    :sswitch_3d
    const-string v5, "zIndex"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x3d

    goto/16 :goto_0

    .line 17
    :pswitch_0
    check-cast p4, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/view/ReactViewManager;->setAccessibilityActions(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_1

    .line 20
    :pswitch_1
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/view/ReactViewManager;->setAccessibilityHint(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 23
    :pswitch_2
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/view/ReactViewManager;->setAccessibilityLabel(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 26
    :pswitch_3
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/view/ReactViewManager;->setAccessibilityLiveRegion(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 29
    :pswitch_4
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/view/ReactViewManager;->setAccessibilityRole(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 32
    :pswitch_5
    check-cast p4, Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/view/ReactViewManager;->setViewState(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_1

    .line 35
    :pswitch_6
    check-cast p4, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/view/ReactViewManager;->setViewStates(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_1

    .line 38
    :pswitch_7
    if-nez p4, :cond_1

    :goto_2
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/view/ReactViewManager;->setAccessible(Lcom/facebook/react/views/view/ReactViewGroup;Z)V

    goto/16 :goto_1

    :cond_1
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_2

    .line 41
    :pswitch_8
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/view/ReactViewManager;->setBackfaceVisibility(Lcom/facebook/react/views/view/ReactViewGroup;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 44
    :pswitch_9
    if-nez p4, :cond_2

    :goto_3
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/view/ReactViewManager;->setBackgroundColor(Landroid/view/View;I)V

    goto/16 :goto_1

    :cond_2
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_3

    .line 47
    :pswitch_a
    const/4 v2, 0x4

    if-nez p4, :cond_3

    move-object v0, v1

    :goto_4
    invoke-virtual {p1, p2, v2, v0}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderColor(Lcom/facebook/react/views/view/ReactViewGroup;ILjava/lang/Integer;)V

    goto/16 :goto_1

    :cond_3
    if-nez p4, :cond_4

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :cond_4
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_5

    .line 50
    :pswitch_b
    const/16 v1, 0x8

    if-nez p4, :cond_5

    move v0, v2

    :goto_6
    invoke-virtual {p1, p2, v1, v0}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderRadius(Lcom/facebook/react/views/view/ReactViewGroup;IF)V

    goto/16 :goto_1

    :cond_5
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_6

    .line 53
    :pswitch_c
    const/4 v0, 0x4

    if-nez p4, :cond_6

    :goto_7
    invoke-virtual {p1, p2, v0, v2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderRadius(Lcom/facebook/react/views/view/ReactViewGroup;IF)V

    goto/16 :goto_1

    :cond_6
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_7

    .line 56
    :pswitch_d
    const/4 v0, 0x3

    if-nez p4, :cond_7

    :goto_8
    invoke-virtual {p1, p2, v0, v2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderRadius(Lcom/facebook/react/views/view/ReactViewGroup;IF)V

    goto/16 :goto_1

    :cond_7
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_8

    .line 59
    :pswitch_e
    const/4 v0, 0x7

    if-nez p4, :cond_8

    :goto_9
    invoke-virtual {p1, p2, v0, v2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderRadius(Lcom/facebook/react/views/view/ReactViewGroup;IF)V

    goto/16 :goto_1

    :cond_8
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_9

    .line 62
    :pswitch_f
    const/4 v0, 0x4

    if-nez p4, :cond_9

    :goto_a
    invoke-virtual {p1, p2, v0, v2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderWidth(Lcom/facebook/react/views/view/ReactViewGroup;IF)V

    goto/16 :goto_1

    :cond_9
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_a

    .line 65
    :pswitch_10
    if-nez p4, :cond_a

    :goto_b
    invoke-virtual {p1, p2, v0, v1}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderColor(Lcom/facebook/react/views/view/ReactViewGroup;ILjava/lang/Integer;)V

    goto/16 :goto_1

    :cond_a
    if-nez p4, :cond_b

    move v1, v0

    :goto_c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_b

    :cond_b
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v1

    goto :goto_c

    .line 68
    :pswitch_11
    const/4 v2, 0x6

    if-nez p4, :cond_c

    :goto_d
    invoke-virtual {p1, p2, v2, v1}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderColor(Lcom/facebook/react/views/view/ReactViewGroup;ILjava/lang/Integer;)V

    goto/16 :goto_1

    :cond_c
    if-nez p4, :cond_d

    :goto_e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_d

    :cond_d
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_e

    .line 71
    :pswitch_12
    const/4 v0, 0x6

    if-nez p4, :cond_e

    :goto_f
    invoke-virtual {p1, p2, v0, v2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderWidth(Lcom/facebook/react/views/view/ReactViewGroup;IF)V

    goto/16 :goto_1

    :cond_e
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_f

    .line 74
    :pswitch_13
    const/4 v2, 0x1

    if-nez p4, :cond_f

    :goto_10
    invoke-virtual {p1, p2, v2, v1}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderColor(Lcom/facebook/react/views/view/ReactViewGroup;ILjava/lang/Integer;)V

    goto/16 :goto_1

    :cond_f
    if-nez p4, :cond_10

    :goto_11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_10

    :cond_10
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_11

    .line 77
    :pswitch_14
    const/4 v0, 0x1

    if-nez p4, :cond_11

    :goto_12
    invoke-virtual {p1, p2, v0, v2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderWidth(Lcom/facebook/react/views/view/ReactViewGroup;IF)V

    goto/16 :goto_1

    :cond_11
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_12

    .line 80
    :pswitch_15
    if-nez p4, :cond_12

    :goto_13
    invoke-virtual {p1, p2, v0, v2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderRadius(Lcom/facebook/react/views/view/ReactViewGroup;IF)V

    goto/16 :goto_1

    :cond_12
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_13

    .line 83
    :pswitch_16
    const/4 v2, 0x2

    if-nez p4, :cond_13

    :goto_14
    invoke-virtual {p1, p2, v2, v1}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderColor(Lcom/facebook/react/views/view/ReactViewGroup;ILjava/lang/Integer;)V

    goto/16 :goto_1

    :cond_13
    if-nez p4, :cond_14

    :goto_15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_14

    :cond_14
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_15

    .line 86
    :pswitch_17
    const/4 v0, 0x2

    if-nez p4, :cond_15

    :goto_16
    invoke-virtual {p1, p2, v0, v2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderWidth(Lcom/facebook/react/views/view/ReactViewGroup;IF)V

    goto/16 :goto_1

    :cond_15
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_16

    .line 89
    :pswitch_18
    const/4 v2, 0x5

    if-nez p4, :cond_16

    :goto_17
    invoke-virtual {p1, p2, v2, v1}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderColor(Lcom/facebook/react/views/view/ReactViewGroup;ILjava/lang/Integer;)V

    goto/16 :goto_1

    :cond_16
    if-nez p4, :cond_17

    :goto_18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_17

    :cond_17
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_18

    .line 92
    :pswitch_19
    const/4 v0, 0x5

    if-nez p4, :cond_18

    :goto_19
    invoke-virtual {p1, p2, v0, v2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderWidth(Lcom/facebook/react/views/view/ReactViewGroup;IF)V

    goto/16 :goto_1

    :cond_18
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_19

    .line 95
    :pswitch_1a
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderStyle(Lcom/facebook/react/views/view/ReactViewGroup;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 98
    :pswitch_1b
    const/4 v2, 0x3

    if-nez p4, :cond_19

    :goto_1a
    invoke-virtual {p1, p2, v2, v1}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderColor(Lcom/facebook/react/views/view/ReactViewGroup;ILjava/lang/Integer;)V

    goto/16 :goto_1

    :cond_19
    if-nez p4, :cond_1a

    :goto_1b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1a

    :cond_1a
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_1b

    .line 101
    :pswitch_1c
    const/4 v0, 0x6

    if-nez p4, :cond_1b

    :goto_1c
    invoke-virtual {p1, p2, v0, v2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderRadius(Lcom/facebook/react/views/view/ReactViewGroup;IF)V

    goto/16 :goto_1

    :cond_1b
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_1c

    .line 104
    :pswitch_1d
    const/4 v0, 0x1

    if-nez p4, :cond_1c

    :goto_1d
    invoke-virtual {p1, p2, v0, v2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderRadius(Lcom/facebook/react/views/view/ReactViewGroup;IF)V

    goto/16 :goto_1

    :cond_1c
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_1d

    .line 107
    :pswitch_1e
    const/4 v0, 0x2

    if-nez p4, :cond_1d

    :goto_1e
    invoke-virtual {p1, p2, v0, v2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderRadius(Lcom/facebook/react/views/view/ReactViewGroup;IF)V

    goto/16 :goto_1

    :cond_1d
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_1e

    .line 110
    :pswitch_1f
    const/4 v0, 0x5

    if-nez p4, :cond_1e

    :goto_1f
    invoke-virtual {p1, p2, v0, v2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderRadius(Lcom/facebook/react/views/view/ReactViewGroup;IF)V

    goto/16 :goto_1

    :cond_1e
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_1f

    .line 113
    :pswitch_20
    const/4 v0, 0x3

    if-nez p4, :cond_1f

    :goto_20
    invoke-virtual {p1, p2, v0, v2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderWidth(Lcom/facebook/react/views/view/ReactViewGroup;IF)V

    goto/16 :goto_1

    :cond_1f
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_20

    .line 116
    :pswitch_21
    if-nez p4, :cond_20

    :goto_21
    invoke-virtual {p1, p2, v0, v2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderWidth(Lcom/facebook/react/views/view/ReactViewGroup;IF)V

    goto/16 :goto_1

    :cond_20
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_21

    .line 119
    :pswitch_22
    if-nez p4, :cond_21

    :goto_22
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/view/ReactViewManager;->setCollapsable(Lcom/facebook/react/views/view/ReactViewGroup;Z)V

    goto/16 :goto_1

    :cond_21
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_22

    .line 122
    :pswitch_23
    if-nez p4, :cond_22

    move v0, v3

    :goto_23
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/view/ReactViewManager;->setElevation(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_22
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_23

    .line 125
    :pswitch_24
    if-nez p4, :cond_23

    :goto_24
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/view/ReactViewManager;->setFocusable(Lcom/facebook/react/views/view/ReactViewGroup;Z)V

    goto/16 :goto_1

    :cond_23
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_24

    .line 128
    :pswitch_25
    if-nez p4, :cond_24

    :goto_25
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/view/ReactViewManager;->setTVPreferredFocus(Lcom/facebook/react/views/view/ReactViewGroup;Z)V

    goto/16 :goto_1

    :cond_24
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_25

    .line 131
    :pswitch_26
    check-cast p4, Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/view/ReactViewManager;->setHitSlop(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_1

    .line 134
    :pswitch_27
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/view/ReactViewManager;->setImportantForAccessibility(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 137
    :pswitch_28
    check-cast p4, Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/view/ReactViewManager;->setNativeBackground(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_1

    .line 140
    :pswitch_29
    check-cast p4, Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/view/ReactViewManager;->setNativeForeground(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_1

    .line 143
    :pswitch_2a
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/view/ReactViewManager;->setNativeId(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 146
    :pswitch_2b
    if-nez p4, :cond_25

    :goto_26
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/view/ReactViewManager;->setNeedsOffscreenAlphaCompositing(Lcom/facebook/react/views/view/ReactViewGroup;Z)V

    goto/16 :goto_1

    :cond_25
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_26

    .line 149
    :pswitch_2c
    if-nez p4, :cond_26

    move v0, v4

    :goto_27
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/view/ReactViewManager;->nextFocusDown(Lcom/facebook/react/views/view/ReactViewGroup;I)V

    goto/16 :goto_1

    :cond_26
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_27

    .line 152
    :pswitch_2d
    if-nez p4, :cond_27

    :goto_28
    invoke-virtual {p1, p2, v4}, Lcom/facebook/react/views/view/ReactViewManager;->nextFocusForward(Lcom/facebook/react/views/view/ReactViewGroup;I)V

    goto/16 :goto_1

    :cond_27
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v4

    goto :goto_28

    .line 155
    :pswitch_2e
    if-nez p4, :cond_28

    :goto_29
    invoke-virtual {p1, p2, v4}, Lcom/facebook/react/views/view/ReactViewManager;->nextFocusLeft(Lcom/facebook/react/views/view/ReactViewGroup;I)V

    goto/16 :goto_1

    :cond_28
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v4

    goto :goto_29

    .line 158
    :pswitch_2f
    if-nez p4, :cond_29

    :goto_2a
    invoke-virtual {p1, p2, v4}, Lcom/facebook/react/views/view/ReactViewManager;->nextFocusRight(Lcom/facebook/react/views/view/ReactViewGroup;I)V

    goto/16 :goto_1

    :cond_29
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v4

    goto :goto_2a

    .line 161
    :pswitch_30
    if-nez p4, :cond_2a

    :goto_2b
    invoke-virtual {p1, p2, v4}, Lcom/facebook/react/views/view/ReactViewManager;->nextFocusUp(Lcom/facebook/react/views/view/ReactViewGroup;I)V

    goto/16 :goto_1

    :cond_2a
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v4

    goto :goto_2b

    .line 164
    :pswitch_31
    if-nez p4, :cond_2b

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2c
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/view/ReactViewManager;->setOpacity(Lcom/facebook/react/views/view/ReactViewGroup;F)V

    goto/16 :goto_1

    :cond_2b
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_2c

    .line 167
    :pswitch_32
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/view/ReactViewManager;->setOverflow(Lcom/facebook/react/views/view/ReactViewGroup;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 170
    :pswitch_33
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/view/ReactViewManager;->setPointerEvents(Lcom/facebook/react/views/view/ReactViewGroup;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 173
    :pswitch_34
    if-nez p4, :cond_2c

    :goto_2d
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/view/ReactViewManager;->setRemoveClippedSubviews(Lcom/facebook/react/views/view/ReactViewGroup;Z)V

    goto/16 :goto_1

    :cond_2c
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_2d

    .line 176
    :pswitch_35
    if-nez p4, :cond_2d

    :goto_2e
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/view/ReactViewManager;->setRenderToHardwareTexture(Landroid/view/View;Z)V

    goto/16 :goto_1

    :cond_2d
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_2e

    .line 179
    :pswitch_36
    if-nez p4, :cond_2e

    :goto_2f
    invoke-virtual {p1, p2, v3}, Lcom/facebook/react/views/view/ReactViewManager;->setRotation(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_2e
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v3

    goto :goto_2f

    .line 182
    :pswitch_37
    if-nez p4, :cond_2f

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_30
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/view/ReactViewManager;->setScaleX(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_2f
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_30

    .line 185
    :pswitch_38
    if-nez p4, :cond_30

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_31
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/view/ReactViewManager;->setScaleY(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_30
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_31

    .line 188
    :pswitch_39
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/view/ReactViewManager;->setTestId(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 191
    :pswitch_3a
    check-cast p4, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/view/ReactViewManager;->setTransform(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_1

    .line 194
    :pswitch_3b
    if-nez p4, :cond_31

    :goto_32
    invoke-virtual {p1, p2, v3}, Lcom/facebook/react/views/view/ReactViewManager;->setTranslateX(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_31
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v3

    goto :goto_32

    .line 197
    :pswitch_3c
    if-nez p4, :cond_32

    :goto_33
    invoke-virtual {p1, p2, v3}, Lcom/facebook/react/views/view/ReactViewManager;->setTranslateY(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_32
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v3

    goto :goto_33

    .line 200
    :pswitch_3d
    if-nez p4, :cond_33

    :goto_34
    invoke-virtual {p1, p2, v3}, Lcom/facebook/react/views/view/ReactViewManager;->setZIndex(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_33
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v3

    goto :goto_34

    .line 15
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7696880d -> :sswitch_16
        -0x757f89aa -> :sswitch_17
        -0x66a2c736 -> :sswitch_3b
        -0x66a2c735 -> :sswitch_3c
        -0x6532960a -> :sswitch_8
        -0x57ab08a6 -> :sswitch_1b
        -0x56940a43 -> :sswitch_20
        -0x4efbb2ee -> :sswitch_22
        -0x4e0397d4 -> :sswitch_a
        -0x4cec9971 -> :sswitch_f
        -0x4b8807f5 -> :sswitch_31
        -0x4932ce1e -> :sswitch_1d
        -0x4408644a -> :sswitch_7
        -0x42e281b5 -> :sswitch_1f
        -0x3621dfb2 -> :sswitch_37
        -0x3621dfb1 -> :sswitch_38
        -0x34488ed3 -> :sswitch_39
        -0x33b27663 -> :sswitch_e
        -0x2b988b88 -> :sswitch_3d
        -0x2881956d -> :sswitch_25
        -0x25a40819 -> :sswitch_2c
        -0x25a08cb4 -> :sswitch_2e
        -0x1cd17a3c -> :sswitch_1c
        -0x117e564a -> :sswitch_33
        -0xf06d417 -> :sswitch_34
        -0xe70d730 -> :sswitch_13
        -0xd59d8cd -> :sswitch_14
        -0x8d2c26a -> :sswitch_b
        -0x689bbab -> :sswitch_29
        -0x60f430b -> :sswitch_1
        -0x60aa11c -> :sswitch_4
        -0x4d24f13 -> :sswitch_35
        -0x266f082 -> :sswitch_36
        -0x42d1a3 -> :sswitch_23
        0x22936ee -> :sswitch_3
        0x13dfc885 -> :sswitch_1e
        0x1e013d60 -> :sswitch_2d
        0x1f91b402 -> :sswitch_32
        0x22a57450 -> :sswitch_c
        0x230fd3d7 -> :sswitch_d
        0x2762ef20 -> :sswitch_30
        0x2b158697 -> :sswitch_10
        0x2bf974e5 -> :sswitch_1a
        0x2c2c84fa -> :sswitch_21
        0x2c861b47 -> :sswitch_27
        0x373ef02d -> :sswitch_26
        0x3ebe6b6c -> :sswitch_3a
        0x445b6e46 -> :sswitch_2
        0x44c6b3e3 -> :sswitch_5
        0x48c2f394 -> :sswitch_11
        0x49d9f1f7 -> :sswitch_12
        0x4cb7f6d5 -> :sswitch_9
        0x506afbde -> :sswitch_15
        0x540fc8f0 -> :sswitch_6
        0x59bdabcf -> :sswitch_0
        0x6118be32 -> :sswitch_24
        0x636835e4 -> :sswitch_2b
        0x682c2a0a -> :sswitch_28
        0x71e55777 -> :sswitch_2f
        0x79eeaf72 -> :sswitch_2a
        0x7e5af16d -> :sswitch_18
        0x7f71efd0 -> :sswitch_19
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
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
    .end packed-switch
.end method
