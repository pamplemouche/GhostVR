.class public Landroid/support/v7/preference/SeslSwitchPreferenceScreen;
.super Landroid/support/v7/preference/SwitchPreferenceCompat;


# instance fields
.field private h:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/v7/preference/ao;->switchPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/support/v7/preference/ax;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/ax;-><init>(Landroid/support/v7/preference/SeslSwitchPreferenceScreen;)V

    iput-object v0, p0, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;->h:Landroid/view/View$OnKeyListener;

    sget-object v0, Landroid/support/v7/preference/at;->Preference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Landroid/support/v7/preference/at;->Preference_android_fragment:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const-string p2, "SwitchPreferenceScreen"

    const-string p3, "SwitchPreferenceScreen should get fragment property. Fragment property does not exsit in SwitchPreferenceScreen"

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget p2, Landroid/support/v7/preference/ar;->sesl_switch_preference_screen:I

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;->a(I)V

    sget p2, Landroid/support/v7/preference/ar;->sesl_switch_preference_screen_widget_divider:I

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;->b(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected H()V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v7/preference/am;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->a(Landroid/support/v7/preference/am;)V

    iget-object v0, p1, Landroid/support/v7/preference/am;->d:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;->h:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/am;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x1020040

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/am;->a(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/support/v4/widget/az;->a()I

    move-result v1

    invoke-static {p1, v1}, Landroid/support/v4/view/aw;->d(Landroid/view/View;I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected g()V
    .locals 0

    return-void
.end method
