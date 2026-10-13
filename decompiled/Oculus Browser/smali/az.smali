.class public final synthetic Laz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LKx;


# instance fields
.field public final a:LKx;


# direct methods
.method public constructor <init>(LKx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laz;->a:LKx;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Laz;->a:LKx;

    check-cast p1, Lkz;

    .line 1
    iget-object p1, p1, Lkz;->b:LNI;

    .line 2
    invoke-interface {v0, p1}, LKx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
