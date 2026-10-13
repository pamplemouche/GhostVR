.class public abstract LFd1;
.super LOd1;
.source "PG"

# interfaces
.implements LMd1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LOd1;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LNd1;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3}, LOd1;->b(II)V

    return-void
.end method

.method public b(LNd1;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3}, LOd1;->a(II)V

    return-void
.end method
