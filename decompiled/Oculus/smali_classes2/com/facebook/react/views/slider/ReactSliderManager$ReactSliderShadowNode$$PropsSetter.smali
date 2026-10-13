.class public Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode$$PropsSetter;
.super Ljava/lang/Object;
.source "ReactSliderManager$ReactSliderShadowNode$$PropsSetter.java"

# interfaces
.implements Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater$ShadowNodeSetter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater$ShadowNodeSetter",
        "<",
        "Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;",
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
    .line 180
    const-string v0, "alignContent"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v0, "alignItems"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v0, "alignSelf"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v0, "aspectRatio"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v0, "borderBottomWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v0, "borderEndWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v0, "borderLeftWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v0, "borderRightWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v0, "borderStartWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v0, "borderTopWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v0, "borderWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v0, "bottom"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v0, "collapsable"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v0, "display"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v0, "end"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v0, "flex"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v0, "flexBasis"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v0, "flexDirection"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v0, "flexGrow"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v0, "flexShrink"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v0, "flexWrap"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v0, "height"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v0, "justifyContent"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v0, "left"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v0, "margin"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v0, "marginBottom"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v0, "marginEnd"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v0, "marginHorizontal"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v0, "marginLeft"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v0, "marginRight"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v0, "marginStart"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v0, "marginTop"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v0, "marginVertical"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v0, "maxHeight"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v0, "maxWidth"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v0, "minHeight"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v0, "minWidth"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v0, "onLayout"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v0, "overflow"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v0, "padding"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v0, "paddingBottom"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v0, "paddingEnd"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v0, "paddingHorizontal"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v0, "paddingLeft"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v0, "paddingRight"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v0, "paddingStart"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v0, "paddingTop"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v0, "paddingVertical"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v0, "position"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v0, "right"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v0, "start"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v0, "top"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v0, "width"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    return-void
.end method

