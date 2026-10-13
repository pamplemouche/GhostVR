.class final Lcom/oculus/vrapi/TrackingServiceClient$1;
.super Ljava/lang/Object;
.source "TrackingServiceClient.java"

# interfaces
.implements Lcom/oculus/vrapi/ITrackingServiceConnection$IDisconnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrapi/TrackingServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnect()V
    .locals 0

    .line 144
    invoke-static {}, Lcom/oculus/vrapi/TrackingServiceClient;->access$000()V

    return-void
.end method
