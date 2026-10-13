.class public LGF0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:LGE0;

.field public b:LFk0;

.field public final c:LMk0;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:I

.field public final p:I

.field public q:Z

.field public r:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LMk0;

    new-instance v1, LAF0;

    invoke-direct {v1, p0}, LAF0;-><init>(LGF0;)V

    invoke-direct {v0, v1}, LMk0;-><init>(LEk0;)V

    iput-object v0, p0, LGF0;->c:LMk0;

    .line 3
    iput p1, p0, LGF0;->d:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 4
    iput-object v1, p0, LGF0;->e:Ljava/lang/String;

    const-string p1, "Signin_Impression_FromNTPContentSuggestions"

    .line 5
    iput-object p1, p0, LGF0;->f:Ljava/lang/String;

    const-string p1, "Signin_ImpressionWithAccount_FromNTPContentSuggestions"

    .line 6
    iput-object p1, p0, LGF0;->g:Ljava/lang/String;

    const-string p1, "Signin_ImpressionWithNoAccount_FromNTPContentSuggestions"

    .line 7
    iput-object p1, p0, LGF0;->h:Ljava/lang/String;

    const-string p1, "Signin_SigninWithDefault_FromNTPContentSuggestions"

    .line 8
    iput-object p1, p0, LGF0;->i:Ljava/lang/String;

    const-string p1, "Signin_SigninNotDefault_FromNTPContentSuggestions"

    .line 9
    iput-object p1, p0, LGF0;->j:Ljava/lang/String;

    const-string p1, "Signin_SigninNewAccountNoExistingAccount_FromNTPContentSuggestions"

    .line 10
    iput-object p1, p0, LGF0;->k:Ljava/lang/String;

    .line 11
    iput-object v1, p0, LGF0;->l:Ljava/lang/String;

    .line 12
    iput-object v1, p0, LGF0;->m:Ljava/lang/String;

    .line 13
    iput-object v1, p0, LGF0;->n:Ljava/lang/String;

    const p1, 0x7f13059a

    .line 14
    iput p1, p0, LGF0;->o:I

    const p1, 0x7f13059b

    .line 15
    iput p1, p0, LGF0;->p:I

    goto/16 :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected value for access point: "

    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LGF0;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_1
    iput-object v1, p0, LGF0;->e:Ljava/lang/String;

    const-string p1, "Signin_Impression_FromRecentTabs"

    .line 18
    iput-object p1, p0, LGF0;->f:Ljava/lang/String;

    const-string p1, "Signin_ImpressionWithAccount_FromRecentTabs"

    .line 19
    iput-object p1, p0, LGF0;->g:Ljava/lang/String;

    const-string p1, "Signin_ImpressionWithNoAccount_FromRecentTabs"

    .line 20
    iput-object p1, p0, LGF0;->h:Ljava/lang/String;

    const-string p1, "Signin_SigninWithDefault_FromRecentTabs"

    .line 21
    iput-object p1, p0, LGF0;->i:Ljava/lang/String;

    const-string p1, "Signin_SigninNotDefault_FromRecentTabs"

    .line 22
    iput-object p1, p0, LGF0;->j:Ljava/lang/String;

    const-string p1, "Signin_SigninNewAccountNoExistingAccount_FromRecentTabs"

    .line 23
    iput-object p1, p0, LGF0;->k:Ljava/lang/String;

    .line 24
    iput-object v1, p0, LGF0;->l:Ljava/lang/String;

    .line 25
    iput-object v1, p0, LGF0;->m:Ljava/lang/String;

    .line 26
    iput-object v1, p0, LGF0;->n:Ljava/lang/String;

    const p1, 0x7f13059c

    .line 27
    iput p1, p0, LGF0;->o:I

    const p1, 0x7f13059d

    .line 28
    iput p1, p0, LGF0;->p:I

    goto :goto_0

    :cond_2
    const-string p1, "signin_promo_impressions_count_bookmarks"

    .line 29
    iput-object p1, p0, LGF0;->e:Ljava/lang/String;

    const-string p1, "Signin_Impression_FromBookmarkManager"

    .line 30
    iput-object p1, p0, LGF0;->f:Ljava/lang/String;

    const-string p1, "Signin_ImpressionWithAccount_FromBookmarkManager"

    .line 31
    iput-object p1, p0, LGF0;->g:Ljava/lang/String;

    const-string p1, "Signin_ImpressionWithNoAccount_FromBookmarkManager"

    .line 32
    iput-object p1, p0, LGF0;->h:Ljava/lang/String;

    const-string p1, "Signin_SigninWithDefault_FromBookmarkManager"

    .line 33
    iput-object p1, p0, LGF0;->i:Ljava/lang/String;

    const-string p1, "Signin_SigninNotDefault_FromBookmarkManager"

    .line 34
    iput-object p1, p0, LGF0;->j:Ljava/lang/String;

    const-string p1, "Signin_SigninNewAccountNoExistingAccount_FromBookmarkManager"

    .line 35
    iput-object p1, p0, LGF0;->k:Ljava/lang/String;

    const-string p1, "MobileSignInPromo.BookmarkManager.ImpressionsTilDismiss"

    .line 36
    iput-object p1, p0, LGF0;->l:Ljava/lang/String;

    const-string p1, "MobileSignInPromo.BookmarkManager.ImpressionsTilSigninButtons"

    .line 37
    iput-object p1, p0, LGF0;->m:Ljava/lang/String;

    const-string p1, "MobileSignInPromo.BookmarkManager.ImpressionsTilXButton"

    .line 38
    iput-object p1, p0, LGF0;->n:Ljava/lang/String;

    const p1, 0x7f130598

    .line 39
    iput p1, p0, LGF0;->o:I

    const p1, 0x7f130599

    .line 40
    iput p1, p0, LGF0;->p:I

    goto :goto_0

    :cond_3
    const-string p1, "signin_promo_impressions_count_settings"

    .line 41
    iput-object p1, p0, LGF0;->e:Ljava/lang/String;

    const-string p1, "Signin_Impression_FromSettings"

    .line 42
    iput-object p1, p0, LGF0;->f:Ljava/lang/String;

    const-string p1, "Signin_ImpressionWithAccount_FromSettings"

    .line 43
    iput-object p1, p0, LGF0;->g:Ljava/lang/String;

    const-string p1, "Signin_SigninWithDefault_FromSettings"

    .line 44
    iput-object p1, p0, LGF0;->i:Ljava/lang/String;

    const-string p1, "Signin_SigninNotDefault_FromSettings"

    .line 45
    iput-object p1, p0, LGF0;->j:Ljava/lang/String;

    const-string p1, "Signin_SigninNewAccountNoExistingAccount_FromSettings"

    .line 46
    iput-object p1, p0, LGF0;->k:Ljava/lang/String;

    const-string p1, "Signin_ImpressionWithNoAccount_FromSettings"

    .line 47
    iput-object p1, p0, LGF0;->h:Ljava/lang/String;

    const-string p1, "MobileSignInPromo.SettingsManager.ImpressionsTilDismiss"

    .line 48
    iput-object p1, p0, LGF0;->l:Ljava/lang/String;

    const-string p1, "MobileSignInPromo.SettingsManager.ImpressionsTilSigninButtons"

    .line 49
    iput-object p1, p0, LGF0;->m:Ljava/lang/String;

    const-string p1, "MobileSignInPromo.SettingsManager.ImpressionsTilXButton"

    .line 50
    iput-object p1, p0, LGF0;->n:Ljava/lang/String;

    const p1, 0x7f13059e

    .line 51
    iput p1, p0, LGF0;->o:I

    const p1, 0x7f13059f

    .line 52
    iput p1, p0, LGF0;->p:I

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    .line 1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    .line 2
    iget-object v1, p0, LGF0;->e:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/content/Context;Lorg/chromium/chrome/browser/signin/PersonalizedSigninPromoView;I)V
    .locals 2

    .line 3
    iget-object v0, p2, Lorg/chromium/chrome/browser/signin/PersonalizedSigninPromoView;->w:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7
    iget-object p1, p2, Lorg/chromium/chrome/browser/signin/PersonalizedSigninPromoView;->w:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, LGF0;->r:Z

    .line 2
    iget-object v0, p0, LGF0;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, LGF0;->a()I

    move-result v1

    .line 4
    invoke-static {v0, v1}, LfV;->b(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
