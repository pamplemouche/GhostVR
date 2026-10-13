.class public Lcom/facebook/react/uimanager/Spacing;
.super Ljava/lang/Object;
.source "Spacing.java"


# static fields
.field private static final sFlagsMap:[I


# instance fields
.field private final mDefaultValue:F

.field private mHasAliasesSet:Z

.field private final mSpacing:[F

.field private mValueFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/react/uimanager/Spacing;->sFlagsMap:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/react/uimanager/Spacing;-><init>(F)V

    .line 62
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/uimanager/Spacing;->mValueFlags:I

    .line 65
    iput p1, p0, Lcom/facebook/react/uimanager/Spacing;->mDefaultValue:F

    .line 66
    invoke-static {}, Lcom/facebook/react/uimanager/Spacing;->newFullSpacingArray()[F

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/uimanager/Spacing;->mSpacing:[F

    .line 67
    return-void
.end method

.method private static newFullSpacingArray()[F
    .locals 1

    .prologue
    .line 166
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x7fc00000    # Float.NaN
        0x7fc00000    # Float.NaN
        0x7fc00000    # Float.NaN
        0x7fc00000    # Float.NaN
        0x7fc00000    # Float.NaN
        0x7fc00000    # Float.NaN
        0x7fc00000    # Float.NaN
        0x7fc00000    # Float.NaN
        0x7fc00000    # Float.NaN
    .end array-data
.end method


# virtual methods
.method public get(I)F
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 112
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 115
    :goto_0
    iget v1, p0, Lcom/facebook/react/uimanager/Spacing;->mValueFlags:I

    if-nez v1, :cond_3

    .line 132
    :cond_1
    :goto_1
    return v0

    .line 112
    :cond_2
    iget v0, p0, Lcom/facebook/react/uimanager/Spacing;->mDefaultValue:F

    goto :goto_0

    .line 119
    :cond_3
    iget v1, p0, Lcom/facebook/react/uimanager/Spacing;->mValueFlags:I

    sget-object v2, Lcom/facebook/react/uimanager/Spacing;->sFlagsMap:[I

    aget v2, v2, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 120
    iget-object v0, p0, Lcom/facebook/react/uimanager/Spacing;->mSpacing:[F

    aget v0, v0, p1

    goto :goto_1

    .line 123
    :cond_4
    iget-boolean v1, p0, Lcom/facebook/react/uimanager/Spacing;->mHasAliasesSet:Z

    if-eqz v1, :cond_1

    .line 124
    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-ne p1, v1, :cond_6

    :cond_5
    const/4 v1, 0x7

    .line 125
    :goto_2
    iget v2, p0, Lcom/facebook/react/uimanager/Spacing;->mValueFlags:I

    sget-object v3, Lcom/facebook/react/uimanager/Spacing;->sFlagsMap:[I

    aget v3, v3, v1

    and-int/2addr v2, v3

    if-eqz v2, :cond_7

    .line 126
    iget-object v0, p0, Lcom/facebook/react/uimanager/Spacing;->mSpacing:[F

    aget v0, v0, v1

    goto :goto_1

    .line 124
    :cond_6
    const/4 v1, 0x6

    goto :goto_2

    .line 127
    :cond_7
    iget v1, p0, Lcom/facebook/react/uimanager/Spacing;->mValueFlags:I

    sget-object v2, Lcom/facebook/react/uimanager/Spacing;->sFlagsMap:[I

    aget v2, v2, v4

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 128
    iget-object v0, p0, Lcom/facebook/react/uimanager/Spacing;->mSpacing:[F

    aget v0, v0, v4

    goto :goto_1
.end method

.method public getRaw(I)F
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/facebook/react/uimanager/Spacing;->mSpacing:[F

    aget v0, v0, p1

    return v0
.end method

.method public set(IF)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 86
    iget-object v2, p0, Lcom/facebook/react/uimanager/Spacing;->mSpacing:[F

    aget v2, v2, p1

    invoke-static {v2, p2}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v2

    if-nez v2, :cond_3

    .line 87
    iget-object v2, p0, Lcom/facebook/react/uimanager/Spacing;->mSpacing:[F

    aput p2, v2, p1

    .line 89
    invoke-static {p2}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    iget v2, p0, Lcom/facebook/react/uimanager/Spacing;->mValueFlags:I

    sget-object v3, Lcom/facebook/react/uimanager/Spacing;->sFlagsMap:[I

    aget v3, v3, p1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/facebook/react/uimanager/Spacing;->mValueFlags:I

    .line 95
    :goto_0
    iget v2, p0, Lcom/facebook/react/uimanager/Spacing;->mValueFlags:I

    sget-object v3, Lcom/facebook/react/uimanager/Spacing;->sFlagsMap:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/facebook/react/uimanager/Spacing;->mValueFlags:I

    sget-object v3, Lcom/facebook/react/uimanager/Spacing;->sFlagsMap:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/facebook/react/uimanager/Spacing;->mValueFlags:I

    sget-object v3, Lcom/facebook/react/uimanager/Spacing;->sFlagsMap:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/facebook/react/uimanager/Spacing;->mHasAliasesSet:Z

    .line 103
    :goto_1
    return v1

    .line 92
    :cond_2
    iget v2, p0, Lcom/facebook/react/uimanager/Spacing;->mValueFlags:I

    sget-object v3, Lcom/facebook/react/uimanager/Spacing;->sFlagsMap:[I

    aget v3, v3, p1

    or-int/2addr v2, v3

    iput v2, p0, Lcom/facebook/react/uimanager/Spacing;->mValueFlags:I

    goto :goto_0

    :cond_3
    move v1, v0

    .line 103
    goto :goto_1
.end method
