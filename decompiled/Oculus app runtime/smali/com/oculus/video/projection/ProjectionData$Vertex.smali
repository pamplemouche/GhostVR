.class Lcom/oculus/video/projection/ProjectionData$Vertex;
.super Ljava/lang/Object;
.source "ProjectionData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/projection/ProjectionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Vertex"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/projection/ProjectionData;

.field final u:F

.field final v:F

.field final x:F

.field final y:F

.field final z:F


# direct methods
.method constructor <init>(Lcom/oculus/video/projection/ProjectionData;FFFFF)V
    .locals 2

    .line 17
    iput-object p1, p0, Lcom/oculus/video/projection/ProjectionData$Vertex;->this$0:Lcom/oculus/video/projection/ProjectionData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-float p1, p2, p2

    mul-float v0, p3, p3

    add-float/2addr p1, v0

    mul-float v0, p4, p4

    add-float/2addr p1, v0

    float-to-double v0, p1

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    div-float/2addr p2, p1

    div-float/2addr p3, p1

    div-float/2addr p4, p1

    .line 24
    iput p2, p0, Lcom/oculus/video/projection/ProjectionData$Vertex;->x:F

    .line 25
    iput p3, p0, Lcom/oculus/video/projection/ProjectionData$Vertex;->y:F

    .line 26
    iput p4, p0, Lcom/oculus/video/projection/ProjectionData$Vertex;->z:F

    .line 27
    iput p5, p0, Lcom/oculus/video/projection/ProjectionData$Vertex;->u:F

    .line 28
    iput p6, p0, Lcom/oculus/video/projection/ProjectionData$Vertex;->v:F

    return-void
.end method
