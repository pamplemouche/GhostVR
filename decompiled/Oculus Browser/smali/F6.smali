.class public LF6;
.super LE6;
.source "PG"


# instance fields
.field public final b:Z


# direct methods
.method public constructor <init>(LD6;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LE6;-><init>(LD6;)V

    .line 2
    iput-boolean p2, p0, LF6;->b:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LF6;->b:Z

    return v0
.end method
