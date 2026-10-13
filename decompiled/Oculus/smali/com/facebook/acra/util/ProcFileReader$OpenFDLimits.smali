.class public Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;
.super Ljava/lang/Object;
.source "ProcFileReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/util/ProcFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenFDLimits"
.end annotation


# instance fields
.field public final hardLimit:I

.field public final softLimit:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;->softLimit:I

    .line 43
    iput p2, p0, Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;->hardLimit:I

    .line 44
    return-void
.end method
