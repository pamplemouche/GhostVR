.class public Lorg/chromium/chrome/browser/preferences/LearnMorePreference;
.super Landroid/support/v7/preference/Preference;
.source "PG"


# instance fields
.field public final i0:I

.field public final j0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    sget-object v0, LeS;->b0:[I

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 4
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/preferences/LearnMorePreference;->i0:I

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060093

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 7
    iput p1, p0, Lorg/chromium/chrome/browser/preferences/LearnMorePreference;->j0:I

    .line 8
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const p1, 0x7f130396

    .line 9
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->d(I)V

    .line 10
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/Preference;->d(Z)V

    .line 11
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/Preference;->e(Z)V

    return-void
.end method


# virtual methods
.method public a(LGc;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(LGc;)V

    const v0, 0x1020016

    .line 2
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 4
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/LearnMorePreference;->j0:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    new-instance v0, Ljy0;

    invoke-direct {v0, p0}, Ljy0;-><init>(Lorg/chromium/chrome/browser/preferences/LearnMorePreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public r()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 2
    invoke-static {v0}, LzT;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 3
    invoke-static {}, Lue0;->a()Lue0;

    move-result-object v1

    iget v2, p0, Lorg/chromium/chrome/browser/preferences/LearnMorePreference;->i0:I

    .line 4
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v3

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v1, v0, v2, v3, v4}, Lue0;->a(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    return-void
.end method
