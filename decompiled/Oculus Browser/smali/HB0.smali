.class public final synthetic LHB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LHB0;->w:Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, LHB0;->w:Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;

    .line 1
    iget-object v0, p1, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->l0:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2
    iget v0, p1, Lorg/chromium/chrome/browser/preferences/themes/RadioButtonGroupThemePreference;->i0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/Object;)Z

    return-void
.end method
