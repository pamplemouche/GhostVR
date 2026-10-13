.class public LsX;
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
    new-instance v0, LFX;

    invoke-direct {v0, p1, p2}, LFX;-><init>(Lj71;LK61;)V

    return-object v0
.end method

.method public a(Lj71;LE61;)LD61;
    .locals 1

    .line 1
    check-cast p2, LjX;

    .line 2
    new-instance v0, LGX;

    invoke-direct {v0, p1, p2}, LGX;-><init>(Lj71;LjX;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "blink.mojom.Blob"

    return-object v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
