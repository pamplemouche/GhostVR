.class final Landroidx/palette/graphics/ColorCutQuantizer;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/palette/graphics/ColorCutQuantizer$Vbox;
    }
.end annotation


# static fields
.field private static final VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroidx/palette/graphics/ColorCutQuantizer$Vbox;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mColors:[I

.field final mFilters:[Landroidx/palette/graphics/Palette$Filter;

.field final mHistogram:[I

.field final mQuantizedColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/palette/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempHsl:[F

.field final mTimingLogger:Landroid/util/TimingLogger;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 457
    new-instance v0, Landroidx/palette/graphics/ColorCutQuantizer$1;

    invoke-direct {v0}, Landroidx/palette/graphics/ColorCutQuantizer$1;-><init>()V

    sput-object v0, Landroidx/palette/graphics/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>([II[Landroidx/palette/graphics/Palette$Filter;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mTempHsl:[F

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mTimingLogger:Landroid/util/TimingLogger;

    .line 75
    iput-object p3, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mFilters:[Landroidx/palette/graphics/Palette$Filter;

    .line 77
    const v0, 0x8000

    new-array v5, v0, [I

    iput-object v5, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mHistogram:[I

    move v0, v1

    .line 78
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 79
    aget v2, p1, v0

    invoke-static {v2}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizeFromRgb888(I)I

    move-result v2

    .line 81
    aput v2, p1, v0

    .line 83
    aget v3, v5, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v5, v2

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v1

    .line 92
    :goto_1
    array-length v3, v5

    if-ge v0, v3, :cond_3

    .line 93
    aget v3, v5, v0

    if-lez v3, :cond_1

    invoke-direct {p0, v0}, Landroidx/palette/graphics/ColorCutQuantizer;->shouldIgnoreColor(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    aput v1, v5, v0

    .line 97
    :cond_1
    aget v3, v5, v0

    if-lez v3, :cond_2

    .line 99
    add-int/lit8 v2, v2, 0x1

    .line 92
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    :cond_3
    new-array v6, v2, [I

    iput-object v6, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    move v0, v1

    move v3, v1

    .line 110
    :goto_2
    array-length v4, v5

    if-ge v0, v4, :cond_5

    .line 111
    aget v4, v5, v0

    if-lez v4, :cond_4

    .line 112
    add-int/lit8 v4, v3, 0x1

    aput v0, v6, v3

    move v3, v4

    .line 110
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 120
    :cond_5
    if-gt v2, p2, :cond_6

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 123
    array-length v0, v6

    :goto_3
    if-ge v1, v0, :cond_7

    aget v2, v6, v1

    .line 124
    iget-object v3, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    new-instance v4, Landroidx/palette/graphics/Palette$Swatch;

    invoke-static {v2}, Landroidx/palette/graphics/ColorCutQuantizer;->approximateToRgb888(I)I

    move-result v7

    aget v2, v5, v2

    invoke-direct {v4, v7, v2}, Landroidx/palette/graphics/Palette$Swatch;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 133
    :cond_6
    invoke-direct {p0, p2}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizePixels(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 140
    :cond_7
    return-void
.end method

.method private static approximateToRgb888(I)I
    .locals 3

    .prologue
    .line 484
    invoke-static {p0}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedRed(I)I

    move-result v0

    invoke-static {p0}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v1

    invoke-static {p0}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroidx/palette/graphics/ColorCutQuantizer;->approximateToRgb888(III)I

    move-result v0

    return v0
.end method

.method static approximateToRgb888(III)I
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x5

    .line 478
    invoke-static {p0, v2, v3}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v0

    .line 479
    invoke-static {p1, v2, v3}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v1

    .line 480
    invoke-static {p2, v2, v3}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v2

    .line 478
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method private generateAverageColors(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroidx/palette/graphics/ColorCutQuantizer$Vbox;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroidx/palette/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    .line 201
    invoke-virtual {v0}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->getAverageColor()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v0

    .line 202
    invoke-direct {p0, v0}, Landroidx/palette/graphics/ColorCutQuantizer;->shouldIgnoreColor(Landroidx/palette/graphics/Palette$Swatch;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 205
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    :cond_1
    return-object v1
.end method

.method static modifySignificantOctet([IIII)V
    .locals 3

    .prologue
    .line 408
    packed-switch p1, :pswitch_data_0

    .line 431
    :cond_0
    :pswitch_0
    return-void

    .line 414
    :goto_0
    :pswitch_1
    if-gt p2, p3, :cond_0

    .line 415
    aget v0, p0, p2

    .line 416
    invoke-static {v0}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0xa

    .line 417
    invoke-static {v0}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedRed(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v1, v2

    .line 418
    invoke-static {v0}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v0

    or-int/2addr v0, v1

    aput v0, p0, p2

    .line 414
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 423
    :goto_1
    :pswitch_2
    if-gt p2, p3, :cond_0

    .line 424
    aget v0, p0, p2

    .line 425
    invoke-static {v0}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0xa

    .line 426
    invoke-static {v0}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v1, v2

    .line 427
    invoke-static {v0}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedRed(I)I

    move-result v0

    or-int/2addr v0, v1

    aput v0, p0, p2

    .line 423
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 408
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static modifyWordWidth(III)I
    .locals 2

    .prologue
    .line 510
    if-le p2, p1, :cond_0

    .line 512
    sub-int v0, p2, p1

    shl-int v0, p0, v0

    .line 517
    :goto_0
    const/4 v1, 0x1

    shl-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0

    .line 515
    :cond_0
    sub-int v0, p1, p2

    shr-int v0, p0, v0

    goto :goto_0
.end method

.method private static quantizeFromRgb888(I)I
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x5

    .line 468
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v0, v4, v3}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v0

    .line 469
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1, v4, v3}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v1

    .line 470
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v2, v4, v3}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v2

    .line 471
    shl-int/lit8 v0, v0, 0xa

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    return v0
.end method

.method private quantizePixels(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroidx/palette/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Ljava/util/PriorityQueue;

    sget-object v1, Landroidx/palette/graphics/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    invoke-direct {v0, p1, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 155
    new-instance v1, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v1, p0, v2, v3}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;-><init>(Landroidx/palette/graphics/ColorCutQuantizer;II)V

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 159
    invoke-direct {p0, v0, p1}, Landroidx/palette/graphics/ColorCutQuantizer;->splitBoxes(Ljava/util/PriorityQueue;I)V

    .line 162
    invoke-direct {p0, v0}, Landroidx/palette/graphics/ColorCutQuantizer;->generateAverageColors(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static quantizedBlue(I)I
    .locals 1

    .prologue
    .line 505
    and-int/lit8 v0, p0, 0x1f

    return v0
.end method

.method static quantizedGreen(I)I
    .locals 1

    .prologue
    .line 498
    shr-int/lit8 v0, p0, 0x5

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method static quantizedRed(I)I
    .locals 1

    .prologue
    .line 491
    shr-int/lit8 v0, p0, 0xa

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method private shouldIgnoreColor(I)Z
    .locals 2

    .prologue
    .line 434
    invoke-static {p1}, Landroidx/palette/graphics/ColorCutQuantizer;->approximateToRgb888(I)I

    move-result v0

    .line 435
    iget-object v1, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mTempHsl:[F

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 436
    iget-object v1, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mTempHsl:[F

    invoke-direct {p0, v0, v1}, Landroidx/palette/graphics/ColorCutQuantizer;->shouldIgnoreColor(I[F)Z

    move-result v0

    return v0
.end method

.method private shouldIgnoreColor(I[F)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 444
    iget-object v1, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mFilters:[Landroidx/palette/graphics/Palette$Filter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mFilters:[Landroidx/palette/graphics/Palette$Filter;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 445
    iget-object v1, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mFilters:[Landroidx/palette/graphics/Palette$Filter;

    array-length v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 446
    iget-object v3, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mFilters:[Landroidx/palette/graphics/Palette$Filter;

    aget-object v3, v3, v1

    invoke-interface {v3, p1, p2}, Landroidx/palette/graphics/Palette$Filter;->isAllowed(I[F)Z

    move-result v3

    if-nez v3, :cond_1

    .line 447
    const/4 v0, 0x1

    .line 451
    :cond_0
    return v0

    .line 445
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private shouldIgnoreColor(Landroidx/palette/graphics/Palette$Swatch;)Z
    .locals 2

    .prologue
    .line 440
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result v0

    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/palette/graphics/ColorCutQuantizer;->shouldIgnoreColor(I[F)Z

    move-result v0

    return v0
.end method

.method private splitBoxes(Ljava/util/PriorityQueue;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue",
            "<",
            "Landroidx/palette/graphics/ColorCutQuantizer$Vbox;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 176
    :goto_0
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 177
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    .line 179
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->canSplit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {v0}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->splitBox()Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    :cond_0
    return-void
.end method


# virtual methods
.method getQuantizedColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/palette/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    return-object v0
.end method
