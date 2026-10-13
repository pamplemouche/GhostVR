.class public abstract LYx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LQx;


# instance fields
.field public final a:LQx;


# direct methods
.method public constructor <init>(LQx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LYx;->a:LQx;

    return-void
.end method


# virtual methods
.method public a(LTF;LFF;LWx;LXx;)LFF;
    .locals 1

    .line 1
    invoke-interface {p3, p1}, LWx;->a(LTF;)Ljava/lang/String;

    move-result-object p3

    .line 2
    iget-object v0, p0, LYx;->a:LQx;

    invoke-interface {v0, p3}, LQx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eq v0, p3, :cond_1

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    move-object p2, p1

    .line 4
    :cond_0
    invoke-interface {p4, p2, v0}, LXx;->a(LFF;Ljava/lang/String;)V

    :cond_1
    return-object p2
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, LYx;->a:LQx;

    invoke-interface {v0}, LQx;->clear()V

    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, LYx;->a:LQx;

    invoke-interface {v0}, LQx;->size()I

    move-result v0

    return v0
.end method
