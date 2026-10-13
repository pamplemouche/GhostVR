.class public Lorg/chromium/chrome/browser/preferences/ButtonPreference;
.super Landroid/support/v7/preference/Preference;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0e0050

    .line 2
    iput p1, p0, Landroid/support/v7/preference/Preference;->b0:I

    const p1, 0x7f0e004f

    .line 3
    iput p1, p0, Landroid/support/v7/preference/Preference;->c0:I

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->d(Z)V

    return-void
.end method


# virtual methods
.method public a(LGc;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(LGc;)V

    const v0, 0x7f0b0095

    .line 2
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 3
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->E:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 5
    new-instance v0, LWx0;

    invoke-direct {v0, p0}, LWx0;-><init>(Lorg/chromium/chrome/browser/preferences/ButtonPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
