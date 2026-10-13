.class public Lcom/facebook/react/views/textinput/ReactTextInputShadowNode$$PropsSetter;
.super Ljava/lang/Object;
.source "ReactTextInputShadowNode$$PropsSetter.java"

# interfaces
.implements Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater$ShadowNodeSetter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater$ShadowNodeSetter",
        "<",
        "Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;",
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
    .line 248
    const-string v0, "alignContent"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v0, "alignItems"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v0, "alignSelf"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v0, "allowFontScaling"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v0, "aspectRatio"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v0, "backgroundColor"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v0, "borderBottomWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v0, "borderEndWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v0, "borderLeftWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v0, "borderRightWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v0, "borderStartWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v0, "borderTopWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v0, "borderWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v0, "bottom"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v0, "collapsable"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v0, "color"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v0, "display"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v0, "end"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v0, "flex"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v0, "flexBasis"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v0, "flexDirection"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v0, "flexGrow"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v0, "flexShrink"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v0, "flexWrap"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v0, "fontFamily"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v0, "fontSize"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v0, "fontStyle"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v0, "fontWeight"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v0, "height"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v0, "includeFontPadding"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v0, "justifyContent"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v0, "left"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v0, "letterSpacing"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v0, "lineHeight"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v0, "margin"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v0, "marginBottom"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v0, "marginEnd"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v0, "marginHorizontal"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v0, "marginLeft"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v0, "marginRight"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v0, "marginStart"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v0, "marginTop"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v0, "marginVertical"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v0, "maxFontSizeMultiplier"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v0, "maxHeight"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v0, "maxWidth"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v0, "minHeight"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v0, "minWidth"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v0, "mostRecentEventCount"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v0, "numberOfLines"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v0, "onLayout"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v0, "overflow"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v0, "padding"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v0, "paddingBottom"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v0, "paddingEnd"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v0, "paddingHorizontal"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v0, "paddingLeft"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v0, "paddingRight"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v0, "paddingStart"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v0, "paddingTop"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v0, "paddingVertical"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v0, "placeholder"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v0, "position"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v0, "right"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v0, "selection"

    const-string v1, "Map"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v0, "start"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v0, "text"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v0, "textAlign"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string v0, "textBreakStrategy"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v0, "textDecorationLine"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v0, "textShadowColor"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v0, "textShadowOffset"

    const-string v1, "Map"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v0, "textShadowRadius"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v0, "textTransform"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v0, "top"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v0, "width"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    return-void
.end method

