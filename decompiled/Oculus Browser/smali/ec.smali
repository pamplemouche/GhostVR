.class public abstract Lec;
.super Landroid/support/v7/preference/Preference;
.source "PG"


# instance fields
.field public i0:Ljava/lang/CharSequence;

.field public j0:Ljava/lang/CharSequence;

.field public k0:Landroid/graphics/drawable/Drawable;

.field public l0:Ljava/lang/CharSequence;

.field public m0:Ljava/lang/CharSequence;

.field public n0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    sget-object v0, LeS;->P:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/16 p3, 0x9

    .line 3
    invoke-static {p1, p3, p2}, Lm4;->a(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lec;->i0:Ljava/lang/CharSequence;

    if-nez p3, :cond_0

    .line 4
    iget-object p3, p0, Landroid/support/v7/preference/Preference;->E:Ljava/lang/CharSequence;

    .line 5
    iput-object p3, p0, Lec;->i0:Ljava/lang/CharSequence;

    :cond_0
    const/16 p3, 0x8

    const/4 p4, 0x1

    .line 6
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    .line 7
    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 8
    :cond_1
    iput-object p3, p0, Lec;->j0:Ljava/lang/CharSequence;

    const/4 p3, 0x6

    const/4 p4, 0x2

    .line 9
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-nez p3, :cond_2

    .line 10
    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 11
    :cond_2
    iput-object p3, p0, Lec;->k0:Landroid/graphics/drawable/Drawable;

    const/16 p3, 0xb

    const/4 p4, 0x3

    .line 12
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    .line 13
    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 14
    :cond_3
    iput-object p3, p0, Lec;->l0:Ljava/lang/CharSequence;

    const/16 p3, 0xa

    const/4 p4, 0x4

    .line 15
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_4

    .line 16
    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 17
    :cond_4
    iput-object p3, p0, Lec;->m0:Ljava/lang/CharSequence;

    const/4 p3, 0x7

    const/4 p4, 0x5

    .line 18
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 19
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 20
    iput p2, p0, Lec;->n0:I

    .line 21
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public r()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->x:LDc;

    .line 2
    iget-object v0, v0, LDc;->j:LAc;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0}, LAc;->b(Landroid/support/v7/preference/Preference;)V

    :cond_0
    return-void
.end method
