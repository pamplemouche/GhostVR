.class public final Lke1;
.super Lfe1;
.source "PG"


# instance fields
.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfe1;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lke1;->b:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lfe1;-><init>(Ljava/lang/String;)V

    .line 4
    iput-boolean p1, p0, Lke1;->b:Z

    return-void
.end method
