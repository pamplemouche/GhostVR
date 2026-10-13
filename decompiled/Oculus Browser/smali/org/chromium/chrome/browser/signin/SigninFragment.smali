.class public Lorg/chromium/chrome/browser/signin/SigninFragment;
.super LjF0;
.source "PG"


# instance fields
.field public P0:I

.field public Q0:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/signin/SigninFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LjF0;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x2

    const-string v2, "SigninFragmentBase.SigninFlowType"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "SigninFragmentBase.AccountName"

    .line 3
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SigninFragment.AccessPoint"

    .line 4
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "SigninFragment.PersonalizedPromoAction"

    .line 5
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static b(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 19
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "SigninFragmentBase.SigninFlowType"

    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "SigninFragmentBase.AccountName"

    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SigninFragment.AccessPoint"

    .line 22
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "SigninFragment.PersonalizedPromoAction"

    const/4 p1, 0x1

    .line 23
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static g(I)Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "SigninFragmentBase.SigninFlowType"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "SigninFragmentBase.AccountName"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SigninFragment.AccessPoint"

    .line 4
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static h(I)Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x3

    const-string v2, "SigninFragmentBase.SigninFlowType"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "SigninFragment.AccessPoint"

    .line 3
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "SigninFragment.PersonalizedPromoAction"

    .line 4
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public b(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, LjF0;->b(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lz2;->C:Landroid/os/Bundle;

    const-string v0, "SigninFragment.AccessPoint"

    const/4 v1, -0x1

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 4
    iput p1, p0, Lorg/chromium/chrome/browser/signin/SigninFragment;->P0:I

    .line 5
    iget-object p1, p0, Lz2;->C:Landroid/os/Bundle;

    const-string v0, "SigninFragment.PersonalizedPromoAction"

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/chromium/chrome/browser/signin/SigninFragment;->Q0:I

    .line 7
    iget p1, p0, Lorg/chromium/chrome/browser/signin/SigninFragment;->P0:I

    const/16 v0, 0x1c

    const-string v1, "Signin.SigninStartedAccessPoint"

    .line 8
    invoke-static {v1, p1, v0}, LfV;->a(Ljava/lang/String;II)V

    .line 9
    sput p1, Lorg/chromium/chrome/browser/signin/SigninManager;->m:I

    .line 10
    iget p1, p0, Lorg/chromium/chrome/browser/signin/SigninFragment;->Q0:I

    const/4 v1, 0x3

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "Signin.SigninStartedAccessPoint.NewAccountNoExistingAccount"

    goto :goto_0

    :cond_1
    const-string p1, "Signin.SigninStartedAccessPoint.NotDefault"

    goto :goto_0

    :cond_2
    const-string p1, "Signin.SigninStartedAccessPoint.WithDefault"

    .line 11
    :goto_0
    iget v2, p0, Lorg/chromium/chrome/browser/signin/SigninFragment;->P0:I

    invoke-static {p1, v2, v0}, LfV;->a(Ljava/lang/String;II)V

    .line 12
    :cond_3
    :goto_1
    iget p1, p0, Lorg/chromium/chrome/browser/signin/SigninFragment;->P0:I

    if-eq p1, v1, :cond_9

    const/16 v0, 0x9

    if-eq p1, v0, :cond_8

    const/16 v0, 0xf

    if-eq p1, v0, :cond_7

    const/16 v0, 0x10

    if-eq p1, v0, :cond_6

    const/16 v0, 0x13

    if-eq p1, v0, :cond_5

    const/16 v0, 0x14

    if-eq p1, v0, :cond_4

    goto :goto_2

    :cond_4
    const-string p1, "Signin_Signin_FromNTPContentSuggestions"

    .line 13
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string p1, "Signin_Signin_FromAutofillDropdown"

    .line 14
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string p1, "Signin_Signin_FromRecentTabs"

    .line 15
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string p1, "Signin_Signin_FromSigninPromo"

    .line 16
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string p1, "Signin_Signin_FromBookmarkManager"

    .line 17
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string p1, "Signin_Signin_FromSettings"

    .line 18
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
