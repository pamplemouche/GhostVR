.class Lcom/facebook/react/animated/InterpolationAnimatedNode;
.super Lcom/facebook/react/animated/ValueAnimatedNode;
.source "InterpolationAnimatedNode.java"


# static fields
.field private static final fpPattern:Ljava/util/regex/Pattern;


# instance fields
.field private final mExtrapolateLeft:Ljava/lang/String;

.field private final mExtrapolateRight:Ljava/lang/String;

.field private final mHasStringOutput:Z

.field private final mInputRange:[D

.field private mNumVals:I

.field private final mOutputRange:[D

.field private mOutputs:[[D

.field private mParent:Lcom/facebook/react/animated/ValueAnimatedNode;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mPattern:Ljava/lang/String;

.field private final mSOutputMatcher:Ljava/util/regex/Matcher;

.field private mShouldRound:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "[+-]?(\\d+\\.?\\d*|\\.\\d+)([eE][+-]?\\d+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->fpPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Lcom/facebook/react/animated/ValueAnimatedNode;-><init>()V

    .line 135
    const-string v0, "inputRange"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/animated/InterpolationAnimatedNode;->fromDoubleArray(Lcom/facebook/react/bridge/ReadableArray;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mInputRange:[D

    .line 136
    const-string v0, "outputRange"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v3

    .line 137
    invoke-interface {v3, v1}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mHasStringOutput:Z

    .line 138
    iget-boolean v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mHasStringOutput:Z

    if-eqz v0, :cond_4

    .line 147
    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v4

    .line 148
    new-array v0, v4, [D

    iput-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mOutputRange:[D

    .line 149
    invoke-interface {v3, v1}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mPattern:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mPattern:Ljava/lang/String;

    const-string v2, "rgb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mShouldRound:Z

    .line 151
    sget-object v0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->fpPattern:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mPattern:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mSOutputMatcher:Ljava/util/regex/Matcher;

    .line 152
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 153
    :goto_1
    if-ge v2, v4, :cond_2

    .line 154
    invoke-interface {v3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    sget-object v6, Lcom/facebook/react/animated/InterpolationAnimatedNode;->fpPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 156
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :goto_2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 159
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 160
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    move v0, v1

    .line 137
    goto :goto_0

    .line 162
    :cond_1
    iget-object v7, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mOutputRange:[D

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    aput-wide v8, v7, v2

    .line 153
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 173
    :cond_2
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mNumVals:I

    .line 174
    iget v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mNumVals:I

    new-array v0, v0, [[D

    iput-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mOutputs:[[D

    move v2, v1

    .line 175
    :goto_3
    iget v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mNumVals:I

    if-ge v2, v0, :cond_5

    .line 176
    new-array v6, v4, [D

    .line 177
    iget-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mOutputs:[[D

    aput-object v6, v0, v2

    move v3, v1

    .line 178
    :goto_4
    if-ge v3, v4, :cond_3

    .line 179
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    aput-wide v8, v6, v3

    .line 178
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    .line 175
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 183
    :cond_4
    invoke-static {v3}, Lcom/facebook/react/animated/InterpolationAnimatedNode;->fromDoubleArray(Lcom/facebook/react/bridge/ReadableArray;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mOutputRange:[D

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mSOutputMatcher:Ljava/util/regex/Matcher;

    .line 186
    :cond_5
    const-string v0, "extrapolateLeft"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mExtrapolateLeft:Ljava/lang/String;

    .line 187
    const-string v0, "extrapolateRight"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mExtrapolateRight:Ljava/lang/String;

    .line 188
    return-void
.end method

.method private static findRangeIndex(D[D)I
    .locals 4

    .prologue
    .line 114
    const/4 v0, 0x1

    :goto_0
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 115
    aget-wide v2, p2, v0

    cmpl-double v1, v2, p0

    if-ltz v1, :cond_1

    .line 119
    :cond_0
    add-int/lit8 v0, v0, -0x1

    return v0

    .line 114
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static fromDoubleArray(Lcom/facebook/react/bridge/ReadableArray;)[D
    .locals 4

    .prologue
    .line 33
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    new-array v1, v0, [D

    .line 34
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 35
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    return-object v1
.end method

.method private static interpolate(DDDDDLjava/lang/String;Ljava/lang/String;)D
    .locals 4

    .prologue
    .line 51
    cmpg-double v0, p0, p2

    if-gez v0, :cond_5

    .line 52
    const/4 v0, -0x1

    invoke-virtual {p10}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 61
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid extrapolation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "for left extrapolation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :sswitch_0
    const-string v1, "identity"

    invoke-virtual {p10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "clamp"

    invoke-virtual {p10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "extend"

    invoke-virtual {p10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_0
    move-wide p6, p0

    .line 92
    :cond_1
    :goto_1
    return-wide p6

    :pswitch_1
    move-wide v0, p2

    .line 66
    :goto_2
    cmpl-double v2, v0, p4

    if-lez v2, :cond_3

    .line 67
    const/4 v2, -0x1

    invoke-virtual {p11}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    :cond_2
    :goto_3
    packed-switch v2, :pswitch_data_1

    .line 76
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid extrapolation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "for right extrapolation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    move-wide v0, p0

    .line 59
    goto :goto_2

    .line 67
    :sswitch_3
    const-string v3, "identity"

    invoke-virtual {p11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_3

    :sswitch_4
    const-string v3, "clamp"

    invoke-virtual {p11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_3

    :sswitch_5
    const-string v3, "extend"

    invoke-virtual {p11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    goto :goto_3

    :pswitch_3
    move-wide p6, v0

    .line 69
    goto :goto_1

    :pswitch_4
    move-wide v0, p4

    .line 81
    :cond_3
    :pswitch_5
    cmpl-double v2, p6, p8

    if-eqz v2, :cond_1

    .line 85
    cmpl-double v2, p2, p4

    if-nez v2, :cond_4

    .line 86
    cmpg-double v0, p0, p2

    if-lez v0, :cond_1

    move-wide p6, p8

    .line 89
    goto :goto_1

    .line 92
    :cond_4
    sub-double v2, p8, p6

    sub-double/2addr v0, p2

    mul-double/2addr v0, v2

    sub-double v2, p4, p2

    div-double/2addr v0, v2

    add-double/2addr p6, v0

    goto :goto_1

    :cond_5
    move-wide v0, p0

    goto :goto_2

    .line 52
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4cd540e6 -> :sswitch_2
        -0x8178f42 -> :sswitch_0
        0x5a5a8bb -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 67
    :sswitch_data_1
    .sparse-switch
        -0x4cd540e6 -> :sswitch_5
        -0x8178f42 -> :sswitch_3
        0x5a5a8bb -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static interpolate(D[D[DLjava/lang/String;Ljava/lang/String;)D
    .locals 12

    .prologue
    .line 101
    invoke-static {p0, p1, p2}, Lcom/facebook/react/animated/InterpolationAnimatedNode;->findRangeIndex(D[D)I

    move-result v0

    .line 102
    aget-wide v2, p2, v0

    add-int/lit8 v1, v0, 0x1

    aget-wide v4, p2, v1

    aget-wide v6, p3, v0

    add-int/lit8 v0, v0, 0x1

    aget-wide v8, p3, v0

    move-wide v0, p0

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static/range {v0 .. v11}, Lcom/facebook/react/animated/InterpolationAnimatedNode;->interpolate(DDDDDLjava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public onAttachedToNode(Lcom/facebook/react/animated/AnimatedNode;)V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mParent:Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Parent already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    instance-of v0, p1, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-nez v0, :cond_1

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parent is of an invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_1
    check-cast p1, Lcom/facebook/react/animated/ValueAnimatedNode;

    iput-object p1, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mParent:Lcom/facebook/react/animated/ValueAnimatedNode;

    .line 199
    return-void
.end method

.method public onDetachedFromNode(Lcom/facebook/react/animated/AnimatedNode;)V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mParent:Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eq p1, v0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parent node provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mParent:Lcom/facebook/react/animated/ValueAnimatedNode;

    .line 207
    return-void
.end method

.method public update()V
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const-wide v12, 0x408f400000000000L    # 1000.0

    .line 211
    iget-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mParent:Lcom/facebook/react/animated/ValueAnimatedNode;

    if-nez v0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mParent:Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v0}, Lcom/facebook/react/animated/ValueAnimatedNode;->getValue()D

    move-result-wide v0

    .line 217
    iget-object v2, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mInputRange:[D

    iget-object v3, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mOutputRange:[D

    iget-object v4, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mExtrapolateLeft:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mExtrapolateRight:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/facebook/react/animated/InterpolationAnimatedNode;->interpolate(D[D[DLjava/lang/String;Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mValue:D

    .line 218
    iget-boolean v2, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mHasStringOutput:Z

    if-eqz v2, :cond_0

    .line 222
    iget v2, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mNumVals:I

    if-le v2, v8, :cond_8

    .line 223
    new-instance v9, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mPattern:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v9, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 225
    iget-object v2, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mSOutputMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    move v3, v6

    .line 226
    :goto_1
    iget-object v2, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mSOutputMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 227
    iget-object v2, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mInputRange:[D

    iget-object v4, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mOutputs:[[D

    add-int/lit8 v7, v3, 0x1

    aget-object v3, v4, v3

    iget-object v4, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mExtrapolateLeft:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mExtrapolateRight:Ljava/lang/String;

    .line 228
    invoke-static/range {v0 .. v5}, Lcom/facebook/react/animated/InterpolationAnimatedNode;->interpolate(D[D[DLjava/lang/String;Ljava/lang/String;)D

    move-result-wide v2

    .line 229
    iget-boolean v4, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mShouldRound:Z

    if-eqz v4, :cond_5

    .line 233
    const/4 v4, 0x4

    if-ne v7, v4, :cond_3

    move v4, v8

    .line 234
    :goto_2
    if-eqz v4, :cond_2

    mul-double/2addr v2, v12

    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 235
    if-eqz v4, :cond_4

    int-to-double v2, v2

    div-double/2addr v2, v12

    .line 236
    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    .line 237
    :goto_3
    iget-object v3, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mSOutputMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, v9, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    :goto_4
    move v3, v7

    .line 243
    goto :goto_1

    :cond_3
    move v4, v6

    .line 233
    goto :goto_2

    .line 236
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 239
    :cond_5
    double-to-int v4, v2

    .line 240
    int-to-double v10, v4

    cmpl-double v5, v10, v2

    if-eqz v5, :cond_6

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    .line 241
    :goto_5
    iget-object v3, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mSOutputMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, v9, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_4

    .line 240
    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 244
    :cond_7
    iget-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mSOutputMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 245
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mAnimatedObject:Ljava/lang/Object;

    goto/16 :goto_0

    .line 247
    :cond_8
    iget-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mSOutputMatcher:Ljava/util/regex/Matcher;

    iget-wide v2, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mValue:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mAnimatedObject:Ljava/lang/Object;

    goto/16 :goto_0
.end method
