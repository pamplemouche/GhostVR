.class public Lbz0;
.super Landroid/support/v7/preference/Preference;
.source "PG"


# instance fields
.field public final i0:Landroid/app/Activity;

.field public final j0:LZQ0;

.field public k0:LNQ0;

.field public l0:Lju0;

.field public m0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    iput-object p1, p0, Lbz0;->i0:Landroid/app/Activity;

    .line 3
    iput-object v0, p0, Lbz0;->j0:LZQ0;

    return-void
.end method


# virtual methods
.method public r()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "guid"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbz0;->m0:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lbz0;->l0:Lju0;

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lju0;

    iget-object v1, p0, Lbz0;->i0:Landroid/app/Activity;

    .line 5
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v2

    iget-object v3, p0, Lbz0;->m0:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a(Ljava/lang/String;)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lju0;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)V

    iput-object v0, p0, Lbz0;->l0:Lju0;

    .line 6
    new-instance v1, LZy0;

    invoke-direct {v1, p0}, LZy0;-><init>(Lbz0;)V

    .line 7
    :cond_0
    new-instance v0, LNQ0;

    iget-object v2, p0, Lbz0;->i0:Landroid/app/Activity;

    invoke-direct {v0, v2, v1}, LNQ0;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lbz0;->k0:LNQ0;

    .line 8
    new-instance v0, LUt0;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LUt0;-><init>(IZ)V

    .line 9
    iget-object v1, p0, Lbz0;->k0:LNQ0;

    invoke-virtual {v0, v1}, LDQ0;->a(LNQ0;)V

    .line 10
    iget-object v1, p0, Lbz0;->l0:Lju0;

    new-instance v2, Laz0;

    invoke-direct {v2, p0}, Laz0;-><init>(Lbz0;)V

    invoke-virtual {v0, v1, v2}, LUt0;->a(Lju0;Lorg/chromium/base/Callback;)V

    return-void
.end method
