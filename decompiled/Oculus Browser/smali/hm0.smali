.class public final synthetic Lhm0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/notifications/NotificationService;

.field public final x:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/notifications/NotificationService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhm0;->w:Lorg/chromium/chrome/browser/notifications/NotificationService;

    iput-object p2, p0, Lhm0;->x:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lhm0;->w:Lorg/chromium/chrome/browser/notifications/NotificationService;

    iget-object v1, p0, Lhm0;->x:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 1
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/notifications/NotificationService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
