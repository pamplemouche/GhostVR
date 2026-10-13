.class public Lr71;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LF71;
.implements Lx71;
.implements Lk71;
.implements Ln71;
.implements LE71;


# static fields
.field public static final w:Lr71;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lr71;

    invoke-direct {v0}, Lr71;-><init>()V

    sput-object v0, Lr71;->w:Lr71;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()Ln71;
    .locals 0

    return-object p0
.end method

.method public B()Lx71;
    .locals 0

    return-object p0
.end method

.method public F()Lx71;
    .locals 0

    return-object p0
.end method

.method public a(JJLD71;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    new-instance p1, Ly71;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Ly71;-><init>(I)V

    throw p1
.end method

.method public a(Ljava/nio/ByteBuffer;Lo71;)Lorg/chromium/mojo/system/ResultAnd;
    .locals 0

    .line 2
    new-instance p1, Ly71;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Ly71;-><init>(I)V

    throw p1
.end method

.method public a(Lu71;)Lorg/chromium/mojo/system/ResultAnd;
    .locals 1

    .line 4
    new-instance p1, Ly71;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Ly71;-><init>(I)V

    throw p1
.end method

.method public a(Ljava/nio/ByteBuffer;Ljava/util/List;Lw71;)V
    .locals 0

    .line 3
    new-instance p1, Ly71;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Ly71;-><init>(I)V

    throw p1
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Lj71;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q()LF71;
    .locals 0

    return-object p0
.end method

.method public r()LE71;
    .locals 0

    return-object p0
.end method
