.class public Lcom/oculus/browser/acra/util/ProcFileReader$OpenFDLimits;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final hardLimit:Ljava/lang/String;

.field public final softLimit:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oculus/browser/acra/util/ProcFileReader$OpenFDLimits;->softLimit:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/oculus/browser/acra/util/ProcFileReader$OpenFDLimits;->hardLimit:Ljava/lang/String;

    return-void
.end method
