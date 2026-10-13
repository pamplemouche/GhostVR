.class public final synthetic Lq20;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LQi;


# instance fields
.field public final a:Ls20;

.field public final b:Ljava/lang/String;

.field public final c:Lh20;

.field public final d:LWl0;

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:Lom0;


# direct methods
.method public constructor <init>(Ls20;Ljava/lang/String;Lh20;LWl0;Ljava/lang/String;ILom0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq20;->a:Ls20;

    iput-object p2, p0, Lq20;->b:Ljava/lang/String;

    iput-object p3, p0, Lq20;->c:Lh20;

    iput-object p4, p0, Lq20;->d:LWl0;

    iput-object p5, p0, Lq20;->e:Ljava/lang/String;

    iput p6, p0, Lq20;->f:I

    iput-object p7, p0, Lq20;->g:Lom0;

    return-void
.end method


# virtual methods
.method public a(LUi;)V
    .locals 11

    iget-object v0, p0, Lq20;->a:Ls20;

    iget-object v1, p0, Lq20;->b:Ljava/lang/String;

    iget-object v2, p0, Lq20;->c:Lh20;

    iget-object v3, p0, Lq20;->d:LWl0;

    iget-object v4, p0, Lq20;->e:Ljava/lang/String;

    iget v5, p0, Lq20;->f:I

    iget-object v6, p0, Lq20;->g:Lom0;

    const/4 v7, 0x0

    if-eqz v0, :cond_8

    const-string v8, "android.support.customtabs.trusted.CHANNEL_NAME"

    if-eqz p1, :cond_7

    .line 1
    :try_start_0
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {v9, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v10, p1, LUi;->a:LI;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    check-cast v10, LG;

    :try_start_1
    invoke-virtual {v10, v9}, LG;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    invoke-static {v9}, LTi;->a(Landroid/os/Bundle;)LTi;

    move-result-object v9

    iget-boolean v9, v9, LTi;->a:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v10, 0x0

    if-nez v9, :cond_1

    .line 4
    iget-object p1, p1, LUi;->b:Landroid/content/ComponentName;

    .line 5
    invoke-static {}, LKY;->c()LR60;

    move-result-object v0

    check-cast v0, LY60;

    invoke-virtual {v0}, LY60;->k()Lz20;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v1, LZ01;->c:LFW;

    new-instance v3, Ly20;

    invoke-direct {v3, v0, v2, p1, v10}, Ly20;-><init>(Lz20;Lh20;Landroid/content/ComponentName;Z)V

    const-wide/16 v4, 0x0

    .line 7
    invoke-static {v1, v3, v4, v5}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    goto/16 :goto_2

    .line 8
    :cond_0
    throw v7

    .line 9
    :cond_1
    invoke-virtual {v3}, LWl0;->b()Z

    move-result v2

    const-string v7, "RemoteException while trying to communicate with the TrustedWebActivityService, this is probably because the service died while attempting to respond. Check to see if the service crashed for some reason."

    if-eqz v2, :cond_2

    invoke-virtual {v3}, LWl0;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {v0, v10}, Ls20;->a(I)V

    goto :goto_1

    .line 11
    :cond_2
    :try_start_2
    iget-object v2, p1, LUi;->a:LI;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    check-cast v2, LG;

    :try_start_3
    invoke-virtual {v2}, LG;->B()I

    move-result v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v9, -0x1

    if-ne v2, v9, :cond_3

    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v2}, Ls20;->a(I)V

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v3}, LWl0;->b()Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x2

    goto :goto_0

    :cond_4
    const/4 v9, 0x3

    :goto_0
    invoke-virtual {v0, v9}, Ls20;->a(I)V

    .line 14
    :try_start_4
    iget-object v0, p1, LUi;->a:LI;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    check-cast v0, LG;

    :try_start_5
    invoke-virtual {v0}, LG;->A()Landroid/os/Bundle;

    move-result-object v0

    const-string v9, "android.support.customtabs.trusted.SMALL_ICON_BITMAP"

    .line 15
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 16
    invoke-virtual {v3}, LWl0;->c()Z

    move-result v9

    if-nez v9, :cond_5

    .line 17
    iget-object v9, p1, LUi;->b:Landroid/content/ComponentName;

    .line 18
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 19
    invoke-virtual {v3, v2, v0, v9}, LWl0;->a(ILandroid/graphics/Bitmap;Ljava/lang/String;)LWl0;

    .line 20
    :cond_5
    invoke-virtual {v3}, LWl0;->b()Z

    move-result v2

    if-nez v2, :cond_6

    .line 21
    invoke-virtual {v3, v0}, LWl0;->a(Landroid/graphics/Bitmap;)LWl0;

    .line 22
    :cond_6
    :goto_1
    new-instance v0, Lcm0;

    const/16 v2, 0xd

    invoke-direct {v0, v2, v4, v5}, Lcm0;-><init>(ILjava/lang/String;I)V

    .line 23
    invoke-virtual {v3, v0}, LWl0;->a(Lcm0;)LOl0;

    move-result-object v0

    .line 24
    iget-object v0, v0, LOl0;->a:Landroid/app/Notification;

    .line 25
    :try_start_6
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v9, "android.support.customtabs.trusted.PLATFORM_TAG"

    .line 26
    invoke-virtual {v3, v9, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "android.support.customtabs.trusted.PLATFORM_ID"

    .line 27
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "android.support.customtabs.trusted.NOTIFICATION"

    .line 28
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 29
    invoke-virtual {v3, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object p1, p1, LUi;->a:LI;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    check-cast p1, LG;

    :try_start_7
    invoke-virtual {p1, v3}, LG;->g(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, LTi;->a(Landroid/os/Bundle;)LTi;

    move-result-object p1

    iget-boolean p1, p1, LTi;->a:Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 31
    invoke-virtual {v6, v2, v0}, Lom0;->a(ILandroid/app/Notification;)V

    :goto_2
    return-void

    :catch_0
    move-exception p1

    .line 32
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 33
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 34
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p1

    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failure when connecting to TrustedWebActivityService"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 36
    :cond_7
    throw v7

    .line 37
    :cond_8
    throw v7
.end method
