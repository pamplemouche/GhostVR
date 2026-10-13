.class public final synthetic Lzo0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LnU;


# direct methods
.method public constructor <init>(LnU;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzo0;->w:LnU;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lzo0;->w:LnU;

    .line 1
    invoke-static {}, LKn0;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "UpdateProtos_Tracking"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    .line 2
    :try_start_0
    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 3
    sget-object v3, LIo0;->F:LIo0;

    invoke-static {v3, v1}, LTF;->a(LTF;[B)LTF;

    move-result-object v1

    check-cast v1, LIo0;
    :try_end_0
    .catch LdG; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v1, v2

    .line 4
    :goto_0
    sget-object v2, LZ01;->a:LFW;

    new-instance v3, LCo0;

    invoke-direct {v3, v0, v1}, LCo0;-><init>(LnU;LIo0;)V

    const-wide/16 v0, 0x0

    .line 5
    invoke-static {v2, v3, v0, v1}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method
