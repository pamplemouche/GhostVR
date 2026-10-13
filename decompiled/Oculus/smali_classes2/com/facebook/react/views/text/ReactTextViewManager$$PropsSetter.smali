.class public Lcom/facebook/react/views/text/ReactTextViewManager$$PropsSetter;
.super Ljava/lang/Object;
.source "ReactTextViewManager$$PropsSetter.java"

# interfaces
.implements Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater$ViewManagerSetter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater$ViewManagerSetter",
        "<",
        "Lcom/facebook/react/views/text/ReactTextViewManager;",
        "Lcom/facebook/react/views/text/ReactTextView;",
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
    .line 159
    const-string v0, "accessibilityActions"

    const-string v1, "Array"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v0, "accessibilityHint"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v0, "accessibilityLabel"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v0, "accessibilityLiveRegion"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v0, "accessibilityRole"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v0, "accessibilityState"

    const-string v1, "Map"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v0, "accessibilityStates"

    const-string v1, "Array"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v0, "backgroundColor"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v0, "borderBottomColor"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v0, "borderBottomLeftRadius"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v0, "borderBottomRightRadius"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v0, "borderBottomWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v0, "borderColor"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v0, "borderLeftColor"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v0, "borderLeftWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v0, "borderRadius"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v0, "borderRightColor"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v0, "borderRightWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v0, "borderStyle"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v0, "borderTopColor"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v0, "borderTopLeftRadius"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v0, "borderTopRightRadius"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v0, "borderTopWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v0, "borderWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v0, "dataDetectorType"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v0, "disabled"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v0, "elevation"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v0, "ellipsizeMode"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v0, "importantForAccessibility"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v0, "includeFontPadding"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v0, "nativeID"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v0, "numberOfLines"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v0, "onInlineViewLayout"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v0, "opacity"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v0, "renderToHardwareTextureAndroid"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v0, "rotation"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v0, "scaleX"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v0, "scaleY"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v0, "selectable"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v0, "selectionColor"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v0, "testID"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v0, "textAlignVertical"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v0, "transform"

    const-string v1, "Array"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v0, "translateX"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v0, "translateY"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v0, "zIndex"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-void
.end method

