.class Lcom/oculus/vrapi/TrackingServiceClient$ModelIdWrapper;
.super Ljava/lang/Object;
.source "TrackingServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrapi/TrackingServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ModelIdWrapper"
.end annotation


# instance fields
.field public ModelId:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/oculus/vrapi/TrackingServiceClient$ModelIdWrapper;->ModelId:I

    return-void
.end method
