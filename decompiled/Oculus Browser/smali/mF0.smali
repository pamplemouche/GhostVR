.class public final synthetic LmF0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LyF0;


# instance fields
.field public final a:LpF0;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(LpF0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LmF0;->a:LpF0;

    iput-object p2, p0, LmF0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, LmF0;->a:LpF0;

    iget-object v1, p0, LmF0;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1
    sget-object v3, LyT;->a:Landroid/content/SharedPreferences;

    .line 2
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "prefs_sync_account_renamed"

    .line 3
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5
    invoke-static {v1}, Lorg/chromium/components/signin/AccountManagerFacade;->c(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 6
    iget-object v2, v0, LpF0;->b:Lorg/chromium/chrome/browser/signin/SigninManager;

    new-instance v3, LoF0;

    invoke-direct {v3, v0}, LoF0;-><init>(LpF0;)V

    invoke-virtual {v2, v1, v3}, Lorg/chromium/chrome/browser/signin/SigninManager;->a(Landroid/accounts/Account;LvF0;)V

    return-void

    .line 7
    :cond_0
    throw v2
.end method

.method public b()V
    .locals 0

    return-void
.end method
