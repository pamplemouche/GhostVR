.class public LTE;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final synthetic a:LUE;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LUE;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, LTE;->a:LUE;

    iput-object p2, p0, LTE;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, LbF;

    invoke-direct {v0}, LbF;-><init>()V

    .line 2
    iget-object v1, p0, LTE;->a:LUE;

    iget-object v2, p0, LTE;->b:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, LUE;->a(LbF;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0}, LbF;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
