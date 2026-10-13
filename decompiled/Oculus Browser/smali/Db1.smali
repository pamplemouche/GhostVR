.class public LDb1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lzb1;


# instance fields
.field public final a:Lzb1;

.field public b:F


# direct methods
.method public constructor <init>(Lzb1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LDb1;->a:Lzb1;

    return-void
.end method


# virtual methods
.method public a(J)F
    .locals 2

    .line 4
    iget v0, p0, LDb1;->b:F

    iget-object v1, p0, LDb1;->a:Lzb1;

    invoke-interface {v1, p1, p2}, Lzb1;->a(J)F

    move-result p1

    sub-float/2addr v0, p1

    return v0
.end method

.method public a(F)Z
    .locals 1

    .line 2
    iput p1, p0, LDb1;->b:F

    .line 3
    iget-object v0, p0, LDb1;->a:Lzb1;

    invoke-interface {v0, p1}, Lzb1;->a(F)Z

    move-result p1

    return p1
.end method

.method public a(JJ)Z
    .locals 1

    .line 1
    iget-object v0, p0, LDb1;->a:Lzb1;

    invoke-interface {v0, p1, p2, p3, p4}, Lzb1;->a(JJ)Z

    move-result p1

    return p1
.end method

.method public b(F)J
    .locals 2

    .line 1
    iget-object v0, p0, LDb1;->a:Lzb1;

    iget v1, p0, LDb1;->b:F

    sub-float/2addr v1, p1

    invoke-interface {v0, v1}, Lzb1;->b(F)J

    move-result-wide v0

    return-wide v0
.end method
