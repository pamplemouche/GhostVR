.class public Lcom/oculus/vrapi/VRManagerInterface$DisplayParams;
.super Ljava/lang/Object;
.source "VRManagerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrapi/VRManagerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayParams"
.end annotation


# static fields
.field public static final SWAP_TIMING_ARRAY_SIZE:I = 0x6


# instance fields
.field public scanoutDirection:I

.field public shutterType:I

.field public swapTimingFrontBuffer:[F

.field public swapTimingSwappedBuffer:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 46
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/oculus/vrapi/VRManagerInterface$DisplayParams;->swapTimingFrontBuffer:[F

    .line 47
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oculus/vrapi/VRManagerInterface$DisplayParams;->swapTimingSwappedBuffer:[F

    return-void
.end method
