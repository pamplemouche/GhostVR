.class public LND0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LUU0;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, LND0;->d:Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;

    iput-object p2, p0, LND0;->a:Ljava/lang/String;

    iput-object p3, p0, LND0;->b:Landroid/os/Bundle;

    iput-object p4, p0, LND0;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 8

    .line 3
    sget-object v0, LFW;->j:LFW;

    new-instance v7, LMD0;

    iget-object v3, p0, LND0;->a:Ljava/lang/String;

    iget-object v4, p0, LND0;->b:Landroid/os/Bundle;

    iget-object v6, p0, LND0;->c:Landroid/content/Context;

    move-object v1, v7

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, LMD0;-><init>(LND0;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)V

    const-wide/16 v1, 0x0

    .line 4
    invoke-static {v0, v7, v1, v2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 1
    sget-object p1, LzT;->a:Landroid/content/Context;

    const/4 v0, 0x2

    .line 2
    invoke-static {p1, v0}, LKD0;->a(Landroid/content/Context;I)V

    return-void
.end method
