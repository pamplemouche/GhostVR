.class public LKy0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/preferences/SpinnerPreference;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/SpinnerPreference;)V
    .locals 0

    .line 1
    iput-object p1, p0, LKy0;->w:Lorg/chromium/chrome/browser/preferences/SpinnerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, LKy0;->w:Lorg/chromium/chrome/browser/preferences/SpinnerPreference;

    .line 2
    iput p3, p1, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->k0:I

    .line 3
    iget-object p2, p1, Landroid/support/v7/preference/Preference;->A:Llc;

    if-eqz p2, :cond_1

    .line 4
    iget-object p4, p1, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->i0:Landroid/widget/Spinner;

    if-nez p4, :cond_0

    .line 5
    iget-object p4, p1, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->j0:Landroid/widget/ArrayAdapter;

    invoke-virtual {p4, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p3

    .line 7
    :goto_0
    invoke-interface {p2, p1, p3}, Llc;->a(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
