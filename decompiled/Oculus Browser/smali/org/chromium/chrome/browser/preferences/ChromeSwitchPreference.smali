.class public Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;
.super LIc;
.source "PG"


# instance fields
.field public q0:Lqy0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LIc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(LGc;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, LIc;->a(LGc;)V

    const v0, 0x1020016

    .line 2
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 4
    iget-object v2, p0, Landroid/support/v7/preference/Preference;->E:Ljava/lang/CharSequence;

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x1020010

    .line 6
    invoke-virtual {p1, v2}, LGc;->c(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 7
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x8

    .line 9
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->q0:Lqy0;

    iget-object p1, p1, Ldh;->w:Landroid/view/View;

    invoke-static {v0, p0, p1}, Lsy0;->a(Lqy0;Landroid/support/v7/preference/Preference;Landroid/view/View;)V

    return-void
.end method

.method public r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->q0:Lqy0;

    invoke-static {v0, p0}, Lsy0;->c(Lqy0;Landroid/support/v7/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, LKc;->r()V

    return-void
.end method
