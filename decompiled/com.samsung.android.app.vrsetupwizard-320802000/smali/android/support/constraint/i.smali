.class public Landroid/support/constraint/i;
.super Landroid/support/constraint/c;


# instance fields
.field public an:F

.field public ao:Z

.field public ap:F

.field public aq:F

.field public ar:F

.field public as:F

.field public at:F

.field public au:F

.field public av:F

.field public aw:F

.field public ax:F

.field public ay:F

.field public az:F


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/constraint/c;-><init>(II)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroid/support/constraint/i;->an:F

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/support/constraint/i;->ao:Z

    const/4 p2, 0x0

    iput p2, p0, Landroid/support/constraint/i;->ap:F

    iput p2, p0, Landroid/support/constraint/i;->aq:F

    iput p2, p0, Landroid/support/constraint/i;->ar:F

    iput p2, p0, Landroid/support/constraint/i;->as:F

    iput p1, p0, Landroid/support/constraint/i;->at:F

    iput p1, p0, Landroid/support/constraint/i;->au:F

    iput p2, p0, Landroid/support/constraint/i;->av:F

    iput p2, p0, Landroid/support/constraint/i;->aw:F

    iput p2, p0, Landroid/support/constraint/i;->ax:F

    iput p2, p0, Landroid/support/constraint/i;->ay:F

    iput p2, p0, Landroid/support/constraint/i;->az:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/support/constraint/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/i;->an:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/constraint/i;->ao:Z

    const/4 v2, 0x0

    iput v2, p0, Landroid/support/constraint/i;->ap:F

    iput v2, p0, Landroid/support/constraint/i;->aq:F

    iput v2, p0, Landroid/support/constraint/i;->ar:F

    iput v2, p0, Landroid/support/constraint/i;->as:F

    iput v0, p0, Landroid/support/constraint/i;->at:F

    iput v0, p0, Landroid/support/constraint/i;->au:F

    iput v2, p0, Landroid/support/constraint/i;->av:F

    iput v2, p0, Landroid/support/constraint/i;->aw:F

    iput v2, p0, Landroid/support/constraint/i;->ax:F

    iput v2, p0, Landroid/support/constraint/i;->ay:F

    iput v2, p0, Landroid/support/constraint/i;->az:F

    sget-object v0, Landroid/support/constraint/n;->ConstraintSet:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    :goto_0
    if-ge v1, p2, :cond_c

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    sget v2, Landroid/support/constraint/n;->ConstraintSet_android_alpha:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Landroid/support/constraint/i;->an:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/i;->an:F

    goto/16 :goto_2

    :cond_0
    sget v2, Landroid/support/constraint/n;->ConstraintSet_android_elevation:I

    if-ne v0, v2, :cond_1

    iget v2, p0, Landroid/support/constraint/i;->ap:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/i;->ap:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/i;->ao:Z

    goto/16 :goto_2

    :cond_1
    sget v2, Landroid/support/constraint/n;->ConstraintSet_android_rotationX:I

    if-ne v0, v2, :cond_2

    iget v2, p0, Landroid/support/constraint/i;->ar:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/i;->ar:F

    goto/16 :goto_2

    :cond_2
    sget v2, Landroid/support/constraint/n;->ConstraintSet_android_rotationY:I

    if-ne v0, v2, :cond_3

    iget v2, p0, Landroid/support/constraint/i;->as:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/i;->as:F

    goto :goto_2

    :cond_3
    sget v2, Landroid/support/constraint/n;->ConstraintSet_android_rotation:I

    if-ne v0, v2, :cond_4

    iget v2, p0, Landroid/support/constraint/i;->aq:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/i;->aq:F

    goto :goto_2

    :cond_4
    sget v2, Landroid/support/constraint/n;->ConstraintSet_android_scaleX:I

    if-ne v0, v2, :cond_5

    iget v2, p0, Landroid/support/constraint/i;->at:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/i;->at:F

    goto :goto_2

    :cond_5
    sget v2, Landroid/support/constraint/n;->ConstraintSet_android_scaleY:I

    if-ne v0, v2, :cond_6

    iget v2, p0, Landroid/support/constraint/i;->au:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/i;->au:F

    goto :goto_2

    :cond_6
    sget v2, Landroid/support/constraint/n;->ConstraintSet_android_transformPivotX:I

    if-ne v0, v2, :cond_7

    iget v2, p0, Landroid/support/constraint/i;->av:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/i;->av:F

    goto :goto_2

    :cond_7
    sget v2, Landroid/support/constraint/n;->ConstraintSet_android_transformPivotY:I

    if-ne v0, v2, :cond_8

    iget v2, p0, Landroid/support/constraint/i;->aw:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/i;->aw:F

    goto :goto_2

    :cond_8
    sget v2, Landroid/support/constraint/n;->ConstraintSet_android_translationX:I

    if-ne v0, v2, :cond_9

    iget v2, p0, Landroid/support/constraint/i;->ax:F

    :goto_1
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/i;->ax:F

    goto :goto_2

    :cond_9
    sget v2, Landroid/support/constraint/n;->ConstraintSet_android_translationY:I

    if-ne v0, v2, :cond_a

    iget v2, p0, Landroid/support/constraint/i;->ay:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/i;->ay:F

    goto :goto_2

    :cond_a
    sget v2, Landroid/support/constraint/n;->ConstraintSet_android_translationZ:I

    if-ne v0, v2, :cond_b

    iget v2, p0, Landroid/support/constraint/i;->az:F

    goto :goto_1

    :cond_b
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method
