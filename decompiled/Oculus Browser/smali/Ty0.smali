.class public LTy0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqy0;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/autofill/AutofillPaymentMethodsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    .line 1
    invoke-static {}, LJ/N;->MbTLtWkf()Z

    move-result p1

    return p1
.end method

.method public b(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    .line 1
    invoke-static {}, LJ/N;->MbTLtWkf()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->b()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
