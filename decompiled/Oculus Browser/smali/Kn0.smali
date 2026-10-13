.class public abstract LKn0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LMn0;


# direct methods
.method public constructor <init>(LMn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LKn0;->a:LMn0;

    return-void
.end method

.method public static b()Landroid/content/SharedPreferences;
    .locals 3

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    const-string v1, "com.google.android.apps.chrome.omaha"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, LKn0;->a:LMn0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    move-object v2, v0

    check-cast v2, LNn0;

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    iput-object v1, v0, LMn0;->a:LRn0;

    return-void

    .line 5
    :cond_0
    throw v1

    .line 6
    :cond_1
    throw v1
.end method
