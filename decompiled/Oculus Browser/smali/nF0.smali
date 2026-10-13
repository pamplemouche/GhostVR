.class public LnF0;
.super LkW;
.source "PG"


# instance fields
.field public final synthetic a:LpF0;


# direct methods
.method public constructor <init>(LpF0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LnF0;->a:LpF0;

    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, LpF0;->d()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    sget-object p1, LyT;->a:Landroid/content/SharedPreferences;

    const-string v0, "prefs_sync_account_renamed"

    const/4 v1, 0x0

    .line 3
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, LnF0;->a:LpF0;

    .line 5
    iget-object p1, p1, LpF0;->b:Lorg/chromium/chrome/browser/signin/SigninManager;

    .line 6
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/signin/SigninManager;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, LnF0;->a:LpF0;

    .line 8
    iget-object p1, p1, LpF0;->b:Lorg/chromium/chrome/browser/signin/SigninManager;

    const/16 v0, 0x9

    .line 9
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->a(I)V

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    iget-object p1, p0, LnF0;->a:LpF0;

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, LpF0;->a(Z)V

    :goto_1
    return-void
.end method
