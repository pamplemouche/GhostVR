.class public Lg20;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, LqU;->a()LqU;

    move-result-object v0

    .line 3
    :try_start_0
    sget-object v1, LzT;->a:Landroid/content/Context;

    const-string v2, "trusted_web_activity_client_apps"

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lg20;->a:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 5
    invoke-static {v1, v0}, Lg20;->a(Ljava/lang/Throwable;LqU;)V

    .line 6
    sget-object v0, LFW;->i:LFW;

    new-instance v1, Lf20;

    invoke-direct {v1, p0}, Lf20;-><init>(Lg20;)V

    const-wide/16 v2, 0x0

    .line 7
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    .line 9
    invoke-static {v1, v0}, Lg20;->a(Ljava/lang/Throwable;LqU;)V

    throw v2
.end method

.method public static synthetic a(Ljava/lang/Throwable;LqU;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, LqU;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    sget-object v0, LRB;->a:LLB;

    invoke-virtual {v0, p0, p1}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, LqU;->close()V

    :goto_0
    return-void
.end method
