.class public final Lg9;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lla;

.field public b:Z

.field public c:Landroid/content/BroadcastReceiver;

.field public d:Landroid/content/IntentFilter;

.field public final synthetic e:Lk9;


# direct methods
.method public constructor <init>(Lk9;Lla;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg9;->e:Lk9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lg9;->a:Lla;

    .line 3
    invoke-virtual {p2}, Lla;->a()Z

    move-result p1

    iput-boolean p1, p0, Lg9;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg9;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lg9;->e:Lk9;

    iget-object v1, v1, Lk9;->x:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lg9;->c:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method
