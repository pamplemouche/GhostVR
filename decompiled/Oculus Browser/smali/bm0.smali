.class public Lbm0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lam0;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lbm0;->a:Landroid/content/Context;

    const-string v0, "notification"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lbm0;->b:Landroid/app/NotificationManager;

    return-void
.end method


# virtual methods
.method public a(LOl0;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p1, LOl0;->a:Landroid/app/Notification;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lbm0;->b:Landroid/app/NotificationManager;

    .line 3
    iget-object p1, p1, LOl0;->b:Lcm0;

    .line 4
    iget-object v2, p1, Lcm0;->b:Ljava/lang/String;

    iget p1, p1, Lcm0;->c:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "NotifManagerProxy"

    const-string v1, "Failed to create notification."

    .line 5
    invoke-static {v0, v1, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
