.class public abstract LQe0;
.super Landroid/app/IntentService;
.source "PG"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LQe0;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lpm0;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, LQe0;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.android.apps.chrome.incognito.CLOSE_ALL_INCOGNITO"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    .line 3
    invoke-static {p0, v1, v0, v2}, Lpm0;->b(Landroid/content/Context;ILandroid/content/Intent;I)Lpm0;

    move-result-object p0

    return-object p0
.end method
