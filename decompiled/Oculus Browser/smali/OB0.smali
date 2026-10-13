.class public LOB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:Z

.field public final w:I

.field public final x:Ljava/lang/String;

.field public final y:Ljava/lang/String;

.field public final z:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, LOB0;->w:I

    .line 3
    iput-object p2, p0, LOB0;->x:Ljava/lang/String;

    .line 4
    iput-object p3, p0, LOB0;->y:Ljava/lang/String;

    .line 5
    iput-object p4, p0, LOB0;->z:Ljava/lang/String;

    .line 6
    iput-object p5, p0, LOB0;->A:Ljava/lang/String;

    .line 7
    iput-boolean p6, p0, LOB0;->B:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-boolean v0, p0, LOB0;->B:Z

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, LOB0;->w:I

    iget-object v1, p0, LOB0;->x:Ljava/lang/String;

    iget-object v2, p0, LOB0;->y:Ljava/lang/String;

    iget-object v3, p0, LOB0;->A:Ljava/lang/String;

    .line 3
    invoke-static {v0, v1, v2, v3}, LJ/N;->M_TGEkEq(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
