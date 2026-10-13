.class public abstract LZb;
.super LKc;
.source "PG"


# instance fields
.field public final n0:LYb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const v0, 0x7f040068

    const v1, 0x101008f

    .line 1
    invoke-static {p1, v0, v1}, Lm4;->a(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v1}, LKc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3
    new-instance v2, LYb;

    invoke-direct {v2, p0}, LYb;-><init>(LZb;)V

    iput-object v2, p0, LZb;->n0:LYb;

    .line 4
    sget-object v2, LeS;->G:[I

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x5

    .line 5
    invoke-static {p1, p2, v1}, Lm4;->a(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, LKc;->d(Ljava/lang/CharSequence;)V

    const/4 p2, 0x4

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 8
    :cond_0
    invoke-virtual {p0, p2}, LKc;->c(Ljava/lang/CharSequence;)V

    const/4 p2, 0x3

    const/4 v0, 0x2

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 10
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 11
    iput-boolean p2, p0, LKc;->m0:Z

    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(LGc;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(LGc;)V

    const v0, 0x1020001

    .line 2
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, LZb;->c(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0, p1}, LKc;->b(LGc;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .line 4
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 7
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x1020001

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, LZb;->c(Landroid/view/View;)V

    const v0, 0x1020010

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, LKc;->b(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 2
    move-object v1, p1

    check-cast v1, Landroid/widget/CompoundButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3
    :cond_0
    instance-of v1, p1, Landroid/widget/Checkable;

    if-eqz v1, :cond_1

    .line 4
    move-object v1, p1

    check-cast v1, Landroid/widget/Checkable;

    iget-boolean v2, p0, LKc;->k0:Z

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_1
    if-eqz v0, :cond_2

    .line 5
    check-cast p1, Landroid/widget/CompoundButton;

    iget-object v0, p0, LZb;->n0:LYb;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    return-void
.end method
