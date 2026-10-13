.class public Lcom/facebook/react/views/textinput/ReactTextInputManager$$PropsSetter;
.super Ljava/lang/Object;
.source "ReactTextInputManager$$PropsSetter.java"

# interfaces
.implements Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater$ViewManagerSetter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater$ViewManagerSetter",
        "<",
        "Lcom/facebook/react/views/textinput/ReactTextInputManager;",
        "Lcom/facebook/react/views/textinput/ReactEditText;",
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
    .line 252
    const-string v0, "accessibilityActions"

    const-string v1, "Array"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v0, "accessibilityHint"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v0, "accessibilityLabel"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v0, "accessibilityLiveRegion"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v0, "accessibilityRole"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v0, "accessibilityState"

    const-string v1, "Map"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v0, "accessibilityStates"

    const-string v1, "Array"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v0, "allowFontScaling"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v0, "autoCapitalize"

    const-string v1, "Dynamic"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v0, "autoCompleteType"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v0, "autoCorrect"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v0, "backgroundColor"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v0, "blurOnSubmit"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v0, "borderBottomColor"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v0, "borderBottomLeftRadius"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v0, "borderBottomRightRadius"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v0, "borderBottomWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v0, "borderColor"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v0, "borderLeftColor"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v0, "borderLeftWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v0, "borderRadius"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v0, "borderRightColor"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v0, "borderRightWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v0, "borderStyle"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v0, "borderTopColor"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v0, "borderTopLeftRadius"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v0, "borderTopRightRadius"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v0, "borderTopWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v0, "borderWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v0, "caretHidden"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v0, "color"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v0, "contextMenuHidden"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v0, "cursorColor"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v0, "disableFullscreenUI"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v0, "editable"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v0, "elevation"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v0, "fontFamily"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v0, "fontSize"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v0, "fontStyle"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v0, "fontWeight"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v0, "importantForAccessibility"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v0, "importantForAutofill"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v0, "inlineImageLeft"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v0, "inlineImagePadding"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v0, "keyboardType"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v0, "letterSpacing"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v0, "maxFontSizeMultiplier"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v0, "maxLength"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v0, "mostRecentEventCount"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v0, "multiline"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v0, "nativeID"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v0, "numberOfLines"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v0, "onContentSizeChange"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v0, "onKeyPress"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v0, "onScroll"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v0, "onSelectionChange"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v0, "opacity"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v0, "placeholder"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v0, "placeholderTextColor"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v0, "renderToHardwareTextureAndroid"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v0, "returnKeyLabel"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v0, "returnKeyType"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v0, "rotation"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v0, "scaleX"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string v0, "scaleY"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v0, "secureTextEntry"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v0, "selectTextOnFocus"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v0, "selectionColor"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v0, "showSoftInputOnFocus"

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v0, "testID"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v0, "textAlign"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v0, "textAlignVertical"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v0, "transform"

    const-string v1, "Array"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v0, "translateX"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v0, "translateY"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v0, "underlineColorAndroid"

    const-string v1, "Color"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v0, "zIndex"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    return-void
.end method

