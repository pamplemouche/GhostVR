.class public Landroid/support/v7/preference/Preference;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public A:Llc;

.field public B:Lmc;

.field public C:I

.field public D:I

.field public E:Ljava/lang/CharSequence;

.field public F:Ljava/lang/CharSequence;

.field public G:I

.field public H:Landroid/graphics/drawable/Drawable;

.field public I:Ljava/lang/String;

.field public J:Landroid/content/Intent;

.field public K:Ljava/lang/String;

.field public L:Landroid/os/Bundle;

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Ljava/lang/String;

.field public R:Ljava/lang/Object;

.field public S:Z

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:Z

.field public Z:Z

.field public a0:Z

.field public b0:I

.field public c0:I

.field public d0:Lkc;

.field public e0:Ljava/util/List;

.field public f0:Lvc;

.field public g0:Z

.field public final h0:Landroid/view/View$OnClickListener;

.field public w:Landroid/content/Context;

.field public x:LDc;

.field public y:J

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0401c2

    const v1, 0x101008e

    .line 78
    invoke-static {p1, v0, v1}, Lm4;->a(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Landroid/support/v7/preference/Preference;->C:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Landroid/support/v7/preference/Preference;->D:I

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->M:Z

    .line 5
    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->N:Z

    .line 6
    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->P:Z

    .line 7
    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->S:Z

    .line 8
    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->T:Z

    .line 9
    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->U:Z

    .line 10
    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->V:Z

    .line 11
    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->W:Z

    .line 12
    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->Y:Z

    .line 13
    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->a0:Z

    const v3, 0x7f0e0168

    .line 14
    iput v3, p0, Landroid/support/v7/preference/Preference;->b0:I

    .line 15
    new-instance v4, Lic;

    invoke-direct {v4, p0}, Lic;-><init>(Landroid/support/v7/preference/Preference;)V

    iput-object v4, p0, Landroid/support/v7/preference/Preference;->h0:Landroid/view/View$OnClickListener;

    .line 16
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 17
    sget-object v4, LeS;->q0:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x16

    .line 18
    invoke-static {p1, p2, v1, v1}, Lm4;->a(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroid/support/v7/preference/Preference;->G:I

    const/16 p2, 0x19

    .line 19
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x6

    .line 20
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 21
    :cond_0
    iput-object p2, p0, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const/16 p2, 0x21

    const/4 p3, 0x4

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_1

    .line 23
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 24
    :cond_1
    iput-object p2, p0, Landroid/support/v7/preference/Preference;->E:Ljava/lang/CharSequence;

    const/16 p2, 0x20

    const/4 p3, 0x7

    .line 25
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_2

    .line 26
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 27
    :cond_2
    iput-object p2, p0, Landroid/support/v7/preference/Preference;->F:Ljava/lang/CharSequence;

    const/16 p2, 0x1b

    const/16 p3, 0x8

    .line 28
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 29
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 30
    iput p2, p0, Landroid/support/v7/preference/Preference;->C:I

    const/16 p2, 0x15

    const/16 p3, 0xd

    .line 31
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 32
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 33
    :cond_3
    iput-object p2, p0, Landroid/support/v7/preference/Preference;->K:Ljava/lang/String;

    const/16 p2, 0x1a

    const/4 p3, 0x3

    .line 34
    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 35
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 36
    iput p2, p0, Landroid/support/v7/preference/Preference;->b0:I

    const/16 p2, 0x22

    const/16 p3, 0x9

    .line 37
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 38
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 39
    iput p2, p0, Landroid/support/v7/preference/Preference;->c0:I

    const/16 p2, 0x14

    const/4 p3, 0x2

    .line 40
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 41
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 42
    iput-boolean p2, p0, Landroid/support/v7/preference/Preference;->M:Z

    const/16 p2, 0x1d

    const/4 p3, 0x5

    .line 43
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 44
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 45
    iput-boolean p2, p0, Landroid/support/v7/preference/Preference;->N:Z

    const/16 p2, 0x1c

    .line 46
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 47
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 48
    iput-boolean p2, p0, Landroid/support/v7/preference/Preference;->P:Z

    const/16 p2, 0x13

    const/16 p3, 0xa

    .line 49
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    .line 50
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 51
    :cond_4
    iput-object p2, p0, Landroid/support/v7/preference/Preference;->Q:Ljava/lang/String;

    .line 52
    iget-boolean p2, p0, Landroid/support/v7/preference/Preference;->N:Z

    const/16 p3, 0x10

    .line 53
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 54
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 55
    iput-boolean p2, p0, Landroid/support/v7/preference/Preference;->V:Z

    .line 56
    iget-boolean p2, p0, Landroid/support/v7/preference/Preference;->N:Z

    const/16 p3, 0x11

    .line 57
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 58
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 59
    iput-boolean p2, p0, Landroid/support/v7/preference/Preference;->W:Z

    const/16 p2, 0x12

    .line 60
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 61
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/preference/Preference;->a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/preference/Preference;->R:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const/16 p2, 0xb

    .line 62
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 63
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/preference/Preference;->a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/preference/Preference;->R:Ljava/lang/Object;

    :cond_6
    :goto_0
    const/16 p2, 0x1e

    const/16 p3, 0xc

    .line 64
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 65
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 66
    iput-boolean p2, p0, Landroid/support/v7/preference/Preference;->a0:Z

    const/16 p2, 0x1f

    .line 67
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    iput-boolean p3, p0, Landroid/support/v7/preference/Preference;->X:Z

    if-eqz p3, :cond_7

    const/16 p3, 0xe

    .line 68
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 69
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 70
    iput-boolean p2, p0, Landroid/support/v7/preference/Preference;->Y:Z

    :cond_7
    const/16 p2, 0x17

    const/16 p3, 0xf

    .line 71
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 72
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 73
    iput-boolean p2, p0, Landroid/support/v7/preference/Preference;->Z:Z

    const/16 p2, 0x18

    .line 74
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 75
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 76
    iput-boolean p2, p0, Landroid/support/v7/preference/Preference;->U:Z

    .line 77
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;)I
    .locals 2

    .line 67
    iget v0, p0, Landroid/support/v7/preference/Preference;->C:I

    iget v1, p1, Landroid/support/v7/preference/Preference;->C:I

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    .line 68
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->E:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/support/v7/preference/Preference;->E:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    if-nez v1, :cond_3

    const/4 p1, -0x1

    return p1

    .line 69
    :cond_3
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroid/support/v7/preference/Preference;->E:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(I)V
    .locals 1

    .line 51
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    invoke-static {v0, p1}, LR3;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->a(Landroid/graphics/drawable/Drawable;)V

    .line 52
    iput p1, p0, Landroid/support/v7/preference/Preference;->G:I

    return-void
.end method

.method public a(LDc;)V
    .locals 2

    .line 70
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->x:LDc;

    .line 71
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->z:Z

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p1}, LDc;->b()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/preference/Preference;->y:J

    .line 73
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->k()V

    .line 74
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->v()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 75
    iget-object p1, p0, Landroid/support/v7/preference/Preference;->x:LDc;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->k()V

    .line 76
    iget-object p1, p0, Landroid/support/v7/preference/Preference;->x:LDc;

    invoke-virtual {p1}, LDc;->c()Landroid/content/SharedPreferences;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 77
    :goto_0
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/Object;)V

    goto :goto_2

    .line 79
    :cond_3
    :goto_1
    iget-object p1, p0, Landroid/support/v7/preference/Preference;->R:Ljava/lang/Object;

    if-eqz p1, :cond_4

    .line 80
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public a(LGc;)V
    .locals 6

    .line 1
    iget-object v0, p1, Ldh;->w:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/preference/Preference;->h0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p1, Ldh;->w:Landroid/view/View;

    iget v1, p0, Landroid/support/v7/preference/Preference;->D:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const v0, 0x1020016

    .line 3
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object v3, p0, Landroid/support/v7/preference/Preference;->E:Ljava/lang/CharSequence;

    .line 5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-boolean v3, p0, Landroid/support/v7/preference/Preference;->X:Z

    if-eqz v3, :cond_1

    .line 9
    iget-boolean v3, p0, Landroid/support/v7/preference/Preference;->Y:Z

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    const v0, 0x1020010

    .line 11
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->l()Ljava/lang/CharSequence;

    move-result-object v3

    .line 13
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 14
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_1
    const v0, 0x1020006

    .line 17
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x4

    if-eqz v0, :cond_9

    .line 18
    iget v4, p0, Landroid/support/v7/preference/Preference;->G:I

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/support/v7/preference/Preference;->H:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 19
    :cond_4
    iget-object v4, p0, Landroid/support/v7/preference/Preference;->H:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_5

    .line 20
    iget-object v4, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 21
    iget v5, p0, Landroid/support/v7/preference/Preference;->G:I

    invoke-static {v4, v5}, LR3;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/preference/Preference;->H:Landroid/graphics/drawable/Drawable;

    .line 22
    :cond_5
    iget-object v4, p0, Landroid/support/v7/preference/Preference;->H:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 23
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    :cond_6
    iget-object v4, p0, Landroid/support/v7/preference/Preference;->H:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_7

    .line 25
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 26
    :cond_7
    iget-boolean v4, p0, Landroid/support/v7/preference/Preference;->Z:Z

    if-eqz v4, :cond_8

    const/4 v4, 0x4

    goto :goto_2

    :cond_8
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    :goto_3
    const v0, 0x7f0b0205

    .line 27
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    const v0, 0x102003e

    .line 28
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object v0

    :cond_a
    if-eqz v0, :cond_d

    .line 29
    iget-object v4, p0, Landroid/support/v7/preference/Preference;->H:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_b

    .line 30
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 31
    :cond_b
    iget-boolean v2, p0, Landroid/support/v7/preference/Preference;->Z:Z

    if-eqz v2, :cond_c

    const/4 v1, 0x4

    :cond_c
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    :cond_d
    :goto_4
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->a0:Z

    if-eqz v0, :cond_e

    .line 33
    iget-object v0, p1, Ldh;->w:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->n()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/preference/Preference;->a(Landroid/view/View;Z)V

    goto :goto_5

    .line 34
    :cond_e
    iget-object v0, p1, Ldh;->w:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/preference/Preference;->a(Landroid/view/View;Z)V

    .line 35
    :goto_5
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->N:Z

    .line 36
    iget-object v1, p1, Ldh;->w:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 37
    iget-object v1, p1, Ldh;->w:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 38
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->V:Z

    .line 39
    iput-boolean v0, p1, LGc;->Q:Z

    .line 40
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->W:Z

    .line 41
    iput-boolean v0, p1, LGc;->R:Z

    return-void
