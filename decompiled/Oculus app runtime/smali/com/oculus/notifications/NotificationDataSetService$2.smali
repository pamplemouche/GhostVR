.class Lcom/oculus/notifications/NotificationDataSetService$2;
.super Ljava/lang/Object;
.source "NotificationDataSetService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/notifications/NotificationDataSetService;->connectToDataSetProvider(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/notifications/NotificationDataSetService;


# direct methods
.method constructor <init>(Lcom/oculus/notifications/NotificationDataSetService;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/oculus/notifications/NotificationDataSetService$2;->this$0:Lcom/oculus/notifications/NotificationDataSetService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 195
    iget-object p1, p0, Lcom/oculus/notifications/NotificationDataSetService$2;->this$0:Lcom/oculus/notifications/NotificationDataSetService;

    invoke-static {p2}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oculus/notifications/NotificationDataSetService;->access$202(Lcom/oculus/notifications/NotificationDataSetService;Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;)Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    .line 196
    iget-object p1, p0, Lcom/oculus/notifications/NotificationDataSetService$2;->this$0:Lcom/oculus/notifications/NotificationDataSetService;

    invoke-virtual {p1}, Lcom/oculus/notifications/NotificationDataSetService;->notifyDataSetListeners()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 201
    iget-object p1, p0, Lcom/oculus/notifications/NotificationDataSetService$2;->this$0:Lcom/oculus/notifications/NotificationDataSetService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oculus/notifications/NotificationDataSetService;->access$202(Lcom/oculus/notifications/NotificationDataSetService;Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;)Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    return-void
.end method
