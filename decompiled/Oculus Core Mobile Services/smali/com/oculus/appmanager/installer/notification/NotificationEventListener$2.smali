.class Lcom/oculus/appmanager/installer/notification/NotificationEventListener$2;
.super Ljava/lang/Object;
.source "NotificationEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/appmanager/installer/notification/NotificationEventListener;->onInstallResponse(Lcom/oculus/appmanager/installer/events/InstallResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/appmanager/installer/notification/NotificationEventListener;

.field final synthetic val$installResponse:Lcom/oculus/appmanager/installer/events/InstallResponse;


# direct methods
.method constructor <init>(Lcom/oculus/appmanager/installer/notification/NotificationEventListener;Lcom/oculus/appmanager/installer/events/InstallResponse;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/oculus/appmanager/installer/notification/NotificationEventListener$2;->this$0:Lcom/oculus/appmanager/installer/notification/NotificationEventListener;

    iput-object p2, p0, Lcom/oculus/appmanager/installer/notification/NotificationEventListener$2;->val$installResponse:Lcom/oculus/appmanager/installer/events/InstallResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oculus/appmanager/installer/notification/NotificationEventListener$2;->this$0:Lcom/oculus/appmanager/installer/notification/NotificationEventListener;

    iget-object v1, p0, Lcom/oculus/appmanager/installer/notification/NotificationEventListener$2;->val$installResponse:Lcom/oculus/appmanager/installer/events/InstallResponse;

    invoke-virtual {v0, v1}, Lcom/oculus/appmanager/installer/notification/NotificationEventListener;->handleInstallResponse(Lcom/oculus/appmanager/installer/events/InstallResponse;)V

    .line 65
    return-void
.end method
