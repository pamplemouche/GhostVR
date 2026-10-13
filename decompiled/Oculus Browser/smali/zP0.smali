.class public LzP0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LY10;


# direct methods
.method public constructor <init>(LY10;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LzP0;->a:LY10;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    invoke-virtual {p0}, LzP0;->b()LxP0;

    move-result-object v0

    iget v0, v0, LxP0;->g:I

    return v0
.end method

.method public final b()LxP0;
    .locals 1

    .line 1
    iget-object v0, p0, LzP0;->a:LY10;

    invoke-virtual {v0}, LY10;->b()LxP0;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, LzP0;->b()LxP0;

    move-result-object v0

    iget-object v0, v0, LxP0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, LzP0;->b()LxP0;

    move-result-object v0

    iget-object v0, v0, LxP0;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, LzP0;->b()LxP0;

    move-result-object v0

    iget-object v0, v0, LxP0;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, LzP0;->b()LxP0;

    move-result-object v0

    iget-object v0, v0, LxP0;->b:Ljava/lang/String;

    return-object v0
.end method
