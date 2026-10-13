.class public abstract Lw3;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ln;)Lw3;
    .locals 2

    .line 1
    new-instance v0, LA3;

    move-object v1, p0

    check-cast v1, Lx;

    invoke-interface {v1}, Lx;->x()Lw;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LA3;-><init>(Ln;Lw;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
