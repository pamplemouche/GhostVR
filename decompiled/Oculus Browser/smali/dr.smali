.class public final Ldr;
.super Landroid/os/Handler;
.source "PG"


# instance fields
.field public final synthetic a:Lcr;


# direct methods
.method public constructor <init>(Lcr;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Ldr;->a:Lcr;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Ldr;->a:Lcr;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v1, Landroid/content/Intent;

    if-eqz v2, :cond_3

    check-cast v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gms/iid/MessengerCompat;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    const-string v2, "google.messenger"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/iid/MessengerCompat;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/iid/MessengerCompat;

    iput-object v2, v0, Lcr;->e:Lcom/google/android/gms/iid/MessengerCompat;

    :cond_1
    instance-of v2, v1, Landroid/os/Messenger;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/os/Messenger;

    iput-object v1, v0, Lcr;->d:Landroid/os/Messenger;

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, p1}, Lcr;->b(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string p1, "InstanceID"

    const-string v0, "Dropping invalid message"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_4
    const/4 p1, 0x0

    throw p1
.end method
