.class public final synthetic LB10;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LKR0;


# instance fields
.field public final a:LH10;

.field public final b:LKR0;


# direct methods
.method public constructor <init>(LH10;LKR0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB10;->a:LH10;

    iput-object p2, p0, LB10;->b:LKR0;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iget-object v0, p0, LB10;->a:LH10;

    iget-object v1, p0, LB10;->b:LKR0;

    .line 1
    invoke-virtual {v0}, LH10;->b()V

    .line 2
    invoke-interface {v1, p1}, LKR0;->a(Z)V

    return-void
.end method
