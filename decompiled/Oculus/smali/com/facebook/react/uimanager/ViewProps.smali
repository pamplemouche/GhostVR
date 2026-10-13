.class public Lcom/facebook/react/uimanager/ViewProps;
.super Ljava/lang/Object;
.source "ViewProps.java"


# static fields
.field public static final BORDER_SPACING_TYPES:[I

.field private static final LAYOUT_ONLY_PROPS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PADDING_MARGIN_SPACING_TYPES:[I

.field public static final POSITION_SPACING_TYPES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x7

    const/4 v4, 0x4

    .line 159
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/react/uimanager/ViewProps;->BORDER_SPACING_TYPES:[I

    .line 168
    new-array v0, v6, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/react/uimanager/ViewProps;->PADDING_MARGIN_SPACING_TYPES:[I

    .line 179
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/facebook/react/uimanager/ViewProps;->POSITION_SPACING_TYPES:[I

    .line 183
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x2b

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "alignSelf"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "alignItems"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "collapsable"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "flex"

    aput-object v3, v1, v2

    const-string v2, "flexBasis"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    const-string v3, "flexDirection"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "flexGrow"

    aput-object v3, v1, v2

    const-string v2, "flexShrink"

    aput-object v2, v1, v5

    const/16 v2, 0x8

    const-string v3, "flexWrap"

    aput-object v3, v1, v2

    const-string v2, "justifyContent"

    aput-object v2, v1, v6

    const/16 v2, 0xa

    const-string v3, "alignContent"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "display"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "position"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string/jumbo v3, "right"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "top"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "bottom"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "left"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string/jumbo v3, "start"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "end"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string/jumbo v3, "width"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "height"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "minWidth"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "maxWidth"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "minHeight"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "maxHeight"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "margin"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "marginVertical"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "marginHorizontal"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "marginLeft"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "marginRight"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "marginTop"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "marginBottom"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "marginStart"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "marginEnd"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "padding"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "paddingVertical"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "paddingHorizontal"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "paddingLeft"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "paddingRight"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "paddingTop"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "paddingBottom"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "paddingStart"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "paddingEnd"

    aput-object v3, v1, v2

    .line 185
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/facebook/react/uimanager/ViewProps;->LAYOUT_ONLY_PROPS:Ljava/util/HashSet;

    .line 183
    return-void

    .line 159
    nop

    :array_0
    .array-data 4
        0x8
        0x4
        0x5
        0x1
        0x3
        0x0
        0x2
    .end array-data

    .line 168
    :array_1
    .array-data 4
        0x8
        0x7
        0x6
        0x4
        0x5
        0x1
        0x3
        0x0
        0x2
    .end array-data

    .line 179
    :array_2
    .array-data 4
        0x4
        0x5
        0x1
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLayoutOnly(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 239
    sget-object v2, Lcom/facebook/react/uimanager/ViewProps;->LAYOUT_ONLY_PROPS:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 284
    :cond_0
    :goto_0
    return v0

    .line 241
    :cond_1
    const-string v2, "pointerEvents"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 242
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 243
    const-string v3, "auto"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "box-none"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 246
    :cond_3
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_4
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 250
    :pswitch_0
    const-string v2, "opacity"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "opacity"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    .line 246
    :sswitch_0
    const-string v3, "opacity"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v0

    goto :goto_1

    :sswitch_1
    const-string v3, "borderRadius"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v1

    goto :goto_1

    :sswitch_2
    const-string v3, "borderLeftColor"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "borderRightColor"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "borderTopColor"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v3, "borderBottomColor"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_6
    const-string v3, "borderWidth"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_7
    const-string v3, "borderLeftWidth"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_8
    const-string v3, "borderTopWidth"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v2, 0x8

    goto :goto_1

    :sswitch_9
    const-string v3, "borderRightWidth"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v2, 0x9

    goto :goto_1

    :sswitch_a
    const-string v3, "borderBottomWidth"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string v3, "overflow"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v2, 0xb

    goto/16 :goto_1

    .line 252
    :pswitch_1
    const-string v2, "backgroundColor"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "backgroundColor"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 255
    :cond_6
    const-string v2, "borderWidth"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "borderWidth"

    .line 256
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "borderWidth"

    .line 257
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    :cond_7
    move v0, v1

    .line 260
    goto/16 :goto_0

    .line 262
    :pswitch_2
    const-string v2, "borderLeftColor"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "borderLeftColor"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8

    :goto_2
    move v0, v1

    goto/16 :goto_0

    :cond_8
    move v1, v0

    goto :goto_2

    .line 264
    :pswitch_3
    const-string v2, "borderRightColor"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "borderRightColor"

    .line 265
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_9

    :goto_3
    move v0, v1

    goto/16 :goto_0

    :cond_9
    move v1, v0

    goto :goto_3

    .line 267
    :pswitch_4
    const-string v2, "borderTopColor"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "borderTopColor"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_a

    :goto_4
    move v0, v1

    goto/16 :goto_0

    :cond_a
    move v1, v0

    goto :goto_4

    .line 269
    :pswitch_5
    const-string v2, "borderBottomColor"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "borderBottomColor"

    .line 270
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_b

    :goto_5
    move v0, v1

    goto/16 :goto_0

    :cond_b
    move v1, v0

    goto :goto_5

    .line 272
    :pswitch_6
    const-string v2, "borderWidth"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "borderWidth"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    :cond_c
    move v0, v1

    goto/16 :goto_0

    .line 274
    :pswitch_7
    const-string v2, "borderLeftWidth"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "borderLeftWidth"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    :cond_d
    move v0, v1

    goto/16 :goto_0

    .line 276
    :pswitch_8
    const-string v2, "borderTopWidth"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "borderTopWidth"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    :cond_e
    move v0, v1

    goto/16 :goto_0

    .line 278
    :pswitch_9
    const-string v2, "borderRightWidth"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "borderRightWidth"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    :cond_f
    move v0, v1

    goto/16 :goto_0

    .line 280
    :pswitch_a
    const-string v2, "borderBottomWidth"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "borderBottomWidth"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    :cond_10
    move v0, v1

    goto/16 :goto_0

    .line 282
    :pswitch_b
    const-string v2, "overflow"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string/jumbo v2, "visible"

    const-string v3, "overflow"

    invoke-interface {p0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_11
    move v0, v1

    goto/16 :goto_0

    .line 246
    :sswitch_data_0
    .sparse-switch
        -0x7696880d -> :sswitch_3
        -0x757f89aa -> :sswitch_9
        -0x57ab08a6 -> :sswitch_4
        -0x56940a43 -> :sswitch_8
        -0x4e0397d4 -> :sswitch_5
        -0x4cec9971 -> :sswitch_a
        -0x4b8807f5 -> :sswitch_0
        -0xe70d730 -> :sswitch_2
        -0xd59d8cd -> :sswitch_7
        0x1f91b402 -> :sswitch_b
        0x2c2c84fa -> :sswitch_6
        0x506afbde -> :sswitch_1
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
    .end packed-switch
.end method
