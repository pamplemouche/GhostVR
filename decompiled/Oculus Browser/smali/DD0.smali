.class public final synthetic LDD0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/services/gcm/GCMBackgroundService;

.field public final x:LzT0;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/services/gcm/GCMBackgroundService;LzT0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDD0;->w:Lorg/chromium/chrome/browser/services/gcm/GCMBackgroundService;

    iput-object p2, p0, LDD0;->x:LzT0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LDD0;->w:Lorg/chromium/chrome/browser/services/gcm/GCMBackgroundService;

    iget-object v1, p0, LDD0;->x:LzT0;

    if-eqz v0, :cond_0

    .line 1
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/services/gcm/ChromeGcmListenerService;->a(Landroid/content/Context;LzT0;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
