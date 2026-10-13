.class Lcom/oculus/vrapi/TrackingServiceClient$TouchRange;
.super Ljava/lang/Object;
.source "TrackingServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrapi/TrackingServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TouchRange"
.end annotation


# instance fields
.field public Height:I

.field public Width:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValues(II)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/oculus/vrapi/TrackingServiceClient$TouchRange;->Width:I

    .line 31
    iput p2, p0, Lcom/oculus/vrapi/TrackingServiceClient$TouchRange;->Height:I

    return-void
.end method