.method public bridge synthetic setProperty(Lcom/facebook/react/uimanager/ReactShadowNode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode$$PropsSetter;->setProperty(Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProperty(Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 15
    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 176
    :goto_1
    return-void

    .line 15
    :sswitch_0
    const-string v6, "alignContent"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v1

    goto :goto_0

    :sswitch_1
    const-string v6, "alignItems"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v3

    goto :goto_0

    :sswitch_2
    const-string v6, "alignSelf"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v4

    goto :goto_0

    :sswitch_3
    const-string v6, "aspectRatio"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v5

    goto :goto_0

    :sswitch_4
    const-string v6, "borderBottomWidth"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v6, "borderEndWidth"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string v6, "borderLeftWidth"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_7
    const-string v6, "borderRightWidth"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :sswitch_8
    const-string v6, "borderStartWidth"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :sswitch_9
    const-string v6, "borderTopWidth"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x9

    goto :goto_0

    :sswitch_a
    const-string v6, "borderWidth"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0xa

    goto :goto_0

    :sswitch_b
    const-string v6, "bottom"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0xb

    goto :goto_0

    :sswitch_c
    const-string v6, "collapsable"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v6, "display"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v6, "end"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v6, "flex"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v6, "flexBasis"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v6, "flexDirection"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v6, "flexGrow"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v6, "flexShrink"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string v6, "flexWrap"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string v6, "height"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string v6, "justifyContent"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string v6, "left"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string v6, "margin"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string v6, "marginBottom"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x19

    goto/16 :goto_0

    :sswitch_1a
    const-string v6, "marginEnd"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x1a

    goto/16 :goto_0

    :sswitch_1b
    const-string v6, "marginHorizontal"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x1b

    goto/16 :goto_0

    :sswitch_1c
    const-string v6, "marginLeft"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x1c

    goto/16 :goto_0

    :sswitch_1d
    const-string v6, "marginRight"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x1d

    goto/16 :goto_0

    :sswitch_1e
    const-string v6, "marginStart"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x1e

    goto/16 :goto_0

    :sswitch_1f
    const-string v6, "marginTop"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x1f

    goto/16 :goto_0

    :sswitch_20
    const-string v6, "marginVertical"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x20

    goto/16 :goto_0

    :sswitch_21
    const-string v6, "maxHeight"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x21

    goto/16 :goto_0

    :sswitch_22
    const-string v6, "maxWidth"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x22

    goto/16 :goto_0

    :sswitch_23
    const-string v6, "minHeight"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x23

    goto/16 :goto_0

    :sswitch_24
    const-string v6, "minWidth"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x24

    goto/16 :goto_0

    :sswitch_25
    const-string v6, "onLayout"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x25

    goto/16 :goto_0

    :sswitch_26
    const-string v6, "overflow"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x26

    goto/16 :goto_0

    :sswitch_27
    const-string v6, "padding"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x27

    goto/16 :goto_0

    :sswitch_28
    const-string v6, "paddingBottom"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x28

    goto/16 :goto_0

    :sswitch_29
    const-string v6, "paddingEnd"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x29

    goto/16 :goto_0

    :sswitch_2a
    const-string v6, "paddingHorizontal"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x2a

    goto/16 :goto_0

    :sswitch_2b
    const-string v6, "paddingLeft"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x2b

    goto/16 :goto_0

    :sswitch_2c
    const-string v6, "paddingRight"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x2c

    goto/16 :goto_0

    :sswitch_2d
    const-string v6, "paddingStart"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x2d

    goto/16 :goto_0

    :sswitch_2e
    const-string v6, "paddingTop"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x2e

    goto/16 :goto_0

    :sswitch_2f
    const-string v6, "paddingVertical"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x2f

    goto/16 :goto_0

    :sswitch_30
    const-string v6, "position"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x30

    goto/16 :goto_0

    :sswitch_31
    const-string v6, "right"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x31

    goto/16 :goto_0

    :sswitch_32
    const-string v6, "start"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x32

    goto/16 :goto_0

    :sswitch_33
    const-string v6, "top"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x33

    goto/16 :goto_0

    :sswitch_34
    const-string v6, "width"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x34

    goto/16 :goto_0

    .line 17
    :pswitch_0
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setAlignContent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 20
    :pswitch_1
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setAlignItems(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 23
    :pswitch_2
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setAlignSelf(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 26
    :pswitch_3
    if-nez p3, :cond_1

    :goto_2
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setAspectRatio(F)V

    goto/16 :goto_1

    :cond_1
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_2

    .line 29
    :pswitch_4
    const/4 v1, 0x4

    if-nez p3, :cond_2

    :goto_3
    invoke-virtual {p1, v1, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setBorderWidths(IF)V

    goto/16 :goto_1

    :cond_2
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_3

    .line 32
    :pswitch_5
    if-nez p3, :cond_3

    :goto_4
    invoke-virtual {p1, v4, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setBorderWidths(IF)V

    goto/16 :goto_1

    :cond_3
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_4

    .line 35
    :pswitch_6
    const/4 v1, 0x5

    if-nez p3, :cond_4

    :goto_5
    invoke-virtual {p1, v1, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setBorderWidths(IF)V

    goto/16 :goto_1

    :cond_4
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_5

    .line 38
    :pswitch_7
    const/4 v1, 0x6

    if-nez p3, :cond_5

    :goto_6
    invoke-virtual {p1, v1, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setBorderWidths(IF)V

    goto/16 :goto_1

    :cond_5
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_6

    .line 41
    :pswitch_8
    if-nez p3, :cond_6

    :goto_7
    invoke-virtual {p1, v3, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setBorderWidths(IF)V

    goto/16 :goto_1

    :cond_6
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_7

    .line 44
    :pswitch_9
    if-nez p3, :cond_7

    :goto_8
    invoke-virtual {p1, v5, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setBorderWidths(IF)V

    goto/16 :goto_1

    :cond_7
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_8

    .line 47
    :pswitch_a
    if-nez p3, :cond_8

    :goto_9
    invoke-virtual {p1, v1, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setBorderWidths(IF)V

    goto/16 :goto_1

    :cond_8
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_9

    .line 50
    :pswitch_b
    const/4 v0, 0x5

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setPositionValues(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 53
    :pswitch_c
    if-nez p3, :cond_9

    move v0, v1

    :goto_a
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setCollapsable(Z)V

    goto/16 :goto_1

    :cond_9
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_a

    .line 56
    :pswitch_d
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setDisplay(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 59
    :pswitch_e
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v3, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setPositionValues(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 62
    :pswitch_f
    if-nez p3, :cond_a

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setFlex(F)V

    goto/16 :goto_1

    :cond_a
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_b

    .line 65
    :pswitch_10
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setFlexBasis(Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 68
    :pswitch_11
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setFlexDirection(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 71
    :pswitch_12
    if-nez p3, :cond_b

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setFlexGrow(F)V

    goto/16 :goto_1

    :cond_b
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_c

    .line 74
    :pswitch_13
    if-nez p3, :cond_c

    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setFlexShrink(F)V

    goto/16 :goto_1

    :cond_c
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_d

    .line 77
    :pswitch_14
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setFlexWrap(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 80
    :pswitch_15
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setHeight(Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 83
    :pswitch_16
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setJustifyContent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 86
    :pswitch_17
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v4, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setPositionValues(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 89
    :pswitch_18
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setMargins(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 92
    :pswitch_19
    const/4 v0, 0x6

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setMargins(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 95
    :pswitch_1a
    const/4 v0, 0x4

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setMargins(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 98
    :pswitch_1b
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v4, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setMargins(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 101
    :pswitch_1c
    const/4 v0, 0x7

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setMargins(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 104
    :pswitch_1d
    const/16 v0, 0x8

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setMargins(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 107
    :pswitch_1e
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v5, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setMargins(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 110
    :pswitch_1f
    const/4 v0, 0x5

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setMargins(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 113
    :pswitch_20
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v3, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setMargins(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 116
    :pswitch_21
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setMaxHeight(Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 119
    :pswitch_22
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setMaxWidth(Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 122
    :pswitch_23
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setMinHeight(Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 125
    :pswitch_24
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setMinWidth(Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 128
    :pswitch_25
    if-nez p3, :cond_d

    :goto_e
    invoke-virtual {p1, v1}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setShouldNotifyOnLayout(Z)V

    goto/16 :goto_1

    :cond_d
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_e

    .line 131
    :pswitch_26
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setOverflow(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 134
    :pswitch_27
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setPaddings(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 137
    :pswitch_28
    const/4 v0, 0x6

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setPaddings(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 140
    :pswitch_29
    const/4 v0, 0x4

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setPaddings(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 143
    :pswitch_2a
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v4, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setPaddings(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 146
    :pswitch_2b
    const/4 v0, 0x7

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setPaddings(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 149
    :pswitch_2c
    const/16 v0, 0x8

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setPaddings(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 152
    :pswitch_2d
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v5, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setPaddings(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 155
    :pswitch_2e
    const/4 v0, 0x5

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setPaddings(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 158
    :pswitch_2f
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v3, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setPaddings(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 161
    :pswitch_30
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setPosition(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 164
    :pswitch_31
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v5, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setPositionValues(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 167
    :pswitch_32
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setPositionValues(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 170
    :pswitch_33
    const/4 v0, 0x4

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setPositionValues(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 173
    :pswitch_34
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setWidth(Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 15
    :sswitch_data_0
    .sparse-switch
        -0x757f89aa -> :sswitch_7
        -0x719cd38e -> :sswitch_1b
        -0x6a52083b -> :sswitch_10
        -0x597a2048 -> :sswitch_2b
        -0x56940a43 -> :sswitch_9
        -0x527265d5 -> :sswitch_b
        -0x5201456c -> :sswitch_24
        -0x4efbb2ee -> :sswitch_c
        -0x4cec9971 -> :sswitch_4
        -0x48c76ed9 -> :sswitch_15
        -0x40737a52 -> :sswitch_18
        -0x3f600445 -> :sswitch_1
        -0x3e467bb3 -> :sswitch_1a
        -0x3e464339 -> :sswitch_1f
        -0x3a1ff07a -> :sswitch_11
        -0x36017855 -> :sswitch_21
        -0x300fc3ef -> :sswitch_27
        -0x2cdbca4c -> :sswitch_0
        -0x15737ceb -> :sswitch_2a
        -0x113c6e87 -> :sswitch_19
        -0xd59d8cd -> :sswitch_6
        -0x7f661e7 -> :sswitch_23
        0x188db -> :sswitch_e
        0x1c155 -> :sswitch_33
        0x2ffff9 -> :sswitch_f
        0x32a007 -> :sswitch_17
        0x55f0f0a -> :sswitch_29
        0x55f4784 -> :sswitch_2e
        0x677c21c -> :sswitch_31
        0x68ac462 -> :sswitch_32
        0x6be2dc6 -> :sswitch_34
        0xc0fb19c -> :sswitch_28
        0x17dd56c2 -> :sswitch_22
        0x1f91b402 -> :sswitch_26
        0x2a8c788b -> :sswitch_2c
        0x2a9f7ad1 -> :sswitch_2d
        0x2c2c84fa -> :sswitch_a
        0x2c929929 -> :sswitch_30
        0x3a1ea90e -> :sswitch_1d
        0x3a31ab54 -> :sswitch_1e
        0x3d759362 -> :sswitch_13
        0x41194293 -> :sswitch_3
        0x49d9f1f7 -> :sswitch_5
        0x4ccfd1e9 -> :sswitch_25
        0x501666a7 -> :sswitch_2f
        0x5551c344 -> :sswitch_20
        0x63a518c2 -> :sswitch_d
        0x67ef5bac -> :sswitch_12
        0x67f69fe3 -> :sswitch_14
        0x6953cff1 -> :sswitch_2
        0x6ee75fc9 -> :sswitch_16
        0x757a12d5 -> :sswitch_1c
        0x7f71efd0 -> :sswitch_8
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
    .end packed-switch
.end method
