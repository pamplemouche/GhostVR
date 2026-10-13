.class public abstract LIc;
.super LKc;
.source "PG"


# instance fields
.field public final n0:LHc;

.field public o0:Ljava/lang/CharSequence;

.field public p0:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7f040213

    .line 1
    invoke-direct {p0, p1, p2, v1, v0}, LKc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    new-instance v2, LHc;

    invoke-direct {v2, p0}, LHc;-><init>(LIc;)V

    iput-object v2, p0, LIc;->n0:LHc;

    .line 3
    sget-object v2, LeS;->K0:[I

    invoke-virtual {p1, p2, v2, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x7

    .line 4
    invoke-static {p1, p2, v0}, Lm4;->a(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, LKc;->d(Ljava/lang/CharSequence;)V

    const/4 p2, 0x6

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 7
    :cond_0
    invoke-virtual {p0, p2}, LKc;->c(Ljava/lang/CharSequence;)V

    const/16 p2, 0x9

    const/4 v1, 0x3

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    .line 9
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 10
    :cond_1
    iput-object p2, p0, LIc;->o0:Ljava/lang/CharSequence;

    .line 11
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->o()V

    const/16 p2, 0x8

    const/4 v1, 0x4

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 13
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 14
    :cond_2
    iput-object p2, p0, LIc;->p0:Ljava/lang/CharSequence;

    .line 15
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->o()V

    const/4 p2, 0x5

    const/4 v1, 0x2

    .line 16
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 17
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 18
    iput-boolean p2, p0, LKc;->m0:Z

    .line 19
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(LGc;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(LGc;)V

    const v0, 0x7f0b0450

    .line 2
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, LIc;->c(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0, p1}, LKc;->b(LGc;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .line 5
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 8
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0b0450

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, LIc;->c(Landroid/view/View;)V

    const v0, 0x1020010

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, LKc;->b(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/support/v7/widget/SwitchCompat;

    if-eqz v0, :cond_0

    .line 2
    move-object v1, p1

    check-cast v1, Landroid/support/v7/widget/SwitchCompat;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4
    :cond_0
    instance-of v1, p1, Landroid/widget/Checkable;

    if-eqz v1, :cond_1

    .line 5
    move-object v1, p1

    check-cast v1, Landroid/widget/Checkable;

    iget-boolean v2, p0, LKc;->k0:Z

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_1
    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Landroid/support/v7/widget/SwitchCompat;

    .line 7
    iget-object v0, p0, LIc;->o0:Ljava/lang/CharSequence;

    .line 8
    iput-object v0, p1, Landroid/support/v7/widget/SwitchCompat;->K:Ljava/lang/CharSequence;

    .line 9
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->requestLayout()V

    .line 10
    iget-object v0, p0, LIc;->p0:Ljava/lang/CharSequence;

    .line 11
    iput-object v0, p1, Landroid/support/v7/widget/SwitchCompat;->L:Ljava/lang/CharSequence;

    .line 12
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->requestLayout()V

    .line 13
    iget-object v0, p0, LIc;->n0:LHc;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    return-void
.end method
