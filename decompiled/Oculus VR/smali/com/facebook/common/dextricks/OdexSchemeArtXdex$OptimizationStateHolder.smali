.class Lcom/facebook/common/dextricks/OdexSchemeArtXdex$OptimizationStateHolder;
.super Ljava/lang/Object;
.source "OdexSchemeArtXdex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/dextricks/OdexSchemeArtXdex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OptimizationStateHolder"
.end annotation


# instance fields
.field status:J

.field statusIntent:J

.field success:Z


# direct methods
.method constructor <init>(ZJJ)V
    .locals 0

    .prologue
    .line 1131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1132
    iput-boolean p1, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex$OptimizationStateHolder;->success:Z

    .line 1133
    iput-wide p2, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex$OptimizationStateHolder;->status:J

    .line 1134
    iput-wide p4, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex$OptimizationStateHolder;->statusIntent:J

    .line 1135
    return-void
.end method
