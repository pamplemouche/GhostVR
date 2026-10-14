.class public Landroid/support/v7/preference/SwitchPreferenceCompat;
.super Landroid/support/v7/preference/TwoStatePreference;


# instance fields
.field private final h:Landroid/support/v7/preference/ba;

.field private i:Ljava/lang/CharSequence;

.field private j:Ljava/lang/CharSequence;

.field private final k:Landroid/support/v7/preference/az;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/v7/preference/ao;->switchPreferenceCompatStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/support/v7/preference/ba;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/preference/ba;-><init>(Landroid/support/v7/preference/SwitchPreferenceCompat;Landroid/support/v7/preference/ay;)V

    iput-object v0, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->h:Landroid/support/v7/preference/ba;

    new-instance v0, Landroid/support/v7/preference/az;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/preference/az;-><init>(Landroid/support/v7/preference/SwitchPreferenceCompat;Landroid/support/v7/preference/ay;)V

    iput-object v0, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->k:Landroid/support/v7/preference/az;

    sget-object v0, Landroid/support/v7/preference/at;->SwitchPreferenceCompat:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Landroid/support/v7/preference/at;->SwitchPreferenceCompat_summaryOn:I

    sget p3, Landroid/support/v7/preference/at;->SwitchPreferenceCompat_android_summaryOn:I

    invoke-static {p1, p2, p3}, Landroid/support/v4/a/a/w;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->e(Ljava/lang/CharSequence;)V

    sget p2, Landroid/support/v7/preference/at;->SwitchPreferenceCompat_summaryOff:I

    sget p3, Landroid/support/v7/preference/at;->SwitchPreferenceCompat_android_summaryOff:I

    invoke-static {p1, p2, p3}, Landroid/support/v4/a/a/w;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->f(Ljava/lang/CharSequence;)V

    sget p2, Landroid/support/v7/preference/at;->SwitchPreferenceCompat_switchTextOn:I

    sget p3, Landroid/support/v7/preference/at;->SwitchPreferenceCompat_android_switchTextOn:I

    invoke-static {p1, p2, p3}, Landroid/support/v4/a/a/w;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->c(Ljava/lang/CharSequence;)V

    sget p2, Landroid/support/v7/preference/at;->SwitchPreferenceCompat_switchTextOff:I

    sget p3, Landroid/support/v7/preference/at;->SwitchPreferenceCompat_android_switchTextOff:I

    invoke-static {p1, p2, p3}, Landroid/support/v4/a/a/w;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->d(Ljava/lang/CharSequence;)V

    sget p2, Landroid/support/v7/preference/at;->SwitchPreferenceCompat_disableDependentsState:I

    sget p3, Landroid/support/v7/preference/at;->SwitchPreferenceCompat_android_disableDependentsState:I

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/a/a/w;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->g(Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->J()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x1020040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->d(Landroid/view/View;)V

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->b(Landroid/view/View;)V

    return-void
.end method

.method private d(Landroid/view/View;)V
    .locals 4

    instance-of v0, p1, Landroid/support/v7/widget/SwitchCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    instance-of v2, p1, Landroid/widget/Checkable;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Landroid/widget/Checkable;

    iget-boolean v3, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->g:Z

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_1
    if-eqz v0, :cond_3

    check-cast p1, Landroid/support/v7/widget/SwitchCompat;

    iget-object v0, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->i:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setTextOn(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->j:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setTextOff(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->h:Landroid/support/v7/preference/ba;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/SwitchCompat;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->k:Landroid/support/v7/preference/az;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->y()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p0, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;

    if-nez v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/SwitchCompat;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setClickable(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/am;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/preference/TwoStatePreference;->a(Landroid/support/v7/preference/am;)V

    const v0, 0x1020040

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/am;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->d(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->b(Landroid/support/v7/preference/am;)V

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/preference/TwoStatePreference;->a(Landroid/view/View;)V

    invoke-direct {p0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->c(Landroid/view/View;)V

    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->i:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->i()V

    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->j:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->i()V

    return-void
.end method
