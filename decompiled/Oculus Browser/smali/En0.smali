.class public abstract LEn0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(I)V
    .locals 2

    .line 1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefetch_notification_offline_counter"

    .line 2
    invoke-static {v0, v1, p0}, LZi;->b(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method
