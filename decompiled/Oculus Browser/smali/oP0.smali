.class public final synthetic LoP0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/chrome/browser/webapps/WebApkUpdateManager$WebApkUpdateCallback;


# instance fields
.field public final a:LwP0;

.field public final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(LwP0;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LoP0;->a:LwP0;

    iput-object p2, p0, LoP0;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onResultFromNative(IZ)V
    .locals 7

    iget-object v0, p0, LoP0;->a:LwP0;

    iget-object v1, p0, LoP0;->b:Ljava/lang/Runnable;

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v2}, LwP0;->a(Z)V

    .line 2
    iget-object v3, v0, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v4, "update_scheduled"

    invoke-static {v3, v4, v2}, LZi;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 3
    iget-object v3, v0, LwP0;->b:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "last_update_request_complete_time"

    .line 5
    invoke-interface {v3, v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 6
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez p1, :cond_0

    const/4 v2, 0x1

    .line 7
    :cond_0
    iget-object p1, v0, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v3, "did_last_update_request_succeed"

    invoke-static {p1, v3, v2}, LZi;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 8
    iget-object p1, v0, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v2, "relax_updates"

    invoke-static {p1, v2, p2}, LZi;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    const/16 p1, 0x74

    .line 9
    iget-object p2, v0, LwP0;->b:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v2, "last_requested_shell_apk_version"

    invoke-interface {p2, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 10
    invoke-virtual {v0}, LwP0;->a()V

    .line 11
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
