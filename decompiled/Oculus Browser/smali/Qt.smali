.class public final LQt;
.super Lrt;
.source "PG"


# instance fields
.field public final synthetic r:Lqu;


# direct methods
.method public constructor <init>(LHm;Lqu;)V
    .locals 0

    iput-object p2, p0, LQt;->r:Lqu;

    invoke-direct {p0, p1}, Lrt;-><init>(LHm;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lpm;)V
    .locals 3

    check-cast p1, LEt;

    iget-object v0, p0, LQt;->r:Lqu;

    const-class v1, Lqu;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Listener must not be null"

    .line 1
    invoke-static {v0, v2}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Listener type must not be null"

    invoke-static {v1, v2}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Listener type must not be empty"

    invoke-static {v1, v2}, Lxp;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    new-instance v2, Ldn;

    invoke-direct {v2, v0, v1}, Ldn;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lst;

    invoke-direct {v0, p0}, Lst;-><init>(LTm;)V

    .line 3
    iget-object p1, p1, LEt;->F:Lzt;

    invoke-virtual {p1, v2, v0}, Lzt;->a(Ldn;Lut;)V

    return-void
.end method
