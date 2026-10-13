.class public Lbb1;
.super LA61;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LA61;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lj71;LK61;)LC61;
    .locals 1

    .line 3
    new-instance v0, Lgb1;

    invoke-direct {v0, p1, p2}, Lgb1;-><init>(Lj71;LK61;)V

    return-object v0
.end method

.method public a(Lj71;LE61;)LD61;
    .locals 1

    .line 1
    check-cast p2, LSa1;

    .line 2
    new-instance v0, Lhb1;

    invoke-direct {v0, p1, p2}, Lhb1;-><init>(Lj71;LSa1;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "shape_detection.mojom.FaceDetection"

    return-object v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
