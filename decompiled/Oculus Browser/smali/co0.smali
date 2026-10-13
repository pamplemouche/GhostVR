.class public Lco0;
.super LXg0;
.source "PG"


# instance fields
.field public final synthetic w:Landroid/content/Context;

.field public final synthetic x:Landroid/content/Intent;

.field public final synthetic y:Lorg/chromium/chrome/browser/omaha/UpdateNotificationController$UpdateNotificationReceiver;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/omaha/UpdateNotificationController$UpdateNotificationReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lco0;->y:Lorg/chromium/chrome/browser/omaha/UpdateNotificationController$UpdateNotificationReceiver;

    iput-object p2, p0, Lco0;->w:Landroid/content/Context;

    iput-object p3, p0, Lco0;->x:Landroid/content/Intent;

    invoke-direct {p0}, LXg0;-><init>()V

    return-void
.end method


# virtual methods
.method public l()V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "GoogleUpdate.Notification.LaunchEvent"

    .line 1
    invoke-static {v2, v1, v0}, LfV;->a(Ljava/lang/String;II)V

    .line 2
    :try_start_0
    iget-object v3, p0, Lco0;->y:Lorg/chromium/chrome/browser/omaha/UpdateNotificationController$UpdateNotificationReceiver;

    iget-object v4, p0, Lco0;->w:Landroid/content/Context;

    iget-object v5, p0, Lco0;->x:Landroid/content/Intent;

    invoke-static {v3, v4, v5}, Lorg/chromium/chrome/browser/omaha/UpdateNotificationController$UpdateNotificationReceiver;->a(Lorg/chromium/chrome/browser/omaha/UpdateNotificationController$UpdateNotificationReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v3, v5, v1

    const-string v1, "UpdateNotif"

    const-string v3, "Failed to start activity in background."

    .line 3
    invoke-static {v1, v3, v5}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-static {v2, v4, v0}, LfV;->a(Ljava/lang/String;II)V

    :goto_0
    return-void
.end method
