.class public Lorg/chromium/chrome/browser/preferences/TextAndButtonPreference;
.super Landroid/support/v7/preference/Preference;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->d(Z)V

    return-void
.end method


# virtual methods
.method public a(LGc;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(LGc;)V

    const v0, 0x7f0b035a

    .line 2
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 4
    new-instance v0, LLy0;

    invoke-direct {v0, p0}, LLy0;-><init>(Lorg/chromium/chrome/browser/preferences/TextAndButtonPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
