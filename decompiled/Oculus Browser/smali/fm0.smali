.class public final synthetic Lfm0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;

.field public final b:LOl0;

.field public final c:I


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;LOl0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfm0;->a:Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;

    iput-object p2, p0, Lfm0;->b:LOl0;

    iput p3, p0, Lfm0;->c:I

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lfm0;->a:Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;

    iget-object v1, p0, Lfm0;->b:LOl0;

    iget v2, p0, Lfm0;->c:I

    check-cast p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p1, v0, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->b:Lam0;

    check-cast p1, Lbm0;

    invoke-virtual {p1, v1}, Lbm0;->a(LOl0;)V

    .line 3
    sget-object p1, Lnm0;->a:Lom0;

    const/4 v0, 0x5

    if-ne v2, v0, :cond_1

    .line 4
    invoke-static {}, Llx0;->a()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    .line 5
    :goto_0
    iget-object v1, v1, LOl0;->a:Landroid/app/Notification;

    .line 6
    invoke-virtual {p1, v0, v1}, Lom0;->a(ILandroid/app/Notification;)V

    :goto_1
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 7
    throw p1
.end method