.method public bridge synthetic setProperty(Lcom/facebook/react/uimanager/ReactShadowNode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode$$PropsSetter;->setProperty(Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProperty(Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 14
    const/4 v3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 244
    :goto_1
    return-void

    .line 14
    :sswitch_0
    const-string v6, "alignContent"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v2

    goto :goto_0

    :sswitch_1
    const-string v6, "alignItems"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v0

    goto :goto_0

    :sswitch_2
    const-string v6, "alignSelf"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v4

    goto :goto_0

    :sswitch_3
    const-string v6, "allowFontScaling"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v5

    goto :goto_0

    :sswitch_4
    const-string v6, "aspectRatio"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string v6, "backgroundColor"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_6
    const-string v6, "borderBottomWidth"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_7
    const-string v6, "borderEndWidth"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x7

    goto :goto_0

    :sswitch_8
    const-string v6, "borderLeftWidth"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :sswitch_9
    const-string v6, "borderRightWidth"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x9

    goto :goto_0

    :sswitch_a
    const-string v6, "borderStartWidth"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0xa

    goto :goto_0

    :sswitch_b
    const-string v6, "borderTopWidth"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0xb

    goto :goto_0

    :sswitch_c
    const-string v6, "borderWidth"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v6, "bottom"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v6, "collapsable"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v6, "color"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v6, "display"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v6, "end"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v6, "flex"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v6, "flexBasis"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string v6, "flexDirection"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string v6, "flexGrow"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string v6, "flexShrink"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string v6, "flexWrap"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string v6, "fontFamily"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string v6, "fontSize"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x19

    goto/16 :goto_0

    :sswitch_1a
    const-string v6, "fontStyle"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x1a

    goto/16 :goto_0

    :sswitch_1b
    const-string v6, "fontWeight"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x1b

    goto/16 :goto_0

    :sswitch_1c
    const-string v6, "height"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x1c

    goto/16 :goto_0

    :sswitch_1d
    const-string v6, "includeFontPadding"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x1d

    goto/16 :goto_0

    :sswitch_1e
    const-string v6, "justifyContent"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x1e

    goto/16 :goto_0

    :sswitch_1f
    const-string v6, "left"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x1f

    goto/16 :goto_0

    :sswitch_20
    const-string v6, "letterSpacing"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x20

    goto/16 :goto_0

    :sswitch_21
    const-string v6, "lineHeight"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x21

    goto/16 :goto_0

    :sswitch_22
    const-string v6, "margin"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x22

    goto/16 :goto_0

    :sswitch_23
    const-string v6, "marginBottom"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x23

    goto/16 :goto_0

    :sswitch_24
    const-string v6, "marginEnd"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x24

    goto/16 :goto_0

    :sswitch_25
    const-string v6, "marginHorizontal"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x25

    goto/16 :goto_0

    :sswitch_26
    const-string v6, "marginLeft"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x26

    goto/16 :goto_0

    :sswitch_27
    const-string v6, "marginRight"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x27

    goto/16 :goto_0

    :sswitch_28
    const-string v6, "marginStart"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x28

    goto/16 :goto_0

    :sswitch_29
    const-string v6, "marginTop"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x29

    goto/16 :goto_0

    :sswitch_2a
    const-string v6, "marginVertical"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x2a

    goto/16 :goto_0

    :sswitch_2b
    const-string v6, "maxFontSizeMultiplier"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x2b

    goto/16 :goto_0

    :sswitch_2c
    const-string v6, "maxHeight"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x2c

    goto/16 :goto_0

    :sswitch_2d
    const-string v6, "maxWidth"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x2d

    goto/16 :goto_0

    :sswitch_2e
    const-string v6, "minHeight"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x2e

    goto/16 :goto_0

    :sswitch_2f
    const-string v6, "minWidth"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x2f

    goto/16 :goto_0

    :sswitch_30
    const-string v6, "mostRecentEventCount"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x30

    goto/16 :goto_0

    :sswitch_31
    const-string v6, "numberOfLines"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x31

    goto/16 :goto_0

    :sswitch_32
    const-string v6, "onLayout"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x32

    goto/16 :goto_0

    :sswitch_33
    const-string v6, "overflow"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x33

    goto/16 :goto_0

    :sswitch_34
    const-string v6, "padding"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x34

    goto/16 :goto_0

    :sswitch_35
    const-string v6, "paddingBottom"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x35

    goto/16 :goto_0

    :sswitch_36
    const-string v6, "paddingEnd"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x36

    goto/16 :goto_0

    :sswitch_37
    const-string v6, "paddingHorizontal"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x37

    goto/16 :goto_0

    :sswitch_38
    const-string v6, "paddingLeft"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x38

    goto/16 :goto_0

    :sswitch_39
    const-string v6, "paddingRight"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x39

    goto/16 :goto_0

    :sswitch_3a
    const-string v6, "paddingStart"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x3a

    goto/16 :goto_0

    :sswitch_3b
    const-string v6, "paddingTop"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x3b

    goto/16 :goto_0

    :sswitch_3c
    const-string v6, "paddingVertical"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x3c

    goto/16 :goto_0

    :sswitch_3d
    const-string v6, "placeholder"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x3d

    goto/16 :goto_0

    :sswitch_3e
    const-string v6, "position"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x3e

    goto/16 :goto_0

    :sswitch_3f
    const-string v6, "right"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x3f

    goto/16 :goto_0

    :sswitch_40
    const-string v6, "selection"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x40

    goto/16 :goto_0

    :sswitch_41
    const-string v6, "start"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x41

    goto/16 :goto_0

    :sswitch_42
    const-string v6, "text"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x42

    goto/16 :goto_0

    :sswitch_43
    const-string v6, "textAlign"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x43

    goto/16 :goto_0

    :sswitch_44
    const-string v6, "textBreakStrategy"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x44

    goto/16 :goto_0

    :sswitch_45
    const-string v6, "textDecorationLine"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x45

    goto/16 :goto_0

    :sswitch_46
    const-string v6, "textShadowColor"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x46

    goto/16 :goto_0

    :sswitch_47
    const-string v6, "textShadowOffset"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x47

    goto/16 :goto_0

    :sswitch_48
    const-string v6, "textShadowRadius"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x48

    goto/16 :goto_0

    :sswitch_49
    const-string v6, "textTransform"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x49

    goto/16 :goto_0

    :sswitch_4a
    const-string v6, "top"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x4a

    goto/16 :goto_0

    :sswitch_4b
    const-string v6, "width"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x4b

    goto/16 :goto_0

    .line 16
    :pswitch_0
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setAlignContent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 19
    :pswitch_1
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setAlignItems(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 22
    :pswitch_2
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setAlignSelf(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 25
    :pswitch_3
    if-nez p3, :cond_1

    :goto_2
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setAllowFontScaling(Z)V

    goto/16 :goto_1

    :cond_1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_2

    .line 28
    :pswitch_4
    if-nez p3, :cond_2

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setAspectRatio(F)V

    goto/16 :goto_1

    :cond_2
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_3

    .line 31
    :pswitch_5
    if-nez p3, :cond_3

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setBackgroundColor(Ljava/lang/Integer;)V

    goto/16 :goto_1

    :cond_3
    if-nez p3, :cond_4

    move v0, v2

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :cond_4
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_5

    .line 34
    :pswitch_6
    const/4 v0, 0x4

    if-nez p3, :cond_5

    :goto_6
    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setBorderWidths(IF)V

    goto/16 :goto_1

    :cond_5
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v1

    goto :goto_6

    .line 37
    :pswitch_7
    if-nez p3, :cond_6

    :goto_7
    invoke-virtual {p1, v4, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setBorderWidths(IF)V

    goto/16 :goto_1

    :cond_6
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v1

    goto :goto_7

    .line 40
    :pswitch_8
    const/4 v0, 0x5

    if-nez p3, :cond_7

    :goto_8
    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setBorderWidths(IF)V

    goto/16 :goto_1

    :cond_7
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v1

    goto :goto_8

    .line 43
    :pswitch_9
    const/4 v0, 0x6

    if-nez p3, :cond_8

    :goto_9
    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setBorderWidths(IF)V

    goto/16 :goto_1

    :cond_8
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v1

    goto :goto_9

    .line 46
    :pswitch_a
    if-nez p3, :cond_9

    :goto_a
    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setBorderWidths(IF)V

    goto/16 :goto_1

    :cond_9
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v1

    goto :goto_a

    .line 49
    :pswitch_b
    if-nez p3, :cond_a

    :goto_b
    invoke-virtual {p1, v5, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setBorderWidths(IF)V

    goto/16 :goto_1

    :cond_a
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v1

    goto :goto_b

    .line 52
    :pswitch_c
    if-nez p3, :cond_b

    :goto_c
    invoke-virtual {p1, v2, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setBorderWidths(IF)V

    goto/16 :goto_1

    :cond_b
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v1

    goto :goto_c

    .line 55
    :pswitch_d
    const/4 v0, 0x5

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setPositionValues(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 58
    :pswitch_e
    if-nez p3, :cond_c

    :goto_d
    invoke-virtual {p1, v2}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setCollapsable(Z)V

    goto/16 :goto_1

    :cond_c
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_d

    .line 61
    :pswitch_f
    if-nez p3, :cond_d

    const/4 v0, 0x0

    :goto_e
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setColor(Ljava/lang/Integer;)V

    goto/16 :goto_1

    :cond_d
    if-nez p3, :cond_e

    :goto_f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_e

    :cond_e
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v2

    goto :goto_f

    .line 64
    :pswitch_10
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setDisplay(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 67
    :pswitch_11
    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setPositionValues(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 70
    :pswitch_12
    if-nez p3, :cond_f

    const/4 v0, 0x0

    :goto_10
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setFlex(F)V

    goto/16 :goto_1

    :cond_f
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_10

    .line 73
    :pswitch_13
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setFlexBasis(Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 76
    :pswitch_14
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setFlexDirection(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 79
    :pswitch_15
    if-nez p3, :cond_10

    const/4 v0, 0x0

    :goto_11
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setFlexGrow(F)V

    goto/16 :goto_1

    :cond_10
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_11

    .line 82
    :pswitch_16
    if-nez p3, :cond_11

    const/4 v0, 0x0

    :goto_12
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setFlexShrink(F)V

    goto/16 :goto_1

    :cond_11
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_12

    .line 85
    :pswitch_17
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setFlexWrap(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 88
    :pswitch_18
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setFontFamily(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 91
    :pswitch_19
    if-nez p3, :cond_12

    :goto_13
    invoke-virtual {p1, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setFontSize(F)V

    goto/16 :goto_1

    :cond_12
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v1

    goto :goto_13

    .line 94
    :pswitch_1a
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setFontStyle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 97
    :pswitch_1b
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setFontWeight(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 100
    :pswitch_1c
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setHeight(Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 103
    :pswitch_1d
    if-nez p3, :cond_13

    :goto_14
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setIncludeFontPadding(Z)V

    goto/16 :goto_1

    :cond_13
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_14

    .line 106
    :pswitch_1e
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setJustifyContent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 109
    :pswitch_1f
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v4, v0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setPositionValues(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 112
    :pswitch_20
    if-nez p3, :cond_14

    :goto_15
    invoke-virtual {p1, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setLetterSpacing(F)V

    goto/16 :goto_1

    :cond_14
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v1

    goto :goto_15

    .line 115
    :pswitch_21
    if-nez p3, :cond_15

    :goto_16
    invoke-virtual {p1, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setLineHeight(F)V

    goto/16 :goto_1

    :cond_15
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v1

    goto :goto_16

    .line 118
    :pswitch_22
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v2, v0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setMargins(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 121
    :pswitch_23
    const/4 v0, 0x6

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setMargins(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 124
    :pswitch_24
    const/4 v0, 0x4

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setMargins(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 127
    :pswitch_25
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v4, v0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setMargins(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 130
    :pswitch_26
    const/4 v0, 0x7

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setMargins(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 133
    :pswitch_27
    const/16 v0, 0x8

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setMargins(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 136
    :pswitch_28
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v5, v0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setMargins(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 139
    :pswitch_29
    const/4 v0, 0x5

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setMargins(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 142
    :pswitch_2a
    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setMargins(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 145
    :pswitch_2b
    if-nez p3, :cond_16

    :goto_17
    invoke-virtual {p1, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setMaxFontSizeMultiplier(F)V

    goto/16 :goto_1

    :cond_16
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v1

    goto :goto_17

    .line 148
    :pswitch_2c
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setMaxHeight(Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 151
    :pswitch_2d
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setMaxWidth(Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 154
    :pswitch_2e
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setMinHeight(Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 157
    :pswitch_2f
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setMinWidth(Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 160
    :pswitch_30
    if-nez p3, :cond_17

    :goto_18
    invoke-virtual {p1, v2}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setMostRecentEventCount(I)V

    goto/16 :goto_1

    :cond_17
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v2

    goto :goto_18

    .line 163
    :pswitch_31
    if-nez p3, :cond_18

    const/4 v0, -0x1

    :goto_19
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setNumberOfLines(I)V

    goto/16 :goto_1

    :cond_18
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_19

    .line 166
    :pswitch_32
    if-nez p3, :cond_19

    :goto_1a
    invoke-virtual {p1, v2}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setShouldNotifyOnLayout(Z)V

    goto/16 :goto_1

    :cond_19
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_1a

    .line 169
    :pswitch_33
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setOverflow(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 172
    :pswitch_34
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v2, v0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setPaddings(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 175
    :pswitch_35
    const/4 v0, 0x6

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setPaddings(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 178
    :pswitch_36
    const/4 v0, 0x4

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setPaddings(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 181
    :pswitch_37
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v4, v0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setPaddings(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 184
    :pswitch_38
    const/4 v0, 0x7

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setPaddings(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 187
    :pswitch_39
    const/16 v0, 0x8

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setPaddings(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 190
    :pswitch_3a
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v5, v0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setPaddings(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 193
    :pswitch_3b
    const/4 v0, 0x5

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setPaddings(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 196
    :pswitch_3c
    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setPaddings(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 199
    :pswitch_3d
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setPlaceholder(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 202
    :pswitch_3e
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setPosition(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 205
    :pswitch_3f
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v5, v0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setPositionValues(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 208
    :pswitch_40
    check-cast p3, Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setSelection(Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_1

    .line 211
    :pswitch_41
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v2, v0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setPositionValues(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 214
    :pswitch_42
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 217
    :pswitch_43
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setTextAlign(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 220
    :pswitch_44
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setTextBreakStrategy(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 223
    :pswitch_45
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setTextDecorationLine(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 226
    :pswitch_46
    if-nez p3, :cond_1a

    const/high16 v0, 0x55000000

    :goto_1b
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setTextShadowColor(I)V

    goto/16 :goto_1

    :cond_1a
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_1b

    .line 229
    :pswitch_47
    check-cast p3, Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setTextShadowOffset(Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_1

    .line 232
    :pswitch_48
    if-nez p3, :cond_1b

    const/4 v0, 0x0

    :goto_1c
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setTextShadowRadius(F)V

    goto/16 :goto_1

    :cond_1b
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_1c

    .line 235
    :pswitch_49
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setTextTransform(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 238
    :pswitch_4a
    const/4 v0, 0x4

    new-instance v1, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v1, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setPositionValues(ILcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 241
    :pswitch_4b
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p3}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputShadowNode;->setWidth(Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 14
    :sswitch_data_0
    .sparse-switch
        -0x757f89aa -> :sswitch_9
        -0x719cd38e -> :sswitch_25
        -0x6a52083b -> :sswitch_13
        -0x66478e74 -> :sswitch_40
        -0x5d2b929b -> :sswitch_44
        -0x5c71855e -> :sswitch_1a
        -0x597a2048 -> :sswitch_38
        -0x56940a43 -> :sswitch_b
        -0x527265d5 -> :sswitch_d
        -0x5201456c -> :sswitch_2f
        -0x4f447821 -> :sswitch_31
        -0x4efbb2ee -> :sswitch_e
        -0x4cec9971 -> :sswitch_6
        -0x48ff636d -> :sswitch_18
        -0x48c76ed9 -> :sswitch_1c
        -0x40737a52 -> :sswitch_22
        -0x3f826a28 -> :sswitch_43
        -0x3f600445 -> :sswitch_1
        -0x3e467bb3 -> :sswitch_24
        -0x3e464339 -> :sswitch_29
        -0x3a1ff07a -> :sswitch_14
        -0x36017855 -> :sswitch_2c
        -0x300fc3ef -> :sswitch_34
        -0x2cdbca4c -> :sswitch_0
        -0x2bc67c59 -> :sswitch_1b
        -0x1ebe99c5 -> :sswitch_21
        -0x1845d2d1 -> :sswitch_3
        -0x15737ceb -> :sswitch_37
        -0x113c6e87 -> :sswitch_23
        -0xd59d8cd -> :sswitch_8
        -0x7f661e7 -> :sswitch_2e
        0x188db -> :sswitch_11
        0x1c155 -> :sswitch_4a
        0x2ffff9 -> :sswitch_12
        0x32a007 -> :sswitch_1f
        0x36452d -> :sswitch_42
        0x55f0f0a -> :sswitch_36
        0x55f4784 -> :sswitch_3b
        0x5a72f63 -> :sswitch_f
        0x677c21c -> :sswitch_3f
        0x68ac462 -> :sswitch_41
        0x6be2dc6 -> :sswitch_4b
        0xc0fb19c -> :sswitch_35
        0x15caa0f0 -> :sswitch_19
        0x17dd56c2 -> :sswitch_2d
        0x1f91b402 -> :sswitch_33
        0x20b7df55 -> :sswitch_2b
        0x227eceb6 -> :sswitch_46
        0x23a88573 -> :sswitch_3d
        0x2a8c788b -> :sswitch_39
        0x2a9f7ad1 -> :sswitch_3a
        0x2c2c84fa -> :sswitch_c
        0x2c929929 -> :sswitch_3e
        0x3a1ea90e -> :sswitch_27
        0x3a31ab54 -> :sswitch_28
        0x3d759362 -> :sswitch_16
        0x41194293 -> :sswitch_4
        0x4153afa0 -> :sswitch_47
        0x43f1c4f3 -> :sswitch_30
        0x462ab79f -> :sswitch_48
        0x49d9f1f7 -> :sswitch_7
        0x4cb7f6d5 -> :sswitch_5
        0x4ccfd1e9 -> :sswitch_32
        0x4f20c8bf -> :sswitch_49
        0x501666a7 -> :sswitch_3c
        0x5551c344 -> :sswitch_2a
        0x63a518c2 -> :sswitch_10
        0x67ef5bac -> :sswitch_15
        0x67f69fe3 -> :sswitch_17
        0x6953cff1 -> :sswitch_2
        0x6ee75fc9 -> :sswitch_1e
        0x757a12d5 -> :sswitch_26
        0x78687afa -> :sswitch_1d
        0x79180351 -> :sswitch_45
        0x7dd4813d -> :sswitch_20
        0x7f71efd0 -> :sswitch_a
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
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
    .end packed-switch
.end method