.method public bridge synthetic setProperty(Lcom/facebook/react/uimanager/ViewManager;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/facebook/react/views/textinput/ReactTextInputManager;

    check-cast p2, Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/react/views/textinput/ReactTextInputManager$$PropsSetter;->setProperty(Lcom/facebook/react/views/textinput/ReactTextInputManager;Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProperty(Lcom/facebook/react/views/textinput/ReactTextInputManager;Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 15
    const/4 v5, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 248
    :goto_1
    return-void

    .line 15
    :sswitch_0
    const-string v6, "accessibilityActions"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v1

    goto :goto_0

    :sswitch_1
    const-string v6, "accessibilityHint"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v0

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
    const-string v6, "allowFontScaling"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x7

    goto :goto_0

    :sswitch_8
    const-string v6, "autoCapitalize"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x8

    goto :goto_0

    :sswitch_9
    const-string v6, "autoCompleteType"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x9

    goto :goto_0

    :sswitch_a
    const-string v6, "autoCorrect"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xa

    goto :goto_0

    :sswitch_b
    const-string v6, "backgroundColor"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xb

    goto :goto_0

    :sswitch_c
    const-string v6, "blurOnSubmit"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v6, "borderBottomColor"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v6, "borderBottomLeftRadius"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v6, "borderBottomRightRadius"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v6, "borderBottomWidth"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v6, "borderColor"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v6, "borderLeftColor"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v6, "borderLeftWidth"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string v6, "borderRadius"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string v6, "borderRightColor"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string v6, "borderRightWidth"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string v6, "borderStyle"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string v6, "borderTopColor"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string v6, "borderTopLeftRadius"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x19

    goto/16 :goto_0

    :sswitch_1a
    const-string v6, "borderTopRightRadius"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1a

    goto/16 :goto_0

    :sswitch_1b
    const-string v6, "borderTopWidth"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1b

    goto/16 :goto_0

    :sswitch_1c
    const-string v6, "borderWidth"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1c

    goto/16 :goto_0

    :sswitch_1d
    const-string v6, "caretHidden"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1d

    goto/16 :goto_0

    :sswitch_1e
    const-string v6, "color"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1e

    goto/16 :goto_0

    :sswitch_1f
    const-string v6, "contextMenuHidden"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1f

    goto/16 :goto_0

    :sswitch_20
    const-string v6, "cursorColor"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x20

    goto/16 :goto_0

    :sswitch_21
    const-string v6, "disableFullscreenUI"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x21

    goto/16 :goto_0

    :sswitch_22
    const-string v6, "editable"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x22

    goto/16 :goto_0

    :sswitch_23
    const-string v6, "elevation"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x23

    goto/16 :goto_0

    :sswitch_24
    const-string v6, "fontFamily"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x24

    goto/16 :goto_0

    :sswitch_25
    const-string v6, "fontSize"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x25

    goto/16 :goto_0

    :sswitch_26
    const-string v6, "fontStyle"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x26

    goto/16 :goto_0

    :sswitch_27
    const-string v6, "fontWeight"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x27

    goto/16 :goto_0

    :sswitch_28
    const-string v6, "importantForAccessibility"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x28

    goto/16 :goto_0

    :sswitch_29
    const-string v6, "importantForAutofill"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x29

    goto/16 :goto_0

    :sswitch_2a
    const-string v6, "inlineImageLeft"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x2a

    goto/16 :goto_0

    :sswitch_2b
    const-string v6, "inlineImagePadding"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x2b

    goto/16 :goto_0

    :sswitch_2c
    const-string v6, "keyboardType"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x2c

    goto/16 :goto_0

    :sswitch_2d
    const-string v6, "letterSpacing"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x2d

    goto/16 :goto_0

    :sswitch_2e
    const-string v6, "maxFontSizeMultiplier"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x2e

    goto/16 :goto_0

    :sswitch_2f
    const-string v6, "maxLength"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x2f

    goto/16 :goto_0

    :sswitch_30
    const-string v6, "mostRecentEventCount"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x30

    goto/16 :goto_0

    :sswitch_31
    const-string v6, "multiline"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x31

    goto/16 :goto_0

    :sswitch_32
    const-string v6, "nativeID"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x32

    goto/16 :goto_0

    :sswitch_33
    const-string v6, "numberOfLines"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x33

    goto/16 :goto_0

    :sswitch_34
    const-string v6, "onContentSizeChange"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x34

    goto/16 :goto_0

    :sswitch_35
    const-string v6, "onKeyPress"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x35

    goto/16 :goto_0

    :sswitch_36
    const-string v6, "onScroll"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x36

    goto/16 :goto_0

    :sswitch_37
    const-string v6, "onSelectionChange"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x37

    goto/16 :goto_0

    :sswitch_38
    const-string v6, "opacity"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x38

    goto/16 :goto_0

    :sswitch_39
    const-string v6, "placeholder"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x39

    goto/16 :goto_0

    :sswitch_3a
    const-string v6, "placeholderTextColor"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x3a

    goto/16 :goto_0

    :sswitch_3b
    const-string v6, "renderToHardwareTextureAndroid"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x3b

    goto/16 :goto_0

    :sswitch_3c
    const-string v6, "returnKeyLabel"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x3c

    goto/16 :goto_0

    :sswitch_3d
    const-string v6, "returnKeyType"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x3d

    goto/16 :goto_0

    :sswitch_3e
    const-string v6, "rotation"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x3e

    goto/16 :goto_0

    :sswitch_3f
    const-string v6, "scaleX"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x3f

    goto/16 :goto_0

    :sswitch_40
    const-string v6, "scaleY"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x40

    goto/16 :goto_0

    :sswitch_41
    const-string v6, "secureTextEntry"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x41

    goto/16 :goto_0

    :sswitch_42
    const-string v6, "selectTextOnFocus"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x42

    goto/16 :goto_0

    :sswitch_43
    const-string v6, "selectionColor"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x43

    goto/16 :goto_0

    :sswitch_44
    const-string v6, "showSoftInputOnFocus"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x44

    goto/16 :goto_0

    :sswitch_45
    const-string v6, "testID"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x45

    goto/16 :goto_0

    :sswitch_46
    const-string v6, "textAlign"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x46

    goto/16 :goto_0

    :sswitch_47
    const-string v6, "textAlignVertical"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x47

    goto/16 :goto_0

    :sswitch_48
    const-string v6, "transform"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x48

    goto/16 :goto_0

    :sswitch_49
    const-string v6, "translateX"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x49

    goto/16 :goto_0

    :sswitch_4a
    const-string v6, "translateY"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x4a

    goto/16 :goto_0

    :sswitch_4b
    const-string v6, "underlineColorAndroid"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x4b

    goto/16 :goto_0

    :sswitch_4c
    const-string v6, "zIndex"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x4c

    goto/16 :goto_0

    .line 17
    :pswitch_0
    check-cast p4, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setAccessibilityActions(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_1

    .line 20
    :pswitch_1
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setAccessibilityHint(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 23
    :pswitch_2
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setAccessibilityLabel(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 26
    :pswitch_3
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setAccessibilityLiveRegion(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 29
    :pswitch_4
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setAccessibilityRole(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 32
    :pswitch_5
    check-cast p4, Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setViewState(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_1

    .line 35
    :pswitch_6
    check-cast p4, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setViewStates(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_1

    .line 38
    :pswitch_7
    if-nez p4, :cond_1

    :goto_2
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setAllowFontScaling(Lcom/facebook/react/views/textinput/ReactEditText;Z)V

    goto/16 :goto_1

    :cond_1
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_2

    .line 41
    :pswitch_8
    new-instance v0, Lcom/facebook/react/bridge/DynamicFromObject;

    invoke-direct {v0, p4}, Lcom/facebook/react/bridge/DynamicFromObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setAutoCapitalize(Lcom/facebook/react/views/textinput/ReactEditText;Lcom/facebook/react/bridge/Dynamic;)V

    goto/16 :goto_1

    .line 44
    :pswitch_9
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setTextContentType(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 47
    :pswitch_a
    if-nez p4, :cond_2

    move-object v0, v2

    :goto_3
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setAutoCorrect(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    :cond_2
    if-nez p4, :cond_3

    move v0, v1

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    :cond_3
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_4

    .line 50
    :pswitch_b
    if-nez p4, :cond_4

    :goto_5
    invoke-virtual {p1, p2, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setBackgroundColor(Landroid/view/View;I)V

    goto/16 :goto_1

    :cond_4
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v1

    goto :goto_5

    .line 53
    :pswitch_c
    if-nez p4, :cond_5

    :goto_6
    invoke-virtual {p1, p2, v2}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setBlurOnSubmit(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    :cond_5
    if-nez p4, :cond_6

    :goto_7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_6

    :cond_6
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_7

    .line 56
    :pswitch_d
    const/4 v0, 0x4

    if-nez p4, :cond_7

    :goto_8
    invoke-virtual {p1, p2, v0, v2}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setBorderColor(Lcom/facebook/react/views/textinput/ReactEditText;ILjava/lang/Integer;)V

    goto/16 :goto_1

    :cond_7
    if-nez p4, :cond_8

    :goto_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_8

    :cond_8
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v1

    goto :goto_9

    .line 59
    :pswitch_e
    const/4 v1, 0x4

    if-nez p4, :cond_9

    move v0, v3

    :goto_a
    invoke-virtual {p1, p2, v1, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setBorderRadius(Lcom/facebook/react/views/textinput/ReactEditText;IF)V

    goto/16 :goto_1

    :cond_9
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_a

    .line 62
    :pswitch_f
    const/4 v0, 0x3

    if-nez p4, :cond_a

    :goto_b
    invoke-virtual {p1, p2, v0, v3}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setBorderRadius(Lcom/facebook/react/views/textinput/ReactEditText;IF)V

    goto/16 :goto_1

    :cond_a
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v3

    goto :goto_b

    .line 65
    :pswitch_10
    const/4 v0, 0x4

    if-nez p4, :cond_b

    :goto_c
    invoke-virtual {p1, p2, v0, v3}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setBorderWidth(Lcom/facebook/react/views/textinput/ReactEditText;IF)V

    goto/16 :goto_1

    :cond_b
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v3

    goto :goto_c

    .line 68
    :pswitch_11
    if-nez p4, :cond_c

    :goto_d
    invoke-virtual {p1, p2, v1, v2}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setBorderColor(Lcom/facebook/react/views/textinput/ReactEditText;ILjava/lang/Integer;)V

    goto/16 :goto_1

    :cond_c
    if-nez p4, :cond_d

    move v0, v1

    :goto_e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_d

    :cond_d
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_e

    .line 71
    :pswitch_12
    if-nez p4, :cond_e

    :goto_f
    invoke-virtual {p1, p2, v0, v2}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setBorderColor(Lcom/facebook/react/views/textinput/ReactEditText;ILjava/lang/Integer;)V

    goto/16 :goto_1

    :cond_e
    if-nez p4, :cond_f

    :goto_10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_f

    :cond_f
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v1

    goto :goto_10

    .line 74
    :pswitch_13
    if-nez p4, :cond_10

    :goto_11
    invoke-virtual {p1, p2, v0, v3}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setBorderWidth(Lcom/facebook/react/views/textinput/ReactEditText;IF)V

    goto/16 :goto_1

    :cond_10
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v3

    goto :goto_11

    .line 77
    :pswitch_14
    if-nez p4, :cond_11

    :goto_12
    invoke-virtual {p1, p2, v1, v3}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setBorderRadius(Lcom/facebook/react/views/textinput/ReactEditText;IF)V

    goto/16 :goto_1

    :cond_11
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v3

    goto :goto_12

    .line 80
    :pswitch_15
    const/4 v0, 0x2

    if-nez p4, :cond_12

    :goto_13
    invoke-virtual {p1, p2, v0, v2}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setBorderColor(Lcom/facebook/react/views/textinput/ReactEditText;ILjava/lang/Integer;)V

    goto/16 :goto_1

    :cond_12
    if-nez p4, :cond_13

    :goto_14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_13

    :cond_13
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v1

    goto :goto_14

    .line 83
    :pswitch_16
    const/4 v0, 0x2

    if-nez p4, :cond_14

    :goto_15
    invoke-virtual {p1, p2, v0, v3}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setBorderWidth(Lcom/facebook/react/views/textinput/ReactEditText;IF)V

    goto/16 :goto_1

    :cond_14
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v3

    goto :goto_15

    .line 86
    :pswitch_17
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setBorderStyle(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 89
    :pswitch_18
    const/4 v0, 0x3

    if-nez p4, :cond_15

    :goto_16
    invoke-virtual {p1, p2, v0, v2}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setBorderColor(Lcom/facebook/react/views/textinput/ReactEditText;ILjava/lang/Integer;)V

    goto/16 :goto_1

    :cond_15
    if-nez p4, :cond_16

    :goto_17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_16

    :cond_16
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v1

    goto :goto_17

    .line 92
    :pswitch_19
    if-nez p4, :cond_17

    :goto_18
    invoke-virtual {p1, p2, v0, v3}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setBorderRadius(Lcom/facebook/react/views/textinput/ReactEditText;IF)V

    goto/16 :goto_1

    :cond_17
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v3

    goto :goto_18

    .line 95
    :pswitch_1a
    const/4 v0, 0x2

    if-nez p4, :cond_18

    :goto_19
    invoke-virtual {p1, p2, v0, v3}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setBorderRadius(Lcom/facebook/react/views/textinput/ReactEditText;IF)V

    goto/16 :goto_1

    :cond_18
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v3

    goto :goto_19

    .line 98
    :pswitch_1b
    const/4 v0, 0x3

    if-nez p4, :cond_19

    :goto_1a
    invoke-virtual {p1, p2, v0, v3}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setBorderWidth(Lcom/facebook/react/views/textinput/ReactEditText;IF)V

    goto/16 :goto_1

    :cond_19
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v3

    goto :goto_1a

    .line 101
    :pswitch_1c
    if-nez p4, :cond_1a

    :goto_1b
    invoke-virtual {p1, p2, v1, v3}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setBorderWidth(Lcom/facebook/react/views/textinput/ReactEditText;IF)V

    goto/16 :goto_1

    :cond_1a
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v3

    goto :goto_1b

    .line 104
    :pswitch_1d
    if-nez p4, :cond_1b

    :goto_1c
    invoke-virtual {p1, p2, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setCaretHidden(Lcom/facebook/react/views/textinput/ReactEditText;Z)V

    goto/16 :goto_1

    :cond_1b
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1c

    .line 107
    :pswitch_1e
    if-nez p4, :cond_1c

    :goto_1d
    invoke-virtual {p1, p2, v2}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setColor(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :cond_1c
    if-nez p4, :cond_1d

    :goto_1e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1d

    :cond_1d
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v1

    goto :goto_1e

    .line 110
    :pswitch_1f
    if-nez p4, :cond_1e

    :goto_1f
    invoke-virtual {p1, p2, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setContextMenuHidden(Lcom/facebook/react/views/textinput/ReactEditText;Z)V

    goto/16 :goto_1

    :cond_1e
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1f

    .line 113
    :pswitch_20
    if-nez p4, :cond_1f

    :goto_20
    invoke-virtual {p1, p2, v2}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setCursorColor(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :cond_1f
    if-nez p4, :cond_20

    :goto_21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_20

    :cond_20
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v1

    goto :goto_21

    .line 116
    :pswitch_21
    if-nez p4, :cond_21

    :goto_22
    invoke-virtual {p1, p2, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setDisableFullscreenUI(Lcom/facebook/react/views/textinput/ReactEditText;Z)V

    goto/16 :goto_1

    :cond_21
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_22

    .line 119
    :pswitch_22
    if-nez p4, :cond_22

    :goto_23
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setEditable(Lcom/facebook/react/views/textinput/ReactEditText;Z)V

    goto/16 :goto_1

    :cond_22
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_23

    .line 122
    :pswitch_23
    if-nez p4, :cond_23

    move v0, v4

    :goto_24
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setElevation(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_23
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_24

    .line 125
    :pswitch_24
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setFontFamily(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 128
    :pswitch_25
    if-nez p4, :cond_24

    const/high16 v0, 0x41600000    # 14.0f

    :goto_25
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setFontSize(Lcom/facebook/react/views/textinput/ReactEditText;F)V

    goto/16 :goto_1

    :cond_24
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_25

    .line 131
    :pswitch_26
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setFontStyle(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 134
    :pswitch_27
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setFontWeight(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 137
    :pswitch_28
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setImportantForAccessibility(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 140
    :pswitch_29
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setImportantForAutofill(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 143
    :pswitch_2a
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setInlineImageLeft(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 146
    :pswitch_2b
    if-nez p4, :cond_25

    :goto_26
    invoke-virtual {p1, p2, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setInlineImagePadding(Lcom/facebook/react/views/textinput/ReactEditText;I)V

    goto/16 :goto_1

    :cond_25
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v1

    goto :goto_26

    .line 149
    :pswitch_2c
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setKeyboardType(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 152
    :pswitch_2d
    if-nez p4, :cond_26

    :goto_27
    invoke-virtual {p1, p2, v4}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setLetterSpacing(Lcom/facebook/react/views/textinput/ReactEditText;F)V

    goto/16 :goto_1

    :cond_26
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v4

    goto :goto_27

    .line 155
    :pswitch_2e
    if-nez p4, :cond_27

    :goto_28
    invoke-virtual {p1, p2, v3}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setMaxFontSizeMultiplier(Lcom/facebook/react/views/textinput/ReactEditText;F)V

    goto/16 :goto_1

    :cond_27
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v3

    goto :goto_28

    .line 158
    :pswitch_2f
    if-nez p4, :cond_28

    :goto_29
    invoke-virtual {p1, p2, v2}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setMaxLength(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :cond_28
    if-nez p4, :cond_29

    :goto_2a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_29

    :cond_29
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v1

    goto :goto_2a

    .line 161
    :pswitch_30
    if-nez p4, :cond_2a

    :goto_2b
    invoke-virtual {p1, p2, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setMostRecentEventCount(Lcom/facebook/react/views/textinput/ReactEditText;I)V

    goto/16 :goto_1

    :cond_2a
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v1

    goto :goto_2b

    .line 164
    :pswitch_31
    if-nez p4, :cond_2b

    :goto_2c
    invoke-virtual {p1, p2, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setMultiline(Lcom/facebook/react/views/textinput/ReactEditText;Z)V

    goto/16 :goto_1

    :cond_2b
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2c

    .line 167
    :pswitch_32
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setNativeId(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 170
    :pswitch_33
    if-nez p4, :cond_2c

    :goto_2d
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setNumLines(Lcom/facebook/react/views/textinput/ReactEditText;I)V

    goto/16 :goto_1

    :cond_2c
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_2d

    .line 173
    :pswitch_34
    if-nez p4, :cond_2d

    :goto_2e
    invoke-virtual {p1, p2, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setOnContentSizeChange(Lcom/facebook/react/views/textinput/ReactEditText;Z)V

    goto/16 :goto_1

    :cond_2d
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2e

    .line 176
    :pswitch_35
    if-nez p4, :cond_2e

    :goto_2f
    invoke-virtual {p1, p2, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setOnKeyPress(Lcom/facebook/react/views/textinput/ReactEditText;Z)V

    goto/16 :goto_1

    :cond_2e
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2f

    .line 179
    :pswitch_36
    if-nez p4, :cond_2f

    :goto_30
    invoke-virtual {p1, p2, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setOnScroll(Lcom/facebook/react/views/textinput/ReactEditText;Z)V

    goto/16 :goto_1

    :cond_2f
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_30

    .line 182
    :pswitch_37
    if-nez p4, :cond_30

    :goto_31
    invoke-virtual {p1, p2, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setOnSelectionChange(Lcom/facebook/react/views/textinput/ReactEditText;Z)V

    goto/16 :goto_1

    :cond_30
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_31

    .line 185
    :pswitch_38
    if-nez p4, :cond_31

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_32
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setOpacity(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_31
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_32

    .line 188
    :pswitch_39
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setPlaceholder(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 191
    :pswitch_3a
    if-nez p4, :cond_32

    :goto_33
    invoke-virtual {p1, p2, v2}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setPlaceholderTextColor(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :cond_32
    if-nez p4, :cond_33

    :goto_34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_33

    :cond_33
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v1

    goto :goto_34

    .line 194
    :pswitch_3b
    if-nez p4, :cond_34

    :goto_35
    invoke-virtual {p1, p2, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setRenderToHardwareTexture(Landroid/view/View;Z)V

    goto/16 :goto_1

    :cond_34
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_35

    .line 197
    :pswitch_3c
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setReturnKeyLabel(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 200
    :pswitch_3d
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setReturnKeyType(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 203
    :pswitch_3e
    if-nez p4, :cond_35

    :goto_36
    invoke-virtual {p1, p2, v4}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setRotation(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_35
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v4

    goto :goto_36

    .line 206
    :pswitch_3f
    if-nez p4, :cond_36

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_37
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setScaleX(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_36
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_37

    .line 209
    :pswitch_40
    if-nez p4, :cond_37

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_38
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setScaleY(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_37
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_38

    .line 212
    :pswitch_41
    if-nez p4, :cond_38

    :goto_39
    invoke-virtual {p1, p2, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setSecureTextEntry(Lcom/facebook/react/views/textinput/ReactEditText;Z)V

    goto/16 :goto_1

    :cond_38
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_39

    .line 215
    :pswitch_42
    if-nez p4, :cond_39

    :goto_3a
    invoke-virtual {p1, p2, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setSelectTextOnFocus(Lcom/facebook/react/views/textinput/ReactEditText;Z)V

    goto/16 :goto_1

    :cond_39
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_3a

    .line 218
    :pswitch_43
    if-nez p4, :cond_3a

    :goto_3b
    invoke-virtual {p1, p2, v2}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setSelectionColor(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :cond_3a
    if-nez p4, :cond_3b

    :goto_3c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3b

    :cond_3b
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v1

    goto :goto_3c

    .line 221
    :pswitch_44
    if-nez p4, :cond_3c

    :goto_3d
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->showKeyboardOnFocus(Lcom/facebook/react/views/textinput/ReactEditText;Z)V

    goto/16 :goto_1

    :cond_3c
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3d

    .line 224
    :pswitch_45
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setTestId(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 227
    :pswitch_46
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setTextAlign(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 230
    :pswitch_47
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setTextAlignVertical(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 233
    :pswitch_48
    check-cast p4, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setTransform(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_1

    .line 236
    :pswitch_49
    if-nez p4, :cond_3d

    :goto_3e
    invoke-virtual {p1, p2, v4}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setTranslateX(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_3d
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v4

    goto :goto_3e

    .line 239
    :pswitch_4a
    if-nez p4, :cond_3e

    :goto_3f
    invoke-virtual {p1, p2, v4}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setTranslateY(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_3e
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v4

    goto :goto_3f

    .line 242
    :pswitch_4b
    if-nez p4, :cond_3f

    :goto_40
    invoke-virtual {p1, p2, v2}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setUnderlineColor(Lcom/facebook/react/views/textinput/ReactEditText;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :cond_3f
    if-nez p4, :cond_40

    :goto_41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_40

    :cond_40
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v1

    goto :goto_41

    .line 245
    :pswitch_4c
    if-nez p4, :cond_41

    :goto_42
    invoke-virtual {p1, p2, v4}, Lcom/facebook/react/views/textinput/ReactTextInputManager;->setZIndex(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_41
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->floatValue()F

    move-result v4

    goto :goto_42

    .line 15
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7696880d -> :sswitch_15
        -0x757f89aa -> :sswitch_16
        -0x69d7c5fd -> :sswitch_3a
        -0x66a2c736 -> :sswitch_49
        -0x66a2c735 -> :sswitch_4a
        -0x60447cf3 -> :sswitch_1d
        -0x5f1d2e53 -> :sswitch_20
        -0x5dcf9d88 -> :sswitch_4b
        -0x5c71855e -> :sswitch_26
        -0x57ab08a6 -> :sswitch_18
        -0x56940a43 -> :sswitch_1b
        -0x4fd7d605 -> :sswitch_8
        -0x4f447821 -> :sswitch_33
        -0x4e0397d4 -> :sswitch_d
        -0x4cec9971 -> :sswitch_10
        -0x4b8807f5 -> :sswitch_38
        -0x4932ce1e -> :sswitch_19
        -0x48ff636d -> :sswitch_24
        -0x47e5bf53 -> :sswitch_31
        -0x3f826a28 -> :sswitch_46
        -0x3ddba3dd -> :sswitch_35
        -0x3621dfb2 -> :sswitch_3f
        -0x3621dfb1 -> :sswitch_40
        -0x34488ed3 -> :sswitch_45
        -0x33cdaba2 -> :sswitch_c
        -0x2f2bce96 -> :sswitch_2f
        -0x2bc67c59 -> :sswitch_27
        -0x2b988b88 -> :sswitch_4c
        -0x29c57adb -> :sswitch_3c
        -0x25f88250 -> :sswitch_42
        -0x19fb9045 -> :sswitch_a
        -0x1845d2d1 -> :sswitch_7
        -0xe70d730 -> :sswitch_12
        -0xd59d8cd -> :sswitch_13
        -0x60f430b -> :sswitch_1
        -0x60aa11c -> :sswitch_4
        -0x4d24f13 -> :sswitch_3b
        -0x266f082 -> :sswitch_3e
        -0x42d1a3 -> :sswitch_23
        0x22936ee -> :sswitch_3
        0x5a72f63 -> :sswitch_1e
        0xc742bc1 -> :sswitch_2c
        0x13dfc885 -> :sswitch_1a
        0x15caa0f0 -> :sswitch_25
        0x1ea3de97 -> :sswitch_21
        0x20b7df55 -> :sswitch_2e
        0x20eb687d -> :sswitch_37
        0x21e7c18e -> :sswitch_41
        0x22a57450 -> :sswitch_e
        0x230fd3d7 -> :sswitch_f
        0x23a88573 -> :sswitch_39
        0x2b158697 -> :sswitch_11
        0x2bf974e5 -> :sswitch_17
        0x2c2c84fa -> :sswitch_1c
        0x2c861b47 -> :sswitch_28
        0x38797ee9 -> :sswitch_3d
        0x3e371362 -> :sswitch_9
        0x3ebe6b6c -> :sswitch_48
        0x3ef4744b -> :sswitch_34
        0x43f1c4f3 -> :sswitch_30
        0x445b6e46 -> :sswitch_2
        0x44c6b3e3 -> :sswitch_5
        0x471af219 -> :sswitch_29
        0x4cb7f6d5 -> :sswitch_b
        0x4dc3f169 -> :sswitch_2a
        0x506afbde -> :sswitch_14
        0x540fc8f0 -> :sswitch_6
        0x58dabd8c -> :sswitch_36
        0x59bdabcf -> :sswitch_0
        0x5f82ee64 -> :sswitch_22
        0x6b33def8 -> :sswitch_1f
        0x6f6d096e -> :sswitch_47
        0x71bdd76f -> :sswitch_2b
        0x737ad176 -> :sswitch_44
        0x79eeaf72 -> :sswitch_32
        0x7dd4813d -> :sswitch_2d
        0x7fb0e537 -> :sswitch_43
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
        :pswitch_4c
    .end packed-switch
.end method