.end method

.method public a(LZ7;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    .line 47
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->H:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->H:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 48
    :cond_1
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->H:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Landroid/support/v7/preference/Preference;->G:I

    .line 50
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->o()V

    :cond_2
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .line 84
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->g0:Z

    .line 87
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/os/Parcelable;)V

    .line 88
    iget-boolean p1, p0, Landroid/support/v7/preference/Preference;->g0:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->g0:Z

    .line 91
    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong state class -- expecting Preference State"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 58
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->n()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->r()V

    .line 60
    iget-object p1, p0, Landroid/support/v7/preference/Preference;->B:Lmc;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lmc;->c(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 61
    :cond_1
    iget-object p1, p0, Landroid/support/v7/preference/Preference;->x:LDc;

    if-eqz p1, :cond_2

    .line 62
    iget-object p1, p1, LDc;->i:LCc;

    if-eqz p1, :cond_2

    .line 63
    invoke-interface {p1, p0}, LCc;->a(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 64
    :cond_2
    iget-object p1, p0, Landroid/support/v7/preference/Preference;->J:Landroid/content/Intent;

    if-eqz p1, :cond_3

    .line 65
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 66
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final a(Landroid/view/View;Z)V
    .locals 2

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 43
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 44
    check-cast p1, Landroid/view/ViewGroup;

    .line 45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Landroid/support/v7/preference/Preference;->a(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 53
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->F:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->F:Ljava/lang/CharSequence;

    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 55
    :cond_1
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->F:Ljava/lang/CharSequence;

    .line 56
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->o()V

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1

    .line 57
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->A:Llc;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Llc;->a(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public a(Z)Z
    .locals 2

    .line 81
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->v()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->k()V

    .line 83
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->x:LDc;

    invoke-virtual {v0}, LDc;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)Landroid/support/v7/preference/Preference;
    .locals 1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->x:LDc;

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0, p1}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public b(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/preference/Preference;->C:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Landroid/support/v7/preference/Preference;->C:I

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->p()V

    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 17
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->g0:Z

    .line 19
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->t()Landroid/os/Parcelable;

    move-result-object v0

    .line 20
    iget-boolean v1, p0, Landroid/support/v7/preference/Preference;->g0:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 21
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 4
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->E:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->E:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    :cond_1
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->E:Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->o()V

    :cond_2
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 5

    .line 10
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->e0:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/Preference;

    .line 13
    iget-boolean v4, v3, Landroid/support/v7/preference/Preference;->S:Z

    if-ne v4, p1, :cond_1

    xor-int/lit8 v4, p1, 0x1

    .line 14
    iput-boolean v4, v3, Landroid/support/v7/preference/Preference;->S:Z

    .line 15
    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->u()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->b(Z)V

    .line 16
    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->o()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 6
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->v()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->k()V

    .line 8
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->x:LDc;

    invoke-virtual {v0}, LDc;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->M:Z

    if-eq v0, p1, :cond_0

    .line 3
    iput-boolean p1, p0, Landroid/support/v7/preference/Preference;->M:Z

    .line 4
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->u()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->b(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->o()V

    :cond_0
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference;)I

    move-result p1

    return p1
.end method

.method public d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 5
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    .line 6
    iget-boolean p1, p0, Landroid/support/v7/preference/Preference;->O:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->m()Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Landroid/support/v7/preference/Preference;->O:Z

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Preference does not have a key assigned."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->N:Z

    if-eq v0, p1, :cond_0

    .line 3
    iput-boolean p1, p0, Landroid/support/v7/preference/Preference;->N:Z

    .line 4
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->o()V

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->X:Z

    .line 2
    iput-boolean p1, p0, Landroid/support/v7/preference/Preference;->Y:Z

    return-void
.end method

.method public h()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->L:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/Preference;->L:Landroid/os/Bundle;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->L:Landroid/os/Bundle;

    return-object v0
.end method

.method public i()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->H:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/preference/Preference;->G:I

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    invoke-static {v1, v0}, LR3;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/Preference;->H:Landroid/graphics/drawable/Drawable;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->H:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v7/preference/Preference;->y:J

    return-wide v0
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->x:LDc;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public l()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->F:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->M:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->S:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->T:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->d0:Lkc;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lyc;

    .line 3
    iget-object v1, v0, Lyc;->z:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 4
    iget-object v0, v0, LBg;->w:LCg;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, LCg;->a(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->d0:Lkc;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lyc;

    .line 3
    iget-object v1, v0, Lyc;->D:Landroid/os/Handler;

    iget-object v2, v0, Lyc;->F:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v1, v0, Lyc;->D:Landroid/os/Handler;

    iget-object v0, v0, Lyc;->F:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public q()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->Q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->Q:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v1, v0, Landroid/support/v7/preference/Preference;->e0:Ljava/util/List;

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/support/v7/preference/Preference;->e0:Ljava/util/List;

    .line 5
    :cond_1
    iget-object v1, v0, Landroid/support/v7/preference/Preference;->e0:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->u()Z

    move-result v0

    .line 7
    iget-boolean v1, p0, Landroid/support/v7/preference/Preference;->S:Z

    if-ne v1, v0, :cond_2

    xor-int/lit8 v0, v0, 0x1

    .line 8
    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->S:Z

    .line 9
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->u()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->b(Z)V

    .line 10
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->o()V

    :cond_2
    :goto_0
    return-void

    .line 11
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Dependency \""

    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/preference/Preference;->Q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" not found for preference \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" (title: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/preference/Preference;->E:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r()V
    .locals 0

    return-void
.end method

.method public s()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->Q:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Landroid/support/v7/preference/Preference;->e0:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public t()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->g0:Z

    .line 2
    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->E:Ljava/lang/CharSequence;

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->l()Ljava/lang/CharSequence;

    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 10
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->n()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->x:LDc;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->P:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
