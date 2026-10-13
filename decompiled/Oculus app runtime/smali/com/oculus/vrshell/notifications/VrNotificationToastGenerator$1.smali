.class final Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator$1;
.super Lcom/oculus/vrshell/INotificationBitmapProvider$Stub;
.source "VrNotificationToastGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator;->getBitmapProvider(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;ZZ)Lcom/oculus/vrshell/INotificationBitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isPresistent:Z

.field final synthetic val$isSystemNotification:Z

.field final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;ZZ)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator$1;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iput-object p2, p0, Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator$1;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator$1;->val$isSystemNotification:Z

    iput-boolean p4, p0, Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator$1;->val$isPresistent:Z

    invoke-direct {p0}, Lcom/oculus/vrshell/INotificationBitmapProvider$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotificationBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 72
    iget-object p1, p0, Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator$1;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator$1;->val$context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator$1;->val$isSystemNotification:Z

    iget-boolean v2, p0, Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator$1;->val$isPresistent:Z

    invoke-static {p1, v0, v1, v2}, Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator;->access$000(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;ZZ)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
