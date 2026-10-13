.class public LF2;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LG2;


# direct methods
.method public constructor <init>(LG2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LF2;->a:LG2;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, LF2;->a:LG2;

    iget-object v0, v0, LG2;->d:LY2;

    invoke-virtual {v0}, LY2;->n()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, LF2;->a:LG2;

    iget-object v0, v0, LG2;->d:LY2;

    invoke-virtual {v0}, LY2;->p()V

    return-void
.end method
