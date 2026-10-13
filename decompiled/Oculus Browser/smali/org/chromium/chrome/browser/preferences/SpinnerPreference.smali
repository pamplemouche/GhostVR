.class public Lorg/chromium/chrome/browser/preferences/SpinnerPreference;
.super Landroid/support/v7/preference/Preference;
.source "PG"


# instance fields
.field public i0:Landroid/widget/Spinner;

.field public j0:Landroid/widget/ArrayAdapter;

.field public k0:I

.field public final l0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    sget-object v0, LeS;->I0:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->l0:Z

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->l0:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0e0176

    .line 6
    iput p1, p0, Landroid/support/v7/preference/Preference;->b0:I

    goto :goto_0

    :cond_0
    const p1, 0x7f0e0175

    .line 7
    iput p1, p0, Landroid/support/v7/preference/Preference;->b0:I

    :goto_0
    return-void
.end method


# virtual methods
.method public a(LGc;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(LGc;)V

    const v0, 0x7f0b0494

    .line 2
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->E:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b041d

    .line 5
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->i0:Landroid/widget/Spinner;

    .line 6
    new-instance v0, LKy0;

    invoke-direct {v0, p0}, LKy0;-><init>(Lorg/chromium/chrome/browser/preferences/SpinnerPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 7
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->i0:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->j0:Landroid/widget/ArrayAdapter;

    if-eq p1, v0, :cond_0

    .line 8
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->i0:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 9
    :cond_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->i0:Landroid/widget/Spinner;

    iget v0, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->k0:I

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method
