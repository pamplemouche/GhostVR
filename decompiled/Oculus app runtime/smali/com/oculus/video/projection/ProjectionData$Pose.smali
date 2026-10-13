.class public Lcom/oculus/video/projection/ProjectionData$Pose;
.super Ljava/lang/Object;
.source "ProjectionData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/projection/ProjectionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Pose"
.end annotation


# instance fields
.field private final pitchDegrees:F

.field private final rollDegrees:F

.field final synthetic this$0:Lcom/oculus/video/projection/ProjectionData;

.field private final yawDegrees:F


# direct methods
.method constructor <init>(Lcom/oculus/video/projection/ProjectionData;FFF)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/oculus/video/projection/ProjectionData$Pose;->this$0:Lcom/oculus/video/projection/ProjectionData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p2, p0, Lcom/oculus/video/projection/ProjectionData$Pose;->yawDegrees:F

    .line 39
    iput p3, p0, Lcom/oculus/video/projection/ProjectionData$Pose;->pitchDegrees:F

    .line 40
    iput p4, p0, Lcom/oculus/video/projection/ProjectionData$Pose;->rollDegrees:F

    return-void
.end method


# virtual methods
.method public getPitchDegrees()F
    .locals 1

    .line 48
    iget v0, p0, Lcom/oculus/video/projection/ProjectionData$Pose;->pitchDegrees:F

    return v0
.end method

.method public getRollDegrees()F
    .locals 1

    .line 52
    iget v0, p0, Lcom/oculus/video/projection/ProjectionData$Pose;->rollDegrees:F

    return v0
.end method

.method public getYawDegrees()F
    .locals 1

    .line 44
    iget v0, p0, Lcom/oculus/video/projection/ProjectionData$Pose;->yawDegrees:F

    return v0
.end method
