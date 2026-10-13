.class public final synthetic LBF0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:LGF0;

.field public final x:LFF0;


# direct methods
.method public constructor <init>(LGF0;LFF0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LBF0;->w:LGF0;

    iput-object p2, p0, LBF0;->x:LFF0;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, LBF0;->w:LGF0;

    iget-object v0, p0, LBF0;->x:LFF0;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, p1, LGF0;->r:Z

    .line 2
    iget-object v2, p1, LGF0;->n:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, LGF0;->a()I

    move-result p1

    .line 4
    invoke-static {v2, p1}, LfV;->b(Ljava/lang/String;I)V

    .line 5
    check-cast v0, LuB0;

    .line 6
    iget-object p1, v0, LuB0;->a:Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;

    if-eqz p1, :cond_0

    .line 7
    sget-object v0, Lay0;->a:Lcy0;

    .line 8
    iget-object v0, v0, Lcy0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "settings_personalized_signin_promo_dismissed"

    .line 9
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 11
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/sync/SignInPreference;->A()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 12
    throw p1
.end method
