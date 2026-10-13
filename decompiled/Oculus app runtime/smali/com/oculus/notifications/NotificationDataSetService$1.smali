.class Lcom/oculus/notifications/NotificationDataSetService$1;
.super Ljava/lang/Object;
.source "NotificationDataSetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/notifications/NotificationDataSetService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/notifications/NotificationDataSetService;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/oculus/notifications/NotificationDataSetService;Landroid/content/Context;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/oculus/notifications/NotificationDataSetService$1;->this$0:Lcom/oculus/notifications/NotificationDataSetService;

    iput-object p2, p0, Lcom/oculus/notifications/NotificationDataSetService$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/oculus/notifications/NotificationDataSetService$1;->this$0:Lcom/oculus/notifications/NotificationDataSetService;

    iget-object v1, p0, Lcom/oculus/notifications/NotificationDataSetService$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/oculus/notifications/NotificationDataSetService;->access$000(Lcom/oculus/notifications/NotificationDataSetService;Landroid/content/Context;)V

    return-void
.end method
