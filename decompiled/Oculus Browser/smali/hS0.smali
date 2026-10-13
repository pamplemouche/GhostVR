.class public LhS0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LNS0;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(LjS0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, LhS0;->a:I

    return-void
.end method


# virtual methods
.method public a(LJS0;)V
    .locals 2

    .line 1
    invoke-static {}, LsS0;->b()LsS0;

    move-result-object v0

    iget v1, p0, LhS0;->a:I

    .line 2
    iget-boolean p1, p1, LJS0;->d:Z

    .line 3
    invoke-virtual {v0, v1, p1}, LsS0;->a(IZ)V

    return-void
.end method

.method public a(LLS0;)V
    .locals 2

    .line 4
    invoke-static {}, LsS0;->b()LsS0;

    move-result-object v0

    iget v1, p0, LhS0;->a:I

    .line 5
    iget-boolean p1, p1, LLS0;->d:Z

    .line 6
    invoke-virtual {v0, v1, p1}, LsS0;->a(IZ)V

    return-void
.end method
