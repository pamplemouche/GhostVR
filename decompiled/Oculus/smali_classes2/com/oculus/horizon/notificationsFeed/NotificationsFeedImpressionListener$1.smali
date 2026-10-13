.class Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListener$1;
.super Ljava/lang/Object;
.source "NotificationsFeedImpressionListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListener;->onRevealed(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListener;

.field final synthetic val$applicationGroupingID:Ljava/lang/String;

.field final synthetic val$index_in_feed:I

.field final synthetic val$notificationID:Ljava/lang/String;

.field final synthetic val$notificationRequestID:Ljava/lang/String;

.field final synthetic val$notificationType:Ljava/lang/String;

.field final synthetic val$notificationUUID:Ljava/lang/String;

.field final synthetic val$referrer:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListener;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListener$1;->this$0:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListener;

    iput-object p2, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListener$1;->val$notificationID:Ljava/lang/String;

    iput p3, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListener$1;->val$index_in_feed:I

    iput-object p4, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListener$1;->val$notificationUUID:Ljava/lang/String;

    iput-object p5, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListener$1;->val$notificationType:Ljava/lang/String;

    iput-object p6, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListener$1;->val$referrer:Ljava/lang/String;

    iput-object p7, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListener$1;->val$applicationGroupingID:Ljava/lang/String;

    iput-object p8, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListener$1;->val$notificationRequestID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListener$1;->this$0:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListener;

    invoke-static {v0}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListener;->access$000(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListener;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListener$1;->val$notificationID:Ljava/lang/String;

    iget v2, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListener$1;->val$index_in_feed:I

    iget-object v3, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListener$1;->val$notificationUUID:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListener$1;->val$notificationType:Ljava/lang/String;

    iget-object v5, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListener$1;->val$referrer:Ljava/lang/String;

    iget-object v6, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListener$1;->val$applicationGroupingID:Ljava/lang/String;

    iget-object v7, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListener$1;->val$notificationRequestID:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/oculus/horizon/logging/OculusLogger;->reportNotificationItemImpression(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method
