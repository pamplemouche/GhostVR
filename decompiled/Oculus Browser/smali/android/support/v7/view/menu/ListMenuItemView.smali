.class public Landroid/support/v7/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "PG"

# interfaces
.implements LGd;
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# instance fields
.field public A:Landroid/widget/CheckBox;

.field public B:Landroid/widget/TextView;

.field public C:Landroid/widget/ImageView;

.field public D:Landroid/widget/ImageView;

.field public E:Landroid/widget/LinearLayout;

.field public F:Landroid/graphics/drawable/Drawable;

.field public G:I

.field public H:Landroid/content/Context;

.field public I:Z

.field public J:Landroid/graphics/drawable/Drawable;

.field public K:Z

.field public L:Landroid/view/LayoutInflater;

.field public M:Z

.field public w:Ltd;

.field public x:Landroid/widget/ImageView;

.field public y:Landroid/widget/RadioButton;

.field public z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, LeS;->o0:[I

    const/4 v2, 0x0

    const v3, 0x7f040171

    invoke-static {v0, p2, v1, v3, v2}, LNh;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)LNh;

    move-result-object p2

    const/4 v0, 0x5

    .line 3
    invoke-virtual {p2, v0}, LNh;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->F:Landroid/graphics/drawable/Drawable;

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p2, v1, v0}, LNh;->f(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->G:I

    const/4 v0, 0x7

    .line 5
    invoke-virtual {p2, v0, v2}, LNh;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->I:Z

    .line 6
    iput-object p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->H:Landroid/content/Context;

    const/16 v0, 0x8

    .line 7
    invoke-virtual {p2, v0}, LNh;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->J:Landroid/graphics/drawable/Drawable;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    new-array v0, v1, [I

    const v1, 0x1010129

    aput v1, v0, v2

    const/4 v1, 0x0

    const v3, 0x7f0400d5

    .line 9
    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->K:Z

    .line 11
    iget-object p2, p2, LNh;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/LayoutInflater;
    .locals 1

    .line 96
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->L:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->L:Landroid/view/LayoutInflater;

    .line 98
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->L:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public a(Ltd;I)V
    .locals 11

    .line 1
    iput-object p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->w:Ltd;

    .line 2
    invoke-virtual {p1}, Ltd;->isVisible()Z

    move-result p2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-interface {p0}, LGd;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p1}, Ltd;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    .line 5
    :cond_1
    iget-object p2, p1, Ltd;->A:Ljava/lang/CharSequence;

    :goto_1
    if-eqz p2, :cond_2

    .line 6
    iget-object v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->z:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->z:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->z:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 8
    :cond_2
    iget-object p2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->z:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-eq p2, v0, :cond_3

    iget-object p2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->z:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    :cond_3
    :goto_2
    invoke-virtual {p1}, Ltd;->isCheckable()Z

    move-result p2

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-nez p2, :cond_4

    .line 10
    iget-object v4, p0, Landroid/support/v7/view/menu/ListMenuItemView;->y:Landroid/widget/RadioButton;

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/support/v7/view/menu/ListMenuItemView;->A:Landroid/widget/CheckBox;

    if-nez v4, :cond_4

    goto/16 :goto_7

    .line 11
    :cond_4
    iget-object v4, p0, Landroid/support/v7/view/menu/ListMenuItemView;->w:Ltd;

    .line 12
    iget v4, v4, Ltd;->T:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    const/4 v5, -0x1

    if-eqz v4, :cond_8

    .line 13
    iget-object v4, p0, Landroid/support/v7/view/menu/ListMenuItemView;->y:Landroid/widget/RadioButton;

    if-nez v4, :cond_7

    .line 14
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->a()Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f0e0011

    .line 15
    invoke-virtual {v4, v6, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Landroid/support/v7/view/menu/ListMenuItemView;->y:Landroid/widget/RadioButton;

    .line 16
    iget-object v6, p0, Landroid/support/v7/view/menu/ListMenuItemView;->E:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_6

    .line 17
    invoke-virtual {v6, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_4

    .line 18
    :cond_6
    invoke-virtual {p0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 19
    :cond_7
    :goto_4
    iget-object v4, p0, Landroid/support/v7/view/menu/ListMenuItemView;->y:Landroid/widget/RadioButton;

    .line 20
    iget-object v5, p0, Landroid/support/v7/view/menu/ListMenuItemView;->A:Landroid/widget/CheckBox;

    goto :goto_6

    .line 21
    :cond_8
    iget-object v4, p0, Landroid/support/v7/view/menu/ListMenuItemView;->A:Landroid/widget/CheckBox;

    if-nez v4, :cond_a

    .line 22
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->a()Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f0e000e

    .line 23
    invoke-virtual {v4, v6, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Landroid/support/v7/view/menu/ListMenuItemView;->A:Landroid/widget/CheckBox;

    .line 24
    iget-object v6, p0, Landroid/support/v7/view/menu/ListMenuItemView;->E:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_9

    .line 25
    invoke-virtual {v6, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_5

    .line 26
    :cond_9
    invoke-virtual {p0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 27
    :cond_a
    :goto_5
    iget-object v4, p0, Landroid/support/v7/view/menu/ListMenuItemView;->A:Landroid/widget/CheckBox;

    .line 28
    iget-object v5, p0, Landroid/support/v7/view/menu/ListMenuItemView;->y:Landroid/widget/RadioButton;

    :goto_6
    if-eqz p2, :cond_c

    .line 29
    iget-object p2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->w:Ltd;

    invoke-virtual {p2}, Ltd;->isChecked()Z

    move-result p2

    invoke-virtual {v4, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 30
    invoke-virtual {v4}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_b

    .line 31
    invoke-virtual {v4, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    :cond_b
    if-eqz v5, :cond_e

    .line 32
    invoke-virtual {v5}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result p2

    if-eq p2, v0, :cond_e

    .line 33
    invoke-virtual {v5, v0}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_7

    .line 34
    :cond_c
    iget-object p2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->A:Landroid/widget/CheckBox;

    if-eqz p2, :cond_d

    .line 35
    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 36
    :cond_d
    iget-object p2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->y:Landroid/widget/RadioButton;

    if-eqz p2, :cond_e

    .line 37
    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 38
    :cond_e
    :goto_7
    invoke-virtual {p1}, Ltd;->e()Z

    move-result p2

    invoke-virtual {p1}, Ltd;->b()C

    if-eqz p2, :cond_f

    .line 39
    iget-object p2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->w:Ltd;

    invoke-virtual {p2}, Ltd;->e()Z

    move-result p2

    if-eqz p2, :cond_f

    const/4 p2, 0x0

    goto :goto_8

    :cond_f
    const/16 p2, 0x8

    :goto_8
    if-nez p2, :cond_16

    .line 40
    iget-object v4, p0, Landroid/support/v7/view/menu/ListMenuItemView;->B:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/support/v7/view/menu/ListMenuItemView;->w:Ltd;

    .line 41
    invoke-virtual {v5}, Ltd;->b()C

    move-result v6

    if-nez v6, :cond_10

    const-string v2, ""

    goto/16 :goto_b

    .line 42
    :cond_10
    iget-object v7, v5, Ltd;->J:Lqd;

    .line 43
    iget-object v7, v7, Lqd;->w:Landroid/content/Context;

    .line 44
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 45
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    iget-object v9, v5, Ltd;->J:Lqd;

    .line 47
    iget-object v9, v9, Lqd;->w:Landroid/content/Context;

    .line 48
    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v9

    if-eqz v9, :cond_11

    const v9, 0x7f1300c7

    .line 49
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_11
    iget-object v9, v5, Ltd;->J:Lqd;

    .line 51
    invoke-virtual {v9}, Lqd;->f()Z

    move-result v9

    if-eqz v9, :cond_12

    iget v5, v5, Ltd;->G:I

    goto :goto_9

    :cond_12
    iget v5, v5, Ltd;->E:I

    :goto_9
    const/high16 v9, 0x10000

    const v10, 0x7f1300c3

    .line 52
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 53
    invoke-static {v8, v5, v9, v10}, Ltd;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    const/16 v9, 0x1000

    const v10, 0x7f1300bf

    .line 54
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 55
    invoke-static {v8, v5, v9, v10}, Ltd;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    const/4 v9, 0x2

    const v10, 0x7f1300be

    .line 56
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 57
    invoke-static {v8, v5, v9, v10}, Ltd;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    const v9, 0x7f1300c4

    .line 58
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 59
    invoke-static {v8, v5, v3, v9}, Ltd;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    const v9, 0x7f1300c6

    .line 60
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 61
    invoke-static {v8, v5, v2, v9}, Ltd;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    const v2, 0x7f1300c2

    .line 62
    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-static {v8, v5, v0, v2}, Ltd;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    if-eq v6, v0, :cond_15

    const/16 v2, 0xa

    if-eq v6, v2, :cond_14

    const/16 v2, 0x20

    if-eq v6, v2, :cond_13

    .line 64
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_13
    const v2, 0x7f1300c5

    .line 65
    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_14
    const v2, 0x7f1300c1

    .line 66
    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_15
    const v2, 0x7f1300c0

    .line 67
    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :goto_a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    :goto_b
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_16
    iget-object v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->B:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eq v2, p2, :cond_17

    .line 71
    iget-object v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->B:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    :cond_17
    invoke-virtual {p1}, Ltd;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 73
    iget-object v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->w:Ltd;

    .line 74
    iget-object v2, v2, Ltd;->J:Lqd;

    .line 75
    iget-boolean v2, v2, Lqd;->O:Z

    if-nez v2, :cond_19

    .line 76
    iget-boolean v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->M:Z

    if-eqz v2, :cond_18

    goto :goto_c

    :cond_18
    const/4 v3, 0x0

    :cond_19
    :goto_c
    if-nez v3, :cond_1a

    .line 77
    iget-boolean v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->I:Z

    if-nez v2, :cond_1a

    goto :goto_10

    .line 78
    :cond_1a
    iget-object v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->x:Landroid/widget/ImageView;

    if-nez v2, :cond_1b

    if-nez p2, :cond_1b

    iget-boolean v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->I:Z

    if-nez v2, :cond_1b

    goto :goto_10

    .line 79
    :cond_1b
    iget-object v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->x:Landroid/widget/ImageView;

    if-nez v2, :cond_1d

    .line 80
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->a()Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f0e000f

    .line 81
    invoke-virtual {v2, v4, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->x:Landroid/widget/ImageView;

    .line 82
    iget-object v4, p0, Landroid/support/v7/view/menu/ListMenuItemView;->E:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1c

    .line 83
    invoke-virtual {v4, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_d

    .line 84
    :cond_1c
    invoke-virtual {p0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_1d
    :goto_d
    if-nez p2, :cond_1f

    .line 85
    iget-boolean v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->I:Z

    if-eqz v2, :cond_1e

    goto :goto_e

    .line 86
    :cond_1e
    iget-object p2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->x:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_10

    .line 87
    :cond_1f
    :goto_e
    iget-object v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->x:Landroid/widget/ImageView;

    if-eqz v3, :cond_20

    goto :goto_f

    :cond_20
    const/4 p2, 0x0

    :goto_f
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object p2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->x:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_21

    .line 89
    iget-object p2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->x:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    :cond_21
    :goto_10
    invoke-virtual {p1}, Ltd;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 91
    invoke-virtual {p1}, Ltd;->hasSubMenu()Z

    move-result p2

    .line 92
    iget-object v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->C:Landroid/widget/ImageView;

    if-eqz v2, :cond_23

    if-eqz p2, :cond_22

    const/4 v0, 0x0

    .line 93
    :cond_22
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    :cond_23
    iget-object p1, p1, Ltd;->M:Ljava/lang/CharSequence;

    .line 95
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->D:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->D:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 3
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->D:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Ltd;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->w:Ltd;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->F:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, LA7;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0b0494

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->z:Landroid/widget/TextView;

    .line 4
    iget v1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->G:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 5
    iget-object v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->H:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    const v0, 0x7f0b03e7

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->B:Landroid/widget/TextView;

    const v0, 0x7f0b0442

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->C:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->J:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v0, 0x7f0b01ee

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->D:Landroid/widget/ImageView;

    const v0, 0x7f0b00e9

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->E:Landroid/widget/LinearLayout;

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->x:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->I:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->x:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 4
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_0

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_0

    .line 5
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
