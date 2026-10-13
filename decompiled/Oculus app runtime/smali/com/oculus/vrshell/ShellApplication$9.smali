.class Lcom/oculus/vrshell/ShellApplication$9;
.super Ljava/lang/Object;
.source "ShellApplication.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/ShellApplication;->unsuppressToasts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/ShellApplication;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/ShellApplication;)V
    .locals 0

    .line 1162
    iput-object p1, p0, Lcom/oculus/vrshell/ShellApplication$9;->this$0:Lcom/oculus/vrshell/ShellApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1165
    :try_start_0
    invoke-static {p2}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;->unsuppressToasts()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1169
    :goto_0
    iget-object p1, p0, Lcom/oculus/vrshell/ShellApplication$9;->this$0:Lcom/oculus/vrshell/ShellApplication;

    invoke-virtual {p1}, Lcom/oculus/vrshell/ShellApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1167
    :try_start_1
    invoke-static {}, Lcom/oculus/vrshell/ShellApplication;->access$300()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsuppressToasts() failed with RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 1169
    :goto_2
    iget-object p2, p0, Lcom/oculus/vrshell/ShellApplication$9;->this$0:Lcom/oculus/vrshell/ShellApplication;

    invoke-virtual {p2}, Lcom/oculus/vrshell/ShellApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
