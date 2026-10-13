.class public final synthetic Lme1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpe1;


# instance fields
.field public final a:Loe1;


# direct methods
.method public constructor <init>(Loe1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme1;->a:Loe1;

    return-void
.end method


# virtual methods
.method public a(Lqe1;Ljava/lang/Object;)V
    .locals 2

    iget-object p1, p0, Lme1;->a:Loe1;

    .line 1
    iget-object v0, p1, Loe1;->c:Lne1;

    iget-object v1, p1, Loe1;->b:Lqe1;

    iget-object p1, p1, Loe1;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lne1;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
