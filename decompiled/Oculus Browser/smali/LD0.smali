.class public LLD0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Ljava/lang/String;

.field public final synthetic x:Landroid/os/Bundle;

.field public final synthetic y:Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, LLD0;->y:Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;

    iput-object p2, p0, LLD0;->w:Ljava/lang/String;

    iput-object p3, p0, LLD0;->x:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, LLD0;->y:Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;

    .line 2
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 3
    iget-object v2, p0, LLD0;->w:Ljava/lang/String;

    iget-object v3, p0, LLD0;->x:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;->a(Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