.method public bridge synthetic setProperty(Lcom/facebook/react/uimanager/ViewManager;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/facebook/react/views/text/ReactTextViewManager;

    check-cast p2, Lcom/facebook/react/views/text/ReactTextView;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/react/views/text/ReactTextViewManager$$PropsSetter;->setProperty(Lcom/facebook/react/views/text/ReactTextViewManager;Lcom/facebook/react/views/text/ReactTextView;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProperty(Lcom/facebook/react/views/text/ReactTextViewManager;Lcom/facebook/react/views/text/ReactTextView;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/4 v0, 0x0

    .line 15
    const/4 v5, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 155
    :goto_1
    return-void

    .line 15
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

    move v5, v4

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
    const-string v6, "backgroundColor"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x7

    goto :goto_0

    :sswitch_8
    const-string v6, "borderBottomColor"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x8

    goto :goto_0

    :sswitch_9
    const-string v6, "borderBottomLeftRadius"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x9

    goto :goto_0

    :sswitch_a
    const-string v6, "borderBottomRightRadius"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xa

    goto :goto_0

    :sswitch_b
    const-string v6, "borderBottomWidth"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xb

    goto :goto_0

    :sswitch_c
    const-string v6, "borderColor"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v6, "borderLeftColor"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v6, "borderLeftWidth"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v6, "borderRadius"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v6, "borderRightColor"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v6, "borderRightWidth"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v6, "borderStyle"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v6, "borderTopColor"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string v6, "borderTopLeftRadius"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string v6, "borderTopRightRadius"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string v6, "borderTopWidth"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string v6, "borderWidth"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string v6, "dataDetectorType"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string v6, "disabled"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x19

    goto/16 :goto_0

    :sswitch_1a
    const-string v6, "elevation"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1a

    goto/16 :goto_0

    :sswitch_1b
    const-string v6, "ellipsizeMode"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1b

    goto/16 :goto_0

    :sswitch_1c
    const-string v6, "importantForAccessibility"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1c

    goto/16 :goto_0

    :sswitch_1d
    const-string v6, "includeFontPadding"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1d

    goto/16 :goto_0

    :sswitch_1e
    const-string v6, "nativeID"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1e

    goto/16 :goto_0

    :sswitch_1f
    const-string v6, "numberOfLines"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1f

    goto/16 :goto_0

    :sswitch_20
    const-string v6, "onInlineViewLayout"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x20

    goto/16 :goto_0

    :sswitch_21
    const-string v6, "opacity"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x21

    goto/16 :goto_0

    :sswitch_22
    const-string v6, "renderToHardwareTextureAndroid"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x22

    goto/16 :goto_0

    :sswitch_23
    const-string v6, "rotation"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x23

    goto/16 :goto_0

    :sswitch_24
    const-string v6, "scaleX"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x24

    goto/16 :goto_0

    :sswitch_25
    const-string v6, "scaleY"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x25

    goto/16 :goto_0

    :sswitch_26
    const-string v6, "selectable"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x26

    goto/16 :goto_0

    :sswitch_27
    const-string v6, "selectionColor"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x27

    goto/16 :goto_0

    :sswitch_28
    const-string v6, "testID"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x28

    goto/16 :goto_0

    :sswitch_29
    const-string v6, "textAlignVertical"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x29

    goto/16 :goto_0

    :sswitch_2a
    const-string v6, "transform"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x2a

    goto/16 :goto_0

    :sswitch_2b
    const-string v6, "translateX"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x2b

    goto/16 :goto_0

    :sswitch_2c
    const-string v6, "translateY"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x2c

    goto/16 :goto_0

    :sswitch_2d
    const-string v6, "zIndex"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x2d

    goto/16 :goto_0

    .line 17
    :pswitch_0
    check-cast p4, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/text/ReactTextViewManager;->setAccessibilityActions(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_1

    .line 20
    :pswitch_1
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/text/ReactTextViewManager;->setAccessibilityHint(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 23
    :pswitch_2
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/text/ReactTextViewManager;->setAccessibilityLabel(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 26
    :pswitch_3
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/text/ReactTextViewManager;->setAccessibilityLiveRegion(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 29
    :pswitch_4
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/text/ReactTextViewManager;->setAccessibilityRole(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 32
    :pswitch_5
    check-cast p4, Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/text/ReactTextViewManager;->setViewState(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_1

    .line 35
    :pswitch_6
    check-cast p4, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/text/ReactTextViewManager;->setViewStates(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_1

    .line 38
    :pswitch_7
    if-nez p4, :cond_1

    :goto_2
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/text/ReactTextViewManager;->setBackgroundColor(Landroid/view/View;I)V

    goto/16 :goto_1

    :cond_1
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_2

    .line 41
    :pswitch_8
    const/4 v2, 0x4

    if-nez p4, :cond_2

    move-object v0, v1

    :goto_3
    invoke-virtual {p1, p2, v2, v0}, Lcom/facebook/react/views/text/ReactTextViewManager;->setBorderColor(Lcom/facebook/react/views/text/ReactTextView;ILjava/lang/Integer;)V

    goto/16 :goto_1

    :cond_2
    if-nez p4, :cond_3

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_3
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_4

    .line 44
    :pswitch_9
    const/4 v1, 0x4

    if-nez p4, :cond_4

    move v0, v2

    :goto_5
    invoke-virtual {p1, p2, v1, v0}, Lcom/facebook/react/views/text/ReactTextViewManager;->setBorderRadius(Lcom/facebook/react/views/text/ReactTextView;IF)V

    goto/16 :goto_1

    :cond_4
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_5

    .line 47
    :pswitch_a
    const/4 v0, 0x3

    if-nez p4, :cond_5

    :goto_6
    invoke-virtual {p1, p2, v0, v2}, Lcom/facebook/react/views/text/ReactTextViewManager;->setBorderRadius(Lcom/facebook/react/views/text/ReactTextView;IF)V

    goto/16 :goto_1

    :cond_5
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_6

    .line 50
    :pswitch_b
    const/4 v0, 0x4

    if-nez p4, :cond_6

    :goto_7
    invoke-virtual {p1, p2, v0, v2}, Lcom/facebook/react/views/text/ReactTextViewManager;->setBorderWidth(Lcom/facebook/react/views/text/ReactTextView;IF)V

    goto/16 :goto_1

    :cond_6
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_7

    .line 53
    :pswitch_c
    if-nez p4, :cond_7

    :goto_8
    invoke-virtual {p1, p2, v0, v1}, Lcom/facebook/react/views/text/ReactTextViewManager;->setBorderColor(Lcom/facebook/react/views/text/ReactTextView;ILjava/lang/Integer;)V

    goto/16 :goto_1

    :cond_7
    if-nez p4, :cond_8

    move v1, v0

    :goto_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_8

    :cond_8
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v1

    goto :goto_9

    .line 56
    :pswitch_d
    if-nez p4, :cond_9

    :goto_a
    invoke-virtual {p1, p2, v4, v1}, Lcom/facebook/react/views/text/ReactTextViewManager;->setBorderColor(Lcom/facebook/react/views/text/ReactTextView;ILjava/lang/Integer;)V

    goto/16 :goto_1

    :cond_9
    if-nez p4, :cond_a

    :goto_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_a

    :cond_a
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_b

    .line 59
    :pswitch_e
    if-nez p4, :cond_b

    :goto_c
    invoke-virtual {p1, p2, v4, v2}, Lcom/facebook/react/views/text/ReactTextViewManager;->setBorderWidth(Lcom/facebook/react/views/text/ReactTextView;IF)V

    goto/16 :goto_1

    :cond_b
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_c

    .line 62
    :pswitch_f
    if-nez p4, :cond_c

    :goto_d
    invoke-virtual {p1, p2, v0, v2}, Lcom/facebook/react/views/text/ReactTextViewManager;->setBorderRadius(Lcom/facebook/react/views/text/ReactTextView;IF)V

    goto/16 :goto_1

    :cond_c
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_d

    .line 65
    :pswitch_10
    const/4 v2, 0x2

    if-nez p4, :cond_d

    :goto_e
    invoke-virtual {p1, p2, v2, v1}, Lcom/facebook/react/views/text/ReactTextViewManager;->setBorderColor(Lcom/facebook/react/views/text/ReactTextView;ILjava/lang/Integer;)V

    goto/16 :goto_1

    :cond_d
    if-nez p4, :cond_e

    :goto_f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_e

    :cond_e
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_f

    .line 68
    :pswitch_11
    const/4 v0, 0x2

    if-nez p4, :cond_f

    :goto_10
    invoke-virtual {p1, p2, v0, v2}, Lcom/facebook/react/views/text/ReactTextViewManager;->setBorderWidth(Lcom/facebook/react/views/text/ReactTextView;IF)V

    goto/16 :goto_1

    :cond_f
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_10

    .line 71
    :pswitch_12
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/text/ReactTextViewManager;->setBorderStyle(Lcom/facebook/react/views/text/ReactTextView;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 74
    :pswitch_13
    const/4 v2, 0x3

    if-nez p4, :cond_10

    :goto_11
    invoke-virtual {p1, p2, v2, v1}, Lcom/facebook/react/views/text/ReactTextViewManager;->setBorderColor(Lcom/facebook/react/views/text/ReactTextView;ILjava/lang/Integer;)V

    goto/16 :goto_1

    :cond_10
    if-nez p4, :cond_11

    :goto_12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_11

    :cond_11
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_12

    .line 77
    :pswitch_14
    if-nez p4, :cond_12

    :goto_13
    invoke-virtual {p1, p2, v4, v2}, Lcom/facebook/react/views/text/ReactTextViewManager;->setBorderRadius(Lcom/facebook/react/views/text/ReactTextView;IF)V

    goto/16 :goto_1

    :cond_12
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_13

    .line 80
    :pswitch_15
    const/4 v0, 0x2

    if-nez p4, :cond_13

    :goto_14
    invoke-virtual {p1, p2, v0, v2}, Lcom/facebook/react/views/text/ReactTextViewManager;->setBorderRadius(Lcom/facebook/react/views/text/ReactTextView;IF)V

    goto/16 :goto_1

    :cond_13
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_14

    .line 83
    :pswitch_16
    const/4 v0, 0x3

    if-nez p4, :cond_14

    :goto_15
    invoke-virtual {p1, p2, v0, v2}, Lcom/facebook/react/views/text/ReactTextViewManager;->setBorderWidth(Lcom/facebook/react/views/text/ReactTextView;IF)V

    goto/16 :goto_1

    :cond_14
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_15

    .line 86
    :pswitch_17
    if-nez p4, :cond_15

    :goto_16
    invoke-virtual {p1, p2, v0, v2}, Lcom/facebook/react/views/text/ReactTextViewManager;->setBorderWidth(Lcom/facebook/react/views/text/ReactTextView;IF)V

    goto/16 :goto_1

    :cond_15
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_16

    .line 89
    :pswitch_18
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/text/ReactTextViewManager;->setDataDetectorType(Lcom/facebook/react/views/text/ReactTextView;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 92
    :pswitch_19
    if-nez p4, :cond_16

    :goto_17
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/text/ReactTextViewManager;->setDisabled(Lcom/facebook/react/views/text/ReactTextView;Z)V

    goto/16 :goto_1

    :cond_16
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_17

    .line 95
    :pswitch_1a
    if-nez p4, :cond_17

    move v0, v3

    :goto_18
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/text/ReactTextViewManager;->setElevation(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_17
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_18

    .line 98
    :pswitch_1b
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/text/ReactTextViewManager;->setEllipsizeMode(Lcom/facebook/react/views/text/ReactTextView;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 101
    :pswitch_1c
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/text/ReactTextViewManager;->setImportantForAccessibility(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 104
    :pswitch_1d
    if-nez p4, :cond_18

    move v0, v4

    :goto_19
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/text/ReactTextViewManager;->setIncludeFontPadding(Lcom/facebook/react/views/text/ReactTextView;Z)V

    goto/16 :goto_1

    :cond_18
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_19

    .line 107
    :pswitch_1e
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/text/ReactTextViewManager;->setNativeId(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 110
    :pswitch_1f
    if-nez p4, :cond_19

    const v0, 0x7fffffff

    :goto_1a
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/text/ReactTextViewManager;->setNumberOfLines(Lcom/facebook/react/views/text/ReactTextView;I)V

    goto/16 :goto_1

    :cond_19
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_1a

    .line 113
    :pswitch_20
    if-nez p4, :cond_1a

    :goto_1b
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/text/ReactTextViewManager;->setNotifyOnInlineViewLayout(Lcom/facebook/react/views/text/ReactTextView;Z)V

    goto/16 :goto_1

    :cond_1a
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1b

    .line 116
    :pswitch_21
    if-nez p4, :cond_1b

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1c
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/text/ReactTextViewManager;->setOpacity(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_1b
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_1c

    .line 119
    :pswitch_22
    if-nez p4, :cond_1c

    :goto_1d
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/text/ReactTextViewManager;->setRenderToHardwareTexture(Landroid/view/View;Z)V

    goto/16 :goto_1

    :cond_1c
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1d

    .line 122
    :pswitch_23
    if-nez p4, :cond_1d

    :goto_1e
    invoke-virtual {p1, p2, v3}, Lcom/facebook/react/views/text/ReactTextViewManager;->setRotation(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_1d
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v3

    goto :goto_1e

    .line 125
    :pswitch_24
    if-nez p4, :cond_1e

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1f
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/text/ReactTextViewManager;->setScaleX(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_1e
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_1f

    .line 128
    :pswitch_25
    if-nez p4, :cond_1f

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_20
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/text/ReactTextViewManager;->setScaleY(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_1f
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_20

    .line 131
    :pswitch_26
    if-nez p4, :cond_20

    :goto_21
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/text/ReactTextViewManager;->setSelectable(Lcom/facebook/react/views/text/ReactTextView;Z)V

    goto/16 :goto_1

    :cond_20
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_21

    .line 134
    :pswitch_27
    if-nez p4, :cond_21

    :goto_22
    invoke-virtual {p1, p2, v1}, Lcom/facebook/react/views/text/ReactTextViewManager;->setSelectionColor(Lcom/facebook/react/views/text/ReactTextView;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :cond_21
    if-nez p4, :cond_22

    :goto_23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_22

    :cond_22
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_23

    .line 137
    :pswitch_28
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/text/ReactTextViewManager;->setTestId(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 140
    :pswitch_29
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/text/ReactTextViewManager;->setTextAlignVertical(Lcom/facebook/react/views/text/ReactTextView;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 143
    :pswitch_2a
    check-cast p4, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/text/ReactTextViewManager;->setTransform(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_1

    .line 146
    :pswitch_2b
    if-nez p4, :cond_23

    :goto_24
    invoke-virtual {p1, p2, v3}, Lcom/facebook/react/views/text/ReactTextViewManager;->setTranslateX(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_23
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v3

    goto :goto_24

    .line 149
    :pswitch_2c
    if-nez p4, :cond_24

    :goto_25
    invoke-virtual {p1, p2, v3}, Lcom/facebook/react/views/text/ReactTextViewManager;->setTranslateY(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_24
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v3

    goto :goto_25

    .line 152
    :pswitch_2d
    if-nez p4, :cond_25

    :goto_26
    invoke-virtual {p1, p2, v3}, Lcom/facebook/react/views/text/ReactTextViewManager;->setZIndex(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_25
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v3

    goto :goto_26

    .line 15
    :sswitch_data_0
    .sparse-switch
        -0x7696880d -> :sswitch_10
        -0x757f89aa -> :sswitch_11
        -0x66a2c736 -> :sswitch_2b
        -0x66a2c735 -> :sswitch_2c
        -0x62ae13aa -> :sswitch_26
        -0x57ab08a6 -> :sswitch_13
        -0x56940a43 -> :sswitch_16
        -0x4f447821 -> :sswitch_1f
        -0x4e0397d4 -> :sswitch_8
        -0x4cec9971 -> :sswitch_b
        -0x4b8807f5 -> :sswitch_21
        -0x4932ce1e -> :sswitch_14
        -0x3ccc2316 -> :sswitch_18
        -0x3621dfb2 -> :sswitch_24
        -0x3621dfb1 -> :sswitch_25
        -0x34488ed3 -> :sswitch_28
        -0x2b988b88 -> :sswitch_2d
        -0xe70d730 -> :sswitch_d
        -0xd59d8cd -> :sswitch_e
        -0x829a659 -> :sswitch_20
        -0x60f430b -> :sswitch_1
        -0x60aa11c -> :sswitch_4
        -0x4d24f13 -> :sswitch_22
        -0x266f082 -> :sswitch_23
        -0x42d1a3 -> :sswitch_1a
        0x22936ee -> :sswitch_3
        0x10263a7c -> :sswitch_19
        0x13dfc885 -> :sswitch_15
        0x22a57450 -> :sswitch_9
        0x230fd3d7 -> :sswitch_a
        0x2b158697 -> :sswitch_c
        0x2bf974e5 -> :sswitch_12
        0x2c2c84fa -> :sswitch_17
        0x2c861b47 -> :sswitch_1c
        0x3ebe6b6c -> :sswitch_2a
        0x445b6e46 -> :sswitch_2
        0x44c6b3e3 -> :sswitch_5
        0x4cb7f6d5 -> :sswitch_7
        0x506afbde -> :sswitch_f
        0x540fc8f0 -> :sswitch_6
        0x59bdabcf -> :sswitch_0
        0x6ba759d0 -> :sswitch_1b
        0x6f6d096e -> :sswitch_29
        0x78687afa -> :sswitch_1d
        0x79eeaf72 -> :sswitch_1e
        0x7fb0e537 -> :sswitch_27
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
    .end packed-switch
.end method
