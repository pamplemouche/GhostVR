.class public final synthetic LMD0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final A:Landroid/content/Context;

.field public final w:LND0;

.field public final x:Ljava/lang/String;

.field public final y:Landroid/os/Bundle;

.field public final z:Ljava/lang/String;


# direct methods
.method public constructor <init>(LND0;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LMD0;->w:LND0;

    iput-object p2, p0, LMD0;->x:Ljava/lang/String;

    iput-object p3, p0, LMD0;->y:Landroid/os/Bundle;

    iput-object p4, p0, LMD0;->z:Ljava/lang/String;

    iput-object p5, p0, LMD0;->A:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, LMD0;->w:LND0;

    iget-object v1, p0, LMD0;->x:Ljava/lang/String;

    iget-object v2, p0, LMD0;->y:Landroid/os/Bundle;

    iget-object v3, p0, LMD0;->z:Ljava/lang/String;

    iget-object v4, p0, LMD0;->A:Landroid/content/Context;

    .line 1
    iget-object v0, v0, LND0;->d:Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;->a(Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
