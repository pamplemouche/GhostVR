.class public Lcom/oculus/video/projection/ProjectionData$FoVProperties;
.super Ljava/lang/Object;
.source "ProjectionData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/projection/ProjectionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FoVProperties"
.end annotation


# instance fields
.field public final fovXDegrees:F

.field public final fovYDegrees:F

.field public final horizonDegrees:F

.field public final meridianDegrees:F

.field final synthetic this$0:Lcom/oculus/video/projection/ProjectionData;


# direct methods
.method protected constructor <init>(Lcom/oculus/video/projection/ProjectionData;FFFF)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/oculus/video/projection/ProjectionData$FoVProperties;->this$0:Lcom/oculus/video/projection/ProjectionData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p2, p0, Lcom/oculus/video/projection/ProjectionData$FoVProperties;->fovXDegrees:F

    .line 68
    iput p3, p0, Lcom/oculus/video/projection/ProjectionData$FoVProperties;->fovYDegrees:F

    .line 69
    iput p4, p0, Lcom/oculus/video/projection/ProjectionData$FoVProperties;->meridianDegrees:F

    .line 70
    iput p5, p0, Lcom/oculus/video/projection/ProjectionData$FoVProperties;->horizonDegrees:F

    return-void
.end method
