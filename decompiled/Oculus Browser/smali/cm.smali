.class public final Lcm;
.super Landroid/os/Handler;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;

.field public final synthetic b:Ldm;


# direct methods
.method public constructor <init>(Ldm;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcm;->b:Ldm;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcm;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Don\'t know how to handle this message: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GoogleApiAvailability"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcm;->b:Ldm;

    iget-object v0, p0, Lcm;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Ldm;->a(Landroid/content/Context;)I

    move-result p1

    iget-object v0, p0, Lcm;->b:Ldm;

    if-eqz v0, :cond_2

    .line 1
    invoke-static {p1}, Lkm;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcm;->b:Ldm;

    iget-object v1, p0, Lcm;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Ldm;->b(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 3
    throw p1
.end method
