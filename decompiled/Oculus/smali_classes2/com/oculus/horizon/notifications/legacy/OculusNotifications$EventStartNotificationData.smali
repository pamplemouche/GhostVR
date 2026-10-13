.class public Lcom/oculus/horizon/notifications/legacy/OculusNotifications$EventStartNotificationData;
.super Ljava/lang/Object;
.source "OculusNotifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/notifications/legacy/OculusNotifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventStartNotificationData"
.end annotation


# instance fields
.field public final mDeeplinkUri:Landroid/net/Uri;

.field public final mMessage:Ljava/lang/String;

.field public final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iput-object p1, p0, Lcom/oculus/horizon/notifications/legacy/OculusNotifications$EventStartNotificationData;->mTitle:Ljava/lang/String;

    .line 412
    iput-object p2, p0, Lcom/oculus/horizon/notifications/legacy/OculusNotifications$EventStartNotificationData;->mMessage:Ljava/lang/String;

    .line 413
    iput-object p3, p0, Lcom/oculus/horizon/notifications/legacy/OculusNotifications$EventStartNotificationData;->mDeeplinkUri:Landroid/net/Uri;

    .line 414
    return-void
.end method
