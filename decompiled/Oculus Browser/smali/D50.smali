.class public LD50;
.super LQ40;
.source "PG"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LQ40;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LD50;->a:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LD50;->a:Z

    return v0
.end method
