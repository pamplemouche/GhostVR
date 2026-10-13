.class Lcom/oculus/vrapi/NotificationReceiver$NotificationDisplayParameters;
.super Ljava/lang/Object;
.source "NotificationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrapi/NotificationReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationDisplayParameters"
.end annotation


# instance fields
.field public enableCAC:Z

.field public isFixedToView:Z

.field public posX:F

.field public posY:F

.field public scale:F


# direct methods
.method constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
